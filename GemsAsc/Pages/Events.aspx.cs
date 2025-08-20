using GemsAsc.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GemsAsc.Pages
{
    public partial class Events : System.Web.UI.Page
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
            EventGalleryService eventGalleryService = new EventGalleryService();

            var events = eventGalleryService.GetEvents();

            rptEvents.DataSource = events;
            rptEvents.DataBind();
        }
    }
}