using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITMaster
{
    public partial class EditClass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["accountId"] == null)
            //{
            //    Response.Redirect("Login.aspx");
            //}
            LoadCourse();
            LoadClass();
        }
        protected void LoadCourse()
        {
            List<Entity.Course> list = new List<Entity.Course>();
            list = MainbusinessLayer.MainBusiness.GetCourseByCenterId((int)Session["centerId"]);
            drCourse.DataSource = list;
            drCourse.DataTextField = "CourseName";
            drCourse.DataValueField = "CourseId";
            drCourse.DataBind();

        }

        protected void LoadClass()
        {
            List<Entity.Classes> list = new List<Entity.Classes>();
            list = MainbusinessLayer.MainBusiness.GetClassesByCourseId(int.Parse(drCourse.SelectedValue));
            drClass.DataSource = list;
            drClass.DataTextField = "CenterName";
            drClass.DataValueField = "CenterId";
            drClass.DataBind();

        }

        protected void drCourse_SelectedIndexChanged(object sender, EventArgs e)
        {
            LoadClass();
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            
        }
    }
}