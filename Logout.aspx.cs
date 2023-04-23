// Import necessary libraries
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Net;

namespace FBLA
{
    public partial class Logout : System.Web.UI.Page
    {
        // This method is called when the page is loaded
        protected void Page_Load(object sender, EventArgs e)
        {
            // Clear the session state
            Session.Clear();
            Session.Abandon();

            // Sign out the user
            FormsAuthentication.SignOut();

            // Expire all cookies
            ExpireAllCookies();

            // Redirect the user to the home page
            Response.Redirect("~/Home.aspx");
        }

        // This method expires all cookies
        private void ExpireAllCookies()
        {
            if (HttpContext.Current != null)
            {
                int cookieCount = HttpContext.Current.Request.Cookies.Count;
                for (var i = 0; i < cookieCount; i++)
                {
                    var cookie = HttpContext.Current.Request.Cookies[i];
                    if (cookie != null)
                    {
                        // Create a new expired cookie with the same name and domain as the original cookie
                        var expiredCookie = new HttpCookie(cookie.Name)
                        {
                            Expires = DateTime.Now.AddDays(-1),
                            Domain = cookie.Domain
                        };

                        // Overwrite the original cookie with the expired cookie
                        HttpContext.Current.Response.Cookies.Add(expiredCookie);
                    }
                }

                // Clear all cookies on the server side
                HttpContext.Current.Request.Cookies.Clear();
            }
        }
    }
}
