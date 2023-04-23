// Import necessary libraries
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace FBLA
{
    public partial class EventGallery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (System.Web.HttpContext.Current.User.Identity.Name != "" && System.Web.HttpContext.Current.User.Identity.Name != null && Session["roleid"] != null)
            {
                // Check what role the user has and show/hide appropriate buttons.
                if (Session["roleid"].ToString() == "1")
                {
                    // Regular user role, hide delete button and show upload and submit buttons.
                    fileUpload2.Visible = true;
                    Button2.Visible = true;
                }
                else if (Session["roleid"].ToString() == "2")
                {
                    // Admin role, show delete button and hide upload and submit buttons.
                    fileUpload2.Visible = false;
                    Button2.Visible = false;
                }
            }
            else
            {
                // User not logged in, hide all buttons.
                fileUpload2.Visible = false;
                Button2.Visible = false;
            }

            if (!IsPostBack)
            {
                LoadPosts();
            }
        }
        protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                LinkButton deleteBtn = e.Item.FindControl("deleteBtn") as LinkButton;

                if (Session["roleid"] != null)
                {
                    if (Session["roleid"].ToString() == "1")
                    {
                        // Regular user role, hide delete button
                        deleteBtn.Visible = false;
                    }
                    else if (Session["roleid"].ToString() == "2")
                    {
                        // Admin role, show delete button
                        deleteBtn.Visible = true;
                    }
                }
                else
                {
                    // User not logged in, hide delete button
                    deleteBtn.Visible = false;
                }
            }
        }


        private void LoadPosts()
        {
            // Establish a connection with the database
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeEventsConnectionString"].ToString()))
            {
                conn.Open();

                // Get the current user's name and ID
                string currentUser = System.Web.HttpContext.Current.User.Identity.Name;
                int currentUserId = GetUserIdByUsername(currentUser);

                // Define the query for fetching posts, including like count and a flag for whether the current user has liked the post
                string query = @"
    SELECT Posts.PostId, Users.Fname + ' ' + Users.Lname AS Name, Posts.FileLocation, Posts.DatePosted,
        COUNT(UserLikes.PostId) AS LikeCount,
        CASE
            WHEN EXISTS (SELECT * FROM UserLikes WHERE UserId = @CurrentUserId AND PostId = Posts.PostId)
            THEN 1
            ELSE 0
        END AS AlreadyLiked
    FROM Posts
    INNER JOIN Users ON Posts.StudentId = Users.UserId
    LEFT JOIN UserLikes ON Posts.PostId = UserLikes.PostId
    GROUP BY Posts.PostId, Users.Fname, Users.Lname, Posts.FileLocation, Posts.DatePosted
    ORDER BY Posts.DatePosted DESC";

                // Execute the query and bind the results to a repeater control
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@CurrentUserId", currentUserId);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        Repeater1.DataSource = reader;
                        Repeater1.DataBind();
                    }
                }
            }
        }

        private static int GetUserIdByUsername(string username)
        {
            int userId = -1;

            // Establish a connection with the database
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeEventsConnectionString"].ToString()))
            {
                conn.Open();

                // Define the query for fetching the user ID
                string query = "SELECT UserId FROM Users WHERE Username = @Username";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Username", username);

                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.Read())
                    {
                        userId = reader.GetInt32(0);
                    }
                }
            }

            return userId;
        }

        private void SavePostToDatabase(string fileName)
        {
            string currentUser = System.Web.HttpContext.Current.User.Identity.Name;

            // Establish a connection with the database
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeEventsConnectionString"].ToString()))
            {
                try
                {
                    conn.Open();

                    // Define the query for fetching the current user's ID
                    string getUserIdQuery = "SELECT UserId FROM users WHERE Username = @Username";
                    SqlCommand getUserIdCmd = new SqlCommand(getUserIdQuery, conn);
                    getUserIdCmd.Parameters.AddWithValue("@Username", currentUser);

                    int userId = 0;

                    // Execute the query to get the user ID
                    using (SqlDataReader reader = getUserIdCmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            userId = reader.GetInt32(0);
                        }
                    }

                    // If a valid user ID was found, insert the new post into the database
                    if (userId != 0)
                    {
                        string insertQuery = "INSERT INTO Posts (StudentId, FileLocation, DatePosted) VALUES (@StudentId, @FileLocation, @DatePosted)";
                        SqlCommand insertCmd = new SqlCommand(insertQuery, conn);
                        insertCmd.Parameters.AddWithValue("@StudentId", userId);
                        insertCmd.Parameters.AddWithValue("@FileLocation", "/Images/" + fileName);
                        insertCmd.Parameters.AddWithValue("@DatePosted", DateTime.Now);

                        insertCmd.ExecuteNonQuery();
                    }
                }
                catch (Exception ex)
                {
                    // Log the exception and show an error message
                    Response.Write("<script>alert('An error occurred: " + ex.Message + "');</script>");
                }
            }
        }
        protected void DeletePost(object sender, EventArgs e)
        {
            // Get the postId from the LinkButton's CommandArgument
            LinkButton btn = sender as LinkButton;
            int postId = int.Parse(btn.CommandArgument.ToString());

            // Connect to the database and delete the post
            string connectionString = ConfigurationManager.ConnectionStrings["CollegeEventsConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                using (SqlCommand cmd = new SqlCommand("DELETE FROM [CollegeEvents].[dbo].[Posts] WHERE [PostId] = @PostId", con))
                {
                    cmd.Parameters.AddWithValue("@PostId", postId);
                    cmd.ExecuteNonQuery();
                }
            }

            // Update the repeater control
            BindRepeater();
        }

        protected void ToggleLike(object sender, EventArgs e)
        {
            // Get the postId from the LinkButton's CommandArgument
            LinkButton btn = sender as LinkButton;
            int postId = int.Parse(btn.CommandArgument.ToString());

            // Get the current user's ID
            string currentUser = HttpContext.Current.User.Identity.Name;
            int userId = GetUserIdByUsername(currentUser);

            // Connect to the database and toggle the like status
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeEventsConnectionString"].ToString()))
            {
                conn.Open();

                string query = @"
    IF EXISTS (SELECT * FROM UserLikes WHERE UserId = @UserId AND PostId = @PostId)
        DELETE FROM UserLikes WHERE UserId = @UserId AND PostId = @PostId
    ELSE
        INSERT INTO UserLikes (UserId, PostId) VALUES (@UserId, @PostId)";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@UserId", userId);
                    cmd.Parameters.AddWithValue("@PostId", postId);

                    cmd.ExecuteNonQuery();
                }
            }

            // Refresh the posts list
            LoadPosts();
        }

        protected void BindRepeater()
        {
            // Connect to the database and fetch post data
            string connectionString = ConfigurationManager.ConnectionStrings["CollegeEventsConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string currentUser = System.Web.HttpContext.Current.User.Identity.Name;
                int currentUserId = GetUserIdByUsername(currentUser);

                string query = @"
            SELECT TOP (1000) Posts.PostId, Users.Fname + ' ' + Users.Lname AS Name, Posts.FileLocation, Posts.DatePosted,
                COUNT(UserLikes.PostId) AS LikeCount,
                CASE
                    WHEN EXISTS (SELECT * FROM UserLikes WHERE UserId = @CurrentUserId AND PostId = Posts.PostId)
                    THEN 1
                    ELSE 0
                END AS AlreadyLiked
            FROM Posts
            INNER JOIN Users ON Posts.StudentId = Users.UserId
            LEFT JOIN UserLikes ON Posts.PostId = UserLikes.PostId
            GROUP BY Posts.PostId, Users.Fname, Users.Lname, Posts.FileLocation, Posts.DatePosted
            ORDER BY Posts.DatePosted DESC";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@CurrentUserId", currentUserId);

                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        Repeater1.DataSource = dt;
                        Repeater1.DataBind();
                    }
                }
            }
        }



        protected void submitBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (fileUpload2.HasFile)
                {
                    string fileName = Path.GetFileName(fileUpload2.FileName);
                    string fileExtension = Path.GetExtension(fileName).ToLower();
                    string[] allowedExtensions = { ".jpg", ".jpeg", ".png", ".gif" };

                    // Check if the file extension is allowed
                    if (allowedExtensions.Contains(fileExtension))
                    {
                        string filePath = Server.MapPath("~/Images/") + fileName;
                        fileUpload2.SaveAs(filePath);

                        SavePostToDatabase(fileName);
                        LoadPosts();
                    }
                    else
                    {
                        // Show an error message if the file type is not allowed
                        Response.Write("<script>alert('File type not allowed. Please upload a valid image file.');</script>");
                    }
                }
            }
            catch (Exception ex)
            {
                // Log the exception and show an error message
                Response.Write("<script>alert('An error occurred: " + ex.Message + "');</script>");
            }
        }
    }
}