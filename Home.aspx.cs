// Import necessary libraries
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Runtime.CompilerServices;

namespace FBLA
{
    public partial class Home : System.Web.UI.Page
    {
        private void BindLeaderboardData()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeEventsConnectionString"].ConnectionString))
            {
                CurrentQuarterInfo obj = common.GetCurrentQurterInfo();
                string sqlCommand = @"SELECT RANK() OVER (ORDER BY SUM(EE.Scoregained) DESC) AS Rank, us.Username, SUM(EE.Scoregained) AS totalmarks, us.grade 
                               FROM EventEnrollment EE 
                               INNER JOIN users US ON EE.studentid=US.UserId and EE.quarter=@quarter and EE.year=@currentYear";

                if (Session["roleid"] != null && Session["grade"] != null)
                {
                    int roleId = Convert.ToInt32(Session["roleid"]);
                    bool isStudent = (roleId == 1); // Assuming 1 is the student role ID

                    if (isStudent)
                    {
                        string userGrade = Session["grade"].ToString();
                        sqlCommand += " WHERE us.grade = @Grade";
                    }
                }

                sqlCommand += @" GROUP BY us.Username, us.grade 
                                 ORDER BY totalmarks DESC";

                using (SqlCommand cmd = new SqlCommand(sqlCommand, con))
                {
                    if (Session["roleid"] != null && Session["grade"] != null)
                    {
                        int roleId = Convert.ToInt32(Session["roleid"]);
                        bool isStudent = (roleId == 1); // Assuming 1 is the student role ID

                        if (isStudent)
                        {
                            string userGrade = Session["grade"].ToString();
                            cmd.Parameters.AddWithValue("@Grade", userGrade);
                        }
                    }
                    cmd.Parameters.AddWithValue("@quarter", obj.CurrentQurter);
                    cmd.Parameters.AddWithValue("@currentYear", obj.currentYear);

                    con.Open();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    Repeater1.DataSource = dt;
                    Repeater1.DataBind();
                    con.Close();
                }
            }
        }

        // This method is called when the page is loaded
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindLeaderboardData();
            }
            // Bind the leaderboard repeater with data
            Repeater1.DataBind();
        }
    }
}
