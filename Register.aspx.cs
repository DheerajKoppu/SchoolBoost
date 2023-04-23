// Import necessary libraries
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.Configuration;

namespace FBLA
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            Validation obj = new Validation();

            // Validate form inputs
            if (RegistrationValidation())
            {
                var statuscode = obj.RandomString(10);

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeEventsConnectionString"].ToString());
                conn.Open();
                // Encrypt the password before inserting into the database
                string encryptedpassword = common.Encryptword(txtPwd.Text);
                string query = "SP_Users_InsertOrUpdate";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Username", txtUsername.Text);
                cmd.Parameters.AddWithValue("@Grade", Convert.ToInt32(txtgrade.Text));
                cmd.Parameters.AddWithValue("@Password", encryptedpassword);
                cmd.Parameters.AddWithValue("@Fname", txtfname.Text);
                cmd.Parameters.AddWithValue("@Lname", txtlname.Text);
                cmd.Parameters.AddWithValue("@Email", txtemail.Text);
                cmd.Parameters.AddWithValue("@country", CountryDrp.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@statuscode", statuscode);
                cmd.Parameters.AddWithValue("@isEmailVerified", 0);
                cmd.Parameters.AddWithValue("@Role", "Student");
                cmd.Parameters.AddWithValue("@ActionType", "insert");
                // Execute the stored procedure to insert the user into the database
                int result = cmd.ExecuteNonQuery();
                if (result > 0)
                {
                    obj.Email($"Please click the following link to verify your email: <a href='https://localhost:44302/VerifyEmail.aspx?VerificationCode={statuscode}'>Verify</a>", txtemail.Text, "Verify Email");
                    DivSuccess.Visible = true;
                    DivReg.Visible = false;
                    // Clear form fields on successful registration
                    txtUsername.Text = "";
                    txtPwd.Text = "";
                    txtfname.Text = "";
                    txtgrade.Text = "";
                    txtlname.Text = "";
                    txtemail.Text = "";
                    CountryDrp.SelectedIndex = 0;
                }
            }
        }
        // This method is a handler for the cancel button click event on the registration form.
        // It does not perform any actions and is left empty.

        protected void BtnCancel_Click(object sender, EventArgs e)
        {

        }

        // Validate form inputs
        public bool RegistrationValidation()
        {
            Regex regex = new Regex(@"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$");
            Regex passwordregex = new Regex(@"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$");
            // Setting initial status to true

            // Initializing variables for grade level and error message
            int grade;
            Validation obj = new Validation();
            string errormessage = "<ul>";

            // Check if First Name is empty
            if (txtfname.Text == "")
            {
                errormessage = errormessage + "<li> First Name is required</li>";
            }

            // Check if Last Name is empty
            if (txtlname.Text == "")
            {
                errormessage = errormessage + "<li> Last Name is required</li>";
            }

            // Check if Password is empty
            if (txtPwd.Text == "")
            {
                errormessage = errormessage + "<li> Password is required</li>";
            }

            // Check if Email is empty
            if (txtemail.Text == "")
            {
                errormessage = errormessage + "<li> Email is required</li>";
            }

            // Check if email is in valid format and doesn't already exist in the database
            if (txtemail.Text != "")
            {
                bool emailstatus = obj.ValidationEmail(txtemail.Text);
                if (emailstatus == true)
                {
                    errormessage = errormessage + "<li> Email already exists </li>";
                }
                if (!regex.IsMatch(txtemail.Text))
                {
                    errormessage = errormessage + "<li> Invalid Email </li>";
                }
            }

            // Check if password is in valid format
            if (!passwordregex.IsMatch(txtPwd.Text))
            {
                errormessage = errormessage + "<li> Invalid Password </li>";
            }

            // Check if grade level is within a certain range
            if (!int.TryParse(txtgrade.Text, out grade) || grade < 9 || grade > 12)
            {
                errormessage = errormessage + "<li> Invalid Grade Level</li>";
            }
            else if (txtgrade.Text == "")
            {
                errormessage = errormessage + "<li> Grade Level is required</li>";
            }

            // Display error messages if any errors were found
            if (errormessage.Contains("<li>"))
            {
                error.InnerHtml = errormessage;
                return false;
            }
            else
            {
                error.InnerHtml = "";
            }

            // Return the status of the validation
            return true;

        }
    }
}