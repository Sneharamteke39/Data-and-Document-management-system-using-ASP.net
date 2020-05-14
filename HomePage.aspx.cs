using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Data_And_Documents_Management_System
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButLogin_Click(object sender, EventArgs e)
        {
            if (TxtAdminId.Text == "Admin" && TxtPwdAdmin.Text == "admin123")
            {
                Session["Adminname"] = TxtAdminId.Text +" " + "DESKTOP";

                Response.Redirect("AdminPage.aspx");

            }
            else
            {
                Labmsg.Text = "FAILED LOGIN";

            }
        }
    }
}