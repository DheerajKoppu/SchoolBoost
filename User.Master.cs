// Import necessary libraries
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// The namespace for this file is FBLA.
namespace FBLA
{
    // This class represents the code-behind for the User MasterPage.
    public partial class User : System.Web.UI.MasterPage
    {
        // This method is called when the page loads.
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if the current user is logged in.
            if (System.Web.HttpContext.Current.User.Identity.Name != "" && System.Web.HttpContext.Current.User.Identity.Name != null)
            {
                // If the user is logged in, hide the Login and Register buttons and show the Logout button.
                itemlogout.Visible = true;
                itemLogin.Visible = false;
                itemregister.Visible = false;
                // Check if the user has a role assigned to them.
                if (Session["roleid"] != null)
                {
                    // If the user has a role assigned, check what role it is and show the appropriate menu items.
                    if (Session["roleid"].ToString() == "1")
                    {
                        itemuser.Visible = true;
                        itemadmin.Visible = false;
                    }
                    else
                    {
                        itemuser.Visible = false;
                        itemadmin.Visible = true;
                    }
                }
            }
            else
            {
                // If the user is not logged in, show the Login and Register buttons and hide the Logout button.
                itemLogin.Visible = true;
                itemlogout.Visible = false;
                itemregister.Visible = true;
            }
        }
    }
}