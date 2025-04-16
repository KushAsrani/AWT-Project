using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tour_Management
{
    public partial class AdminLogin2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid) // Ensure validations are passed
            {
                if (name.Text == "admin" && password.Text == "admin")
                {
                    Response.Redirect("AdminProfile.aspx");
                }
                else
                {

                }
            }
        }
    }
}