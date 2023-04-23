// Import necessary libraries
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace FBLA
{
    public partial class Winners : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Only bind data if the page is not a postback (i.e., it's the first time the page is loaded)
            if (!IsPostBack)
            {
                BindData();
            }
        }

        // This method is called when the selected quarter changes
        protected void quarterSelect_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindData();
        }

        // BindData method retrieves winners' data from the database and binds it to the repeater control
        private void BindData()
        {
            divwinnersinfo.Visible = false;
            string connectionString = ConfigurationManager.ConnectionStrings["CollegeEventsConnectionString"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                // SQL query to select winners' data based on the selected year and quarter
                string query = @"
                    SELECT 
                        u.Username,
                        w.grade,
                        w.quarter,
                        w.score AS sumscore,
                        w.winner_type
                    FROM 
                        [CollegeEvents].[dbo].[Winners] w
                        INNER JOIN [CollegeEvents].[dbo].[users] u ON w.userid = u.UserId
                    WHERE 
                        w.year = @year 
                        AND w.quarter = @quarter
                    ORDER BY 
                        w.grade, w.winner_type DESC";

                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@year", DateTime.Now.Year);
                command.Parameters.AddWithValue("@quarter", quarterSelect.SelectedValue);

                // Use SqlDataAdapter to fetch the data from the database
                SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
                DataTable dataTable = new DataTable();
                dataAdapter.Fill(dataTable);

                // If there are rows in the data table, bind the data to the repeater control
                // Otherwise, show a message that no data is available
                if (dataTable.Rows.Count > 0)
                {
                    TopStudentsRepeater.DataSource = dataTable;
                    TopStudentsRepeater.DataBind();
                }
                else
                {
                    divwinnersinfo.Visible = true;
                    TopStudentsRepeater.DataSource = null;
                    TopStudentsRepeater.DataBind();
                }
            }
        }
    }
}
