using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Data_And_Documents_Management_System
{
    public partial class MS : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Adminname"] != null)
            {
                LabUserLogin.Text = Session["Adminname"].ToString();
            }
            else
            {
                Response.Redirect("HomePage.aspx");
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Add1.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {

            Response.Redirect("Add2.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {

            Response.Redirect("Doc.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {

            Response.Redirect("Check1.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {

            Response.Redirect("Check2.aspx");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {

            HttpContext.Current.Session.Abandon();
            Response.Redirect("HomePage.aspx");
        }
    }
}