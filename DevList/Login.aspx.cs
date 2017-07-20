using ITMaster.Entity;
using ITMaster.MainbusinessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITMaster
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["accountId"] != null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            String email = txtEmail.Text.Trim();
            String password = txtPassword.Text;



            Account loginAccount = MainBusiness.GetAccountByEmailAndPassword(email, password);
            if (loginAccount == null)
            {
               
            }
            else
            {
                Session["accountId"] = loginAccount.Id;
                Session["accountRole"] = loginAccount.Role;
                Session["firstTime"] = "1";
                switch (loginAccount.Role)
                {
                    case 1:
                        Response.Redirect("Login.aspx");
                        break;
                    case 2:
                        break;
                    case 3:
                        break;
                    default:
                        break;
                }
                

            }

        }
    }
}