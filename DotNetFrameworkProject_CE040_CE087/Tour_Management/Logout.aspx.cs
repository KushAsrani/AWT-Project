﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tour_Management
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Clear(); // Clear all session data
            Session.Abandon(); // End the session
            Response.Redirect("userlogin.aspx"); // Redirect to login
        }

    }
}