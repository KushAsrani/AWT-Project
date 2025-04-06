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
            string email = txtEmail.Text.Trim();
            string passwordInput = txtPassword.Text.Trim();

            string connStr = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();
                string query = "SELECT COUNT(*) FROM Userinfo WHERE email = @Email AND password = @Password";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Password", passwordInput);

                    int count = (int)cmd.ExecuteScalar();

                    if (count == 1)
                    {
                        // Login successful
                        lblError.Visible = false;
                        Session["User"] = email;
                        Response.Redirect("MainProfilePage.aspx");
                    }
                    else
                    {
                        // Invalid login
                        lblError.Visible = true;
                    }
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