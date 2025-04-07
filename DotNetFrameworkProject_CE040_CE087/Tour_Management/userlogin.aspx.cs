using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;


namespace Tour_Management
{
    public partial class userlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Btn_Submit(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();

            string connectionString = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                string query = "SELECT COUNT(*) FROM UserInfo WHERE Username = @Username AND Password = @Password";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Username", username);
                cmd.Parameters.AddWithValue("@Password", password);

                int count = (int)cmd.ExecuteScalar();

                if (count == 1)
                {
                    // Successful login
                    Session["Username"] = username;
                    Response.Redirect("MainProfilePage.aspx");
                }
                else
                {
                    lblError.Visible = true;
                }
            }
        }




        protected void Btn_reg(object sender, EventArgs e)
        {
            Response.Redirect("SignUpForm.aspx");
            Server.Transfer("SignUpForm.aspx");
        }
    }
   
}