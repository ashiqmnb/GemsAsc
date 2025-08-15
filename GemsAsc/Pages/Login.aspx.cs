using GemsAsc.Assets;
using GemsAsc.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GemsAsc.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                string email = txtEmail.Text.Trim();
                string password = txtPassword.Text.Trim();

                AuthRepo authRepo = new AuthRepo();
                var user = authRepo.GetUserByEmail(email);

                if (user == null)
                {
                    lblMessage.Text = "No user found with this email.";
                    return;
                }

                if (!string.Equals(user.Password, password, StringComparison.Ordinal))
                {
                    lblMessage.Text = "Incorrect password.";
                    return;
                }

                Session["UserId"] = user.UserID;
                Session["Name"] = user.Name;
                Session["Role"] = user.Role;

                switch (user.Role)
                {
                    case "Principal":
                        Toast.ShowAndRedirect(this.Page, "Login successfull", GetRouteUrl("AdminDashboardRoute", null), "success", 1800);
                        break;

                    case "Faculty":
                        Toast.ShowAndRedirect(this.Page, "Login successfull", GetRouteUrl("FacultyDashboardRoute", null), "success", 1800);
                        break;

                    default:
                        Toast.ShowAndRedirect(this.Page, "Login successfull", GetRouteUrl("UserProfileRoute", null), "success", 1800);
                        break;
                }
            }
            catch (Exception ex)
            {

                lblMessage.Text = "An error occurred: " + ex.Message;
            }
        }

    }
}