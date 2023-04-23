// Import necessary libraries
using System;
using System.Data.SqlClient;
using System.Configuration;

namespace FBLA
{
    public partial class VerifyEmail : System.Web.UI.Page
    {
        protected void btnGoToHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx"); 
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            hfEmailVerified.Value = "1";
            string statuscode = Request.QueryString["VerificationCode"];

            if (!string.IsNullOrEmpty(statuscode))
            {
                // Connect to the database and check if the verification code exists
                using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeEventsConnectionString"].ToString()))
                {
                    conn.Open();

                    // Check if the status code exists
                    using (SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM Users WHERE statuscode = @statuscode", conn))
                    {
                        cmd.Parameters.AddWithValue("@statuscode", statuscode);

                        int count = (int)cmd.ExecuteScalar();

                        if (count > 0)
                        {
                            // Update the IsEmailVerified field to 1
                            using (SqlCommand updateCmd = new SqlCommand("UPDATE Users SET IsEmailVerified = 1 WHERE statuscode = @statuscode", conn))
                            {
                                updateCmd.Parameters.AddWithValue("@statuscode", statuscode);
                                updateCmd.ExecuteNonQuery();
                            }
                        }
                    }
                }
            }
        }
    }
}
