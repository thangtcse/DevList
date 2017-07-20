using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITMaster
{
    public partial class Center : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["accountId"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void addCenter_Click(object sender, EventArgs e)
        {
            string name = tbCenterName.Text.Trim();
            string address = tbAddress.Text.Trim();

            MainbusinessLayer.MainBusiness.CreateCenter(new Entity.Center(name, address));
        }
    }
}