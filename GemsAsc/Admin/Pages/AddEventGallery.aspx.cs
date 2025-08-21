using GemsAsc.Assets;
using GemsAsc.Repositories;
using GemsAsc.Services;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GemsAsc.Admin.Pages
{
    public partial class AddEventGallery : System.Web.UI.Page
    {
        private readonly CloudinaryService _cloudinaryService = new CloudinaryService();

        //private readonly EventGalleryService eventGalleryService = new EventGalleryService();
        private readonly WcfEventGalleryService.Service1Client eventGalleryService = new WcfEventGalleryService.Service1Client();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected async void btnUploadGallery_Click(object sender, EventArgs e)
        {
            if (fuGalleryImage.HasFile)
            {
                var imageUrl = await _cloudinaryService.UploadImageAsync(fuGalleryImage.PostedFile);
                imgGalleryPreview.ImageUrl = imageUrl;
                ViewState["GalleryImageUrl"] = imageUrl;
            }
        }

        protected async void btnUploadEvent_Click(object sender, EventArgs e)
        {
            if (fuEventImage.HasFile)
            {
                var imageUrl = await _cloudinaryService.UploadImageAsync(fuEventImage.PostedFile);
                imgEventPreview.ImageUrl = imageUrl;
                ViewState["EventImageUrl"] = imageUrl;
            }
        }

        protected void btnAddGallery_Click(object sender, EventArgs e)
        {
            if (ViewState["GalleryImageUrl"] == null)
            {
                Toast.Error(this.Page, "Gallery Image is required", 1800);
                return;
            }

            var title = txtGalleryTitle.Text;
            var imageUrl = ViewState["GalleryImageUrl"]?.ToString();

            var res = eventGalleryService.AddGallery(title, imageUrl);

            if (res == 1)
            {
                txtGalleryTitle.Text = "";
                imgGalleryPreview.ImageUrl = "";
                ViewState.Remove("GalleryImageUrl");

                Toast.ShowAndRedirect(this.Page, "New gallery item added successfully..", GetRouteUrl("AdminGalleryRoute", null), "success", 1500);
            }
            else
            {
                Toast.Error(this.Page, "Error while Adding new gallery item.", 1800);
            }
        }

        protected void btnAddEvent_Click(object sender, EventArgs e)
        {
            if (ViewState["EventImageUrl"] == null)
            {
                Toast.Error(this.Page, "Event Image is required", 1800);
                return;
            }

            var title = txtEventTitle.Text;
            var description = txtEventDesc.Text;
            var date = txtEventDate.Text;
            var imageUrl = ViewState["EventImageUrl"]?.ToString();

            var res = eventGalleryService.AddEvent(title, description, date, imageUrl);

            if (res == 1)
            {
                txtEventTitle.Text = "";
                txtEventDesc.Text = "";
                txtEventDate.Text = "";
                imgEventPreview.ImageUrl = "";
                ViewState.Remove("EventImageUrl");

                Toast.ShowAndRedirect(this.Page, "New event added successfully..", GetRouteUrl("AdminEventRoute", null), "success", 1500);
            }
            else
            {
                Toast.Error(this.Page, "Error while Adding new event.", 1800);
            }

            
        }



        protected override void OnPreRender(EventArgs e)
        {
            base.OnPreRender(e);

            if (!string.IsNullOrEmpty(hfActiveTab.Value))
            {
                ScriptManager.RegisterStartupScript(
                    this,
                    GetType(),
                    "RestoreTab",
                    $"var triggerEl = document.querySelector('a[href=\"{hfActiveTab.Value}\"]'); " +
                    "if (triggerEl) { new bootstrap.Tab(triggerEl).show(); }",
                    true
                );
            }
        }


    }
}