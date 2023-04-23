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
    public partial class Login : System.Web.UI.Page
    {
        // This method is called when the page is loaded
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This method is called when the login button is clicked
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // Hide the login error message
            DivLoginError.Visible = false;

            // Create a connection to the database
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeEventsConnectionString"].ToString());
            conn.Open();

            // Encrypt the password entered by the user
            string decryptedpassword = common.Encryptword(txtPwd.Text);

            // Define a query to check if the entered username and password are valid and the email is verified
            string query = "SELECT Count(*) FROM Users WHERE username = @username AND password = @password AND isEmailVerified = 1";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@username", txtusername.Text);
            cmd.Parameters.AddWithValue("@Password", decryptedpassword);
            int count = (int)cmd.ExecuteScalar();

            // If the username and password are valid, and the email is verified, redirect the user to the appropriate page
            if (count > 0)
            {
                conn.Close();
                FormsAuthentication.RedirectFromLoginPage(txtusername.Text, true);

                // Determine the role of the user and set the session variable accordingly
                string cmdrolesql = "Select roleid,grade from users where username = @username";
                SqlCommand cmdrole = new SqlCommand(cmdrolesql, conn);
                conn.Open();
                cmdrole.Parameters.AddWithValue("@username", txtusername.Text);
                SqlDataReader dr = cmdrole.ExecuteReader();
                string role = "";
                if (dr.Read())
                {
                    if (dr.HasRows)
                    {
                        Session["roleid"] = role = dr["roleid"].ToString();
                        Session["grade"] = dr["grade"].ToString();
                    }
                }

                // Redirect the user to the appropriate page based on their role
                if (role == "1")
                {
                    Response.Redirect("/Student/MyEvents.aspx");
                }
                else
                {
                    Response.Redirect("/admin/ManageEvents.aspx");
                }
            }

            else
            {
                // Define a query to check if the entered username and password are valid, regardless of email verification status
                string emailVerifQuery = "SELECT isEmailVerified FROM Users WHERE username = @username AND password = @password";
                SqlCommand emailVerifCmd = new SqlCommand(emailVerifQuery, conn);
                emailVerifCmd.Parameters.AddWithValue("@username", txtusername.Text);
                emailVerifCmd.Parameters.AddWithValue("@Password", decryptedpassword);
                object result = emailVerifCmd.ExecuteScalar();


                if (result != null && !(bool)result)
                {
                    // If the username and password are valid, but the email is not verified, show an error message
                    DivLoginError.InnerHtml = "<strong>Error - </strong>Your email address has not been verified. Please check your email and verify your account.";
                    DivLoginError.Visible = true;
                }
                else
                {
                    // If the username and password are not valid, show an error message
                    DivLoginError.InnerHtml = "<strong>Error - </strong>Invalid Username/Password";
                    DivLoginError.Visible = true;
                }
            }
        }

    }
}