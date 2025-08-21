using GemsAsc.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GemsAsc.Faculty
{
    public partial class FacultyProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["UserId"] != null)
                {
                    UserService userService = new UserService();
                    var faculty = userService.GetFacultyById(Session["UserID"].ToString());

                    if (faculty != null)
                    {
                        lblName.Text = faculty.Name;
                        lblEmail.Text = faculty.Email;
                        lblDesignation.Text = faculty.Designation;
                        lblDepartment.Text = faculty.Department;
                        imgProfile.ImageUrl = faculty.ImageUrl;
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