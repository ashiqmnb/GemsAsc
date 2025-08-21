using GemsAsc.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GemsAsc.Admin.Pages
{
    public partial class AdminEvents : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindEvents();
            }
        }

        private void BindEvents()
        {
            //EventGalleryService eventGalleryService = new EventGalleryService();
            WcfEventGalleryService.Service1Client eventGalleryService = new WcfEventGalleryService.Service1Client();

            var events = eventGalleryService.GetEvents();

            rptEvents.DataSource = events;
            rptEvents.DataBind();
        }
    }
}