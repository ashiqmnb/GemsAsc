using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GemsAsc.Components
{
    public partial class Navbar : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string role = Session["Role"] as string;
                string name = Session["Name"] as string;

                if (string.IsNullOrEmpty(role))
                {
                    navDynamicLink1.InnerHtml = "<a class='nav-link text-white' href='" + Page.GetRouteUrl("LoginRoute", null) + "'>Login</a>";
                    navDynamicLink2.InnerHtml = "<a class='nav-link text-dark' href='" + Page.GetRouteUrl("LoginRoute", null) + "'>Login</a>";
                }
                else if (role.Equals("Principal", StringComparison.OrdinalIgnoreCase))
                {
                    navDynamicLink1.InnerHtml = "<a class='nav-link text-white' href='" + Page.GetRouteUrl("AdminDashboardRoute", null) + "'>Dashboard</a>";
                    navDynamicLink2.InnerHtml = "<a class='nav-link text-dark' href='" + Page.GetRouteUrl("AdminDashboardRoute", null) + "'>Dashboard</a>";
                }
                else if (role.Equals("Faculty", StringComparison.OrdinalIgnoreCase))
                {
                    navDynamicLink1.InnerHtml = "<a class='nav-link text-white' href='" + Page.GetRouteUrl("FacultyDashboardRoute", null) + "'>Dashboard</a>";
                    navDynamicLink2.InnerHtml = "<a class='nav-link text-dark' href='" + Page.GetRouteUrl("FacultyDashboardRoute", null) + "'>Dashboard</a>";
                }
                else if (role.Equals("Student", StringComparison.OrdinalIgnoreCase))
                {
                    string firstLetter = !string.IsNullOrEmpty(name) ? name.Substring(0, 1).ToUpper() : "?";
                    navDynamicLink1.InnerHtml = $@"
                    <a class='nav-link p-0' href='{Page.GetRouteUrl("UserProfileRoute", null)}' 
                       style='display:flex;align-items:center;justify-content:center;'>
                        <div style='width:35px;height:35px;background-color:#fff;color:#000;
                                    display:flex;align-items:center;justify-content:center;
                                    border-radius:50%;font-weight:bold;'>{firstLetter}</div>
                    </a>";

                    navDynamicLink2.InnerHtml = $@"
                    <a class='nav-link p-0' href='{Page.GetRouteUrl("UserProfileRoute", null)}' 
                       style='display:flex;align-items:center;justify-content:center;'>
                        <div style='width:35px;height:35px;background-color:#16704C;color:#fff;
                                    display:flex;align-items:center;justify-content:center;
                                    border-radius:50%;font-weight:bold;'>{firstLetter}</div>
                    </a>";
                }
            }
        }
    }
}