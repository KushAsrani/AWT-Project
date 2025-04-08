using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tour_Management
{
    public partial class MainProfilePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Username"] != null)
                {
                    Label1.Text = $"Welcome, {Session["Username"].ToString()}!";
                }
                else
                {
                    Response.Redirect("userlogin.aspx");
                }
            }
        }

    }
}