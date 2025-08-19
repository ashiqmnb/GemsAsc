using GemsAsc.Assets;
using GemsAsc.DTOs;
using GemsAsc.Repositories;
using GemsAsc.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http.Headers;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GemsAsc.Admin.Pages
{
    public partial class AddFaculty : System.Web.UI.Page
    {

        private readonly CloudinaryService _cloudinaryService = new CloudinaryService();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlDepartment.Items.Clear();
                ddlDepartment.Items.Add(new ListItem("--Select Department--", ""));
                ddlDepartment.Items.Add(new ListItem("Computer Science"));
                ddlDepartment.Items.Add(new ListItem("Computer Applications"));
                ddlDepartment.Items.Add(new ListItem("Biotechnology"));
                ddlDepartment.Items.Add(new ListItem("Microbiology"));
                ddlDepartment.Items.Add(new ListItem("Geology"));
                ddlDepartment.Items.Add(new ListItem("Management Studies"));
                ddlDepartment.Items.Add(new ListItem("Commerce"));
                ddlDepartment.Items.Add(new ListItem("English"));
                ddlDepartment.Items.Add(new ListItem("Sociology"));
                ddlDepartment.Items.Add(new ListItem("Social Work"));
                ddlDepartment.Items.Add(new ListItem("MultiMedia"));
                ddlDepartment.Items.Add(new ListItem("Languages"));
                ddlDepartment.Items.Add(new ListItem("Travel and Tourism"));
                ddlDepartment.Items.Add(new ListItem("Physical Education"));
            }
        }

        protected async void btnUpload_Click(object sender, EventArgs e)
        {
            txtPassword.Attributes["value"] = txtPassword.Text;
            if (fileUpload.HasFile)
            {
                var imageUrl = await _cloudinaryService.UploadProfileImageAsync(fileUpload.PostedFile);
                imgPreview.ImageUrl = imageUrl;
                ViewState["UploadedImageUrl"] = imageUrl;
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            var facultyDto = new AddFacultyDTO
            {
                Name = txtName.Text,
                Email = txtEmail.Text,
                Password = txtPassword.Text,
                Department = ddlDepartment.SelectedValue,
                Designation = ddlDesignation.SelectedValue,
                ImageUrl = ViewState["UploadedImageUrl"]?.ToString()
            };

            AuthRepo authRepo = new AuthRepo();

            bool result = authRepo.AddNewFaculty(facultyDto);

            if (result)
            {
                Toast.ShowAndRedirect(this.Page, "Faculty registered successfully..", GetRouteUrl("AdminEventRoute", null), "success", 1800);
            }
            else
            {
                Toast.Error(this.Page, "Error while registering faculty.", 1800);
            }
        }
    }
}