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
                //var user = authRepo.GetUserByEmail(email);

                WcfAuthService.Service1Client wcfAuth = new WcfAuthService.Service1Client();
                var user = wcfAuth.GetUserByEmail(email);

                
                if (user == null)
                {
                    lblMessage.Text = "No user found with this email.";
                    return;
                }

                bool isValidPassword = BCrypt.Net.BCrypt.Verify(password, user.Password);
                if (!isValidPassword)
                {
                    lblMessage.Text = "Incorrect password.";
                    return;
                }

                //if (!string.Equals(user.Password, password, StringComparison.Ordinal))
                //{
                //    lblMessage.Text = "Incorrect password.";
                //    return;
                //}

                if (user.IsBlocked == true)
                {
                    lblMessage.Text = "You are blocked by admin.";
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
                        UserService userService = new UserService();
                        var faculty = userService.GetFacultyById(user.UserID);

                        Session["ProfileUrl"] = faculty.ImageUrl;
                        Session["Department"] = faculty.Department;
                        Session["Designation"] = faculty.Designation;

                        Toast.ShowAndRedirect(this.Page, "Login successfull", GetRouteUrl("FacultyProfileRoute", null), "success", 1800);
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