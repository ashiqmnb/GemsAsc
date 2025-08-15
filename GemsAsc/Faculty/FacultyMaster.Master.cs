using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GemsAsc.Faculty
{
    public partial class FacultyMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var role = Session["Role"] as string;
            if (role != "Faculty")
            {
                Response.Redirect(GetRouteUrl("AccessDeniedRoute", null));
                return;
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