using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Data;


namespace Data_And_Documents_Management_System
{
    public partial class Studdoc1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Butsubmit_Click(object sender, EventArgs e)
        {

            if (DropDownList6.SelectedIndex.Equals(0))

            {
                
                Label1.Text = "SELECT ITEM !";
                Label1.ForeColor = System.Drawing.Color.DarkRed;
                Response.Redirect("Check2.aspx");

            }
            else
            {




                if (DropDownList6.SelectedIndex.Equals(1))
                {

                    Response.Redirect("Facdoc1.aspx");

                }
                else
                {
                    Response.Redirect("Studdoc1.aspx");
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox2.Text == "")
            {

                Label3.Text = "ENTER ID !";
                Label3.ForeColor = System.Drawing.Color.DarkRed;

            }

            else
            {
                String constring = "Data Source=LAPTOP-T30095AD;Initial Catalog=managementsystem;Integrated Security=True";
                SqlConnection sqlcon = new SqlConnection(constring);

                String squery = "select * from Student_Documents where StudentId like'" + TextBox2.Text + "%'";
                SqlCommand cmd = new SqlCommand(squery, sqlcon);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();

                sda.Fill(dt);

                GridView2.DataSource = dt;
                GridView2.DataBind();
                Label3.Text = "DOCUMENTS FOUND !";
                Label3.ForeColor = System.Drawing.Color.DarkGreen;
                sqlcon.Close();
            }
        }
    }
}