using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GemsAsc.Faculty
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Name"] != null && Session["Role"] != null)
            {
                lblName.Text = "Welcome, " + Session["Name"].ToString();
                lblRole.Text = "Role: " + Session["Role"].ToString();
                lblId.Text = "Id: " + Session["UserId"].ToString();
            }
            else
            {
                lblName.Text = "Session expired or not logged in.";
            }
        }
    }
}