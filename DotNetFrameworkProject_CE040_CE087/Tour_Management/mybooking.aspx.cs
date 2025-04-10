using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tour_Management
{
    public partial class mybooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblMessage.Text = "";
            }

            GridView1.RowDeleted += GridView1_RowDeleted;
        }

        protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            if (e.Exception == null)
            {
                lblMessage.Text = "Booking deleted successfully!";
            }
            else
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Error deleting booking.";
                e.ExceptionHandled = true;
            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                LinkButton deleteBtn = (LinkButton)e.Row.Cells[0].Controls[0];
                if (deleteBtn != null && deleteBtn.Text == "Delete")
                {
                    deleteBtn.OnClientClick = "return confirm('Are you sure you want to delete this booking?');";
                }
            }
        }
    }
}