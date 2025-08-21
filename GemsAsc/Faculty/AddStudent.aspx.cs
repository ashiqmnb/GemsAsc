using GemsAsc.Assets;
using GemsAsc.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GemsAsc.Faculty
{
    public partial class AddStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string department = Session["Department"].ToString();
                ddlDepartment.Items.Add(new ListItem(department));

                
            }
        }


        protected void ddlDepartment_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlCourse.Items.Clear();
            ddlCourse.Items.Add(new ListItem("--Select Course--", ""));

            switch (Session["Department"])
            {
                case "Computer Science":
                    ddlCourse.Items.Add(new ListItem("BSc Computer Science"));
                    break;

                case "Computer Applications":
                    ddlCourse.Items.Add(new ListItem("BCA"));
                    break;

                case "Biotechnology":
                    ddlCourse.Items.Add(new ListItem("B.Sc. Biotechnology"));
                    ddlCourse.Items.Add(new ListItem("M.Sc. General Biotechnology"));
                    break;


                case "Microbiology":
                    ddlCourse.Items.Add(new ListItem("B.Sc. Microbiology"));
                    ddlCourse.Items.Add(new ListItem("M.Sc. Microbiology"));
                    break;

                case "Geology":
                    ddlCourse.Items.Add(new ListItem("B.Sc. Geology"));
                    ddlCourse.Items.Add(new ListItem("M.Sc. Applied Geology"));
                    break;

                case "Management Studies":
                    ddlCourse.Items.Add(new ListItem("BBA"));
                    break;

                case "Commerce":
                    ddlCourse.Items.Add(new ListItem("B.Com Co-Operation"));
                    ddlCourse.Items.Add(new ListItem("B.Com Computer Applications"));
                    ddlCourse.Items.Add(new ListItem("B.Com Finance"));
                    ddlCourse.Items.Add(new ListItem("B.Com Banking & Insurance"));
                    ddlCourse.Items.Add(new ListItem("M.Com Finance"));
                    break;

                case "English":
                    ddlCourse.Items.Add(new ListItem("BA English Language & Literture"));
                    ddlCourse.Items.Add(new ListItem("MA English Language & Literture"));
                    break;

                case "Sociology":
                    ddlCourse.Items.Add(new ListItem("BA Sociology"));
                    break;

                case "Social Work":
                    ddlCourse.Items.Add(new ListItem("MSW"));
                    break;

                case "MultiMedia":
                    ddlCourse.Items.Add(new ListItem("BA Multimedia"));
                    break;

                case "Travel and Tourism":
                    ddlCourse.Items.Add(new ListItem("BTTM"));
                    break;
            }

            txtPassword.Attributes["value"] = txtPassword.Text;
        }


        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
                return;

            AuthRepo authRepo = new AuthRepo();

            var userDto = new WcfAuthService.RegisterUserDTO
            {
                Email = txtEmail.Text,
                Name = txtName.Text,
                Password = txtPassword.Text,
                AddNo = txtAdmissionNo.Text,
                RegNo = txtUniversityNo.Text.ToUpper(),
                Course = ddlCourse.Text,
                Department = ddlDepartment.Text,
            };

            //var isRegistered = authRepo.RegistrUser(userDto);

            WcfAuthService.Service1Client wcfAuth = new WcfAuthService.Service1Client();

            var isRegistered = wcfAuth.RegistrUser(userDto);


            if (isRegistered)
            {
                Toast.ShowAndRedirect(this.Page, "New Student Added Successfully", GetRouteUrl("FacultyStudentsRoute", null), "success", 1800);
            }
            else
            {
                lblMessage.Text = "Registration failed. Please try again.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}