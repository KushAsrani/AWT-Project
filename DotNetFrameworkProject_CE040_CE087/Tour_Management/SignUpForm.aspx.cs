using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tour_Management
{
    public partial class SignUpForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Register_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            conn.Open();
            string insertQuery = "insert into UserInfo(Username,Email,Gender,Password,Street,City,State) values(@Username,@Email,@Gender,@Password,@Street,@City,@State)";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            com.Parameters.AddWithValue("@Username", username.Text);
            com.Parameters.AddWithValue("@Email", email.Text);
            com.Parameters.AddWithValue("@Gender", gender.Text);
            com.Parameters.AddWithValue("@Password", password1.Text);
            com.Parameters.AddWithValue("@Street", street.Text);
            com.Parameters.AddWithValue("@City", city.Text);
            com.Parameters.AddWithValue("@State", state.Text);

            com.ExecuteNonQuery();
            Response.Write("Registration Successful");
            Response.Redirect("userlogin.aspx");
            Server.Transfer("usercrud.aspx");
            conn.Close();

        }

        protected void cvUsernameExists_ServerValidate(object source, ServerValidateEventArgs args)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString))
            {
                conn.Open();
                string query = "SELECT COUNT(*) FROM UserInfo WHERE Username = @Username";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Username", args.Value);
                int count = (int)cmd.ExecuteScalar();
                args.IsValid = count == 0;
            }
        }

        protected void cvEmailExists_ServerValidate(object source, ServerValidateEventArgs args)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString))
            {
                conn.Open();
                string query = "SELECT COUNT(*) FROM UserInfo WHERE Email = @Email";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Email", args.Value);
                int count = (int)cmd.ExecuteScalar();
                args.IsValid = count == 0;
            }
        }
    }
}