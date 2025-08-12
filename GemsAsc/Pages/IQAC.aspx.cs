using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GemsAsc.Pages
{
    public partial class IQAC : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlComponents.Items.Add("Objectives and Functions");
                ddlComponents.Items.Add("Composition of IQAC");
                ddlComponents.Items.Add("Quality Initiatives");
                ddlComponents.Items.Add("Quality Policies");

                LoadComponent(0);
            }
        }

        protected void ddlComponents_SelectedIndexChanged(object sender, EventArgs e)
        {
            LoadComponent(ddlComponents.SelectedIndex);
        }

        private void LoadComponent(int index)
        {
            phComponents.Controls.Clear();
            switch (index)
            {
                case 0:
                    phComponents.Controls.Add(LoadControl("~/Components/IQAC/ObjectivesFunctions.ascx"));
                    break;
                case 1:
                    phComponents.Controls.Add(LoadControl("~/Components/IQAC/Composition.ascx"));
                    break;
                case 2:
                    phComponents.Controls.Add(LoadControl("~/Components/IQAC/QualityInitiatives.ascx"));
                    break;
                case 3:
                    phComponents.Controls.Add(LoadControl("~/Components/IQAC/QualityPolicies.ascx"));
                    break;
            }
        }
    }
}