using GemsAsc.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace GemsAsc.Components
{
    public partial class GalleryComp : System.Web.UI.UserControl
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
            var repository = new GallaryRepo();
            var items = repository.GetItemsForHome();

            foreach (var item in items)
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