using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITMaster
{
    public partial class AddAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["accountId"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = tbName.Text.Trim();
            string email = tbEmail.Text.Trim();
            string password = tbPassword.Text.Trim();

            int role = 0;
            if (rbAdmin.Checked)
            {
                role = 2;
            }
            else if (rbEditor.Checked)
            {
                role = 3;
            }
            else
                role = 4;

            MainbusinessLayer.MainBusiness.CreateAccount(new Entity.Account(name, role, email, password));
        }
    }
}