using GemsAsc.DTOs.User;
using GemsAsc.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GemsAsc.Pages
{
    public partial class UserProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["UserId"] != null)
                {
                    //AuthRepo authRepo = new AuthRepo();
                    //var userProfile = authRepo.GetUserProfileById(Session["UserId"].ToString());

                    WcfAuthService.Service1Client wcfAuth = new WcfAuthService.Service1Client();

                    var userProfile = wcfAuth.GetUserProfileById(Session["UserId"].ToString());

                    if (userProfile != null)
                    {
                        lblName.Text = userProfile.Name;
                        lblEmail.Text = userProfile.Email;
                        lblAddNo.Text = userProfile.AddNo.ToString();
                        lblRegisterNo.Text = userProfile.RegisterNo;
                        lblCourse.Text = userProfile.Course;
                        lblDepartment.Text = userProfile.Department;
                        imgProfile.ImageUrl = string.IsNullOrEmpty(userProfile.ImageUrl) ? "../Assets/Images/People/student.png" : userProfile.ImageUrl;
                    }
                }
                else
                {
                    Response.Redirect("~/Login.aspx");
                }

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