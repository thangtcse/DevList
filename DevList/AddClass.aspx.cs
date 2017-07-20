using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITMaster
{
    public partial class AddClass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["accountId"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            LoadCourse();
        }

        protected void LoadCourse()
        {
            List<Entity.Course> list = new List<Entity.Course>();
            list = MainbusinessLayer.MainBusiness.GetCourseByCenterId((int)Session["centerId"]);
            DropDownList1.DataSource = list;
            DropDownList1.DataTextField = "CourseName";
            DropDownList1.DataValueField = "CourseId";
            DropDownList1.DataBind();

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            int courseId = int.Parse(DropDownList1.SelectedValue);
            string className = tbName.Text.Trim();

            MainbusinessLayer.MainBusiness.CreateClass(new Entity.Classes(className, courseId));
        }
    }
}