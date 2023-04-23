// Import necessary libraries
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Net.Mail;
using System.Net;
using System.Text;

namespace FBLA
{
    public class Validation
    {
        public string connectionstring = ConfigurationManager.ConnectionStrings["CollegeEventsConnectionString"].ToString();

        // Check if an email address already exists in the users table.
        public bool ValidationEmail(string Email)
        {
            SqlConnection cn = new SqlConnection(connectionstring);
            SqlDataAdapter da = new SqlDataAdapter("select * from users where Email='" + Email + "'", cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt.Rows.Count > 0;
        }

        // Check if an event name already exists in the events table.
        public bool ValidationEventName(string eventname)
        {
            SqlConnection cn = new SqlConnection(connectionstring);
            SqlDataAdapter da = new SqlDataAdapter("select * from events where eventname='" + eventname + "'", cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt.Rows.Count > 0;
        }
        public void Email(string htmlString, string toAddress, string subjectString, Attachment attachment = null)
        {
            try
            {
                MailMessage message = new MailMessage();
                SmtpClient smtp = new SmtpClient();
                message.From = new MailAddress("schoolboostfbla@gmail.com");
                message.To.Add(new MailAddress(toAddress));
                message.Subject = subjectString;
                message.IsBodyHtml = true; //to make message body as html
                message.Body = htmlString;
                if (attachment != null)
                {
                    message.Attachments.Add(attachment);
                }
                smtp.Port = 587;
                smtp.Host = "smtp.gmail.com"; //for gmail host
                smtp.EnableSsl = true;
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = new NetworkCredential("schoolboostfbla@gmail.com", "qeeudkawffyrgzsh");
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.Send(message);
            }
            catch (Exception) { }
        }

        private readonly Random _random = new Random();

        // Generates a random number within a range.
        public int RandomNumber(int min, int max)
        {
            return _random.Next(min, max);
        }
        public string RandomString(int size, bool lowerCase = false)
        {
            var builder = new StringBuilder(size);

            // Unicode/ASCII Letters are divided into two blocks
            // (Letters 65–90 / 97–122):
            // The first group containing the uppercase letters and
            // the second group containing the lowercase.

            // char is a single Unicode character
            char offset = lowerCase ? 'a' : 'A';
            const int lettersOffset = 26; // A...Z or a..z: length=26

            for (var i = 0; i < size; i++)
            {
                var @char = (char)_random.Next(offset, offset + lettersOffset);
                builder.Append(@char);
            }

            return lowerCase ? builder.ToString().ToLower() : builder.ToString();
        }
    }
}
