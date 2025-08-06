using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GemsAsc.Admin
{
    public class Admin
    {
        public string UserName { get; set; }
        public string Password { get; set; }
    }

    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        Admin admin = new Admin
        {
            UserName = "GemsAscAdmin",
            Password = "GemsAdmin@123",
        };

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
                return;

            string username = txtUsername.Text;
            string password = txtPassword.Text;

            if (admin.UserName == username && admin.Password == password)
            {
                Session["AdminLoggedIn"] = true;
                Response.Redirect(Page.GetRouteUrl("AdminDashboardRoute", null));
            }
            else
            {
                lblMessage.Text = "Invalid credentials";
            }
        }
    }
}