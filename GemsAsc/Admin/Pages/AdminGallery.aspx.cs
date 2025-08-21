using GemsAsc.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace GemsAsc.Admin.Pages
{
    public partial class AdminGallery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadGallery();
            }
            
        }

        private void LoadGallery()
        {
            //EventGalleryService eventGalleryService = new EventGalleryService();
            WcfEventGalleryService.Service1Client eventGalleryService = new WcfEventGalleryService.Service1Client();

            var galleryItems = eventGalleryService.GetGalleryItems();

            foreach (var item in galleryItems)
            {
                var wrapper = new HtmlGenericControl("div");
                wrapper.Attributes["class"] = "gallery-item";

                var img = new HtmlImage
                {
                    Src = ResolveUrl(item.ImageUrl),
                    Alt = item.Title
                };

                var overlay = new HtmlGenericControl("div");
                overlay.Attributes["class"] = "gallery-title-overlay";
                overlay.InnerText = item.Title;

                wrapper.Controls.Add(img);
                wrapper.Controls.Add(overlay);


                galleryContainer.Controls.Add(wrapper);
            }
        }
    }
}