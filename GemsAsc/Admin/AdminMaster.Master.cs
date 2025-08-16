using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GemsAsc.Admin
{
    public partial class AdminMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var role = Session["Role"] as string;
            if (role != "Principal")
            {
                Response.Redirect(GetRouteUrl("AccessDeniedRoute", null));
                return;
            }
            else
            {
                lblName.Text = Session["Name"].ToString();
            }

        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session["AdminLoggedIn"] = null;
            Session.Abandon();
            Response.Redirect("~/Default.aspx");
        }
    }
}