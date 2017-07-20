using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITMaster
{
    public partial class Editer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["accountId"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            LoadCenter();
        }

        protected void LoadCenter()
        {
            List<Entity.Center> list = new List<Entity.Center>();
            list = MainbusinessLayer.MainBusiness.GetAllCenters();
            DropDownList1.DataSource = list;
            DropDownList1.DataTextField = "CenterName";
            DropDownList1.DataValueField = "CenterId";
            DropDownList1.DataBind();

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            int centerId = int.Parse(DropDownList1.SelectedValue);
            string courseName = tbName.Text.Trim();

            MainbusinessLayer.MainBusiness.CreateCourse(new Entity.Course(courseName, centerId));
        }
    }
}