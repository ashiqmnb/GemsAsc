using GemsAsc.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GemsAsc.Pages
{
    public partial class EventByIdPublic : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string id = Page.RouteData.Values["id"] as string;

                //EventGalleryService eventGalleryService = new EventGalleryService();
                WcfEventGalleryService.Service1Client eventGalleryService = new WcfEventGalleryService.Service1Client();

                var ev = eventGalleryService.GetEventById(id);


                // Bind to controls
                lblTitle.Text = ev.Title;
                lblDescription.Text = ev.Description;
                imgEvent.ImageUrl = ev.ImageUrl;
                lblDate.Text = ev.Date.ToString("dd MMM yyyy");
            }
        }
    }
}