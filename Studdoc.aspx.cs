using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;


namespace Data_And_Documents_Management_System
{
    public partial class Studdoc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Butsubmit_Click(object sender, EventArgs e)
        {
            if (DropDownList3.SelectedIndex.Equals(0))
            {
                Label1.Text = "SELECT ITEM !";
                Label1.ForeColor = System.Drawing.Color.DarkRed;

                Response.Redirect("Doc.aspx");

            }
            else
            {




                if (DropDownList3.SelectedIndex.Equals(1))
                {

                    Response.Redirect("Facdoc.aspx");

                }
                else
                {
                    Response.Redirect("Studdoc.aspx");
                }
            }



        }

        protected void Butstud_Click(object sender, EventArgs e)
        {
            if (Textstud1.Text == "")
            {

                Labmsg.Text = "ENTER DATA...!";
                Labmsg.ForeColor = System.Drawing.Color.DarkRed;

            }
            else
            {
                String constring = "Data Source=LAPTOP-T30095AD;Initial Catalog=managementsystem;Integrated Security=True";
                SqlConnection sqlcon = new SqlConnection(constring);
                FileUpload1.SaveAs(Server.MapPath("images") + Path.GetFileName(FileUpload1.FileName));
                String link = "images" + Path.GetFileName(FileUpload1.FileName);
                FileUpload2.SaveAs(Server.MapPath("images") + Path.GetFileName(FileUpload2.FileName));
                String link1 = "images" + Path.GetFileName(FileUpload2.FileName);
                FileUpload3.SaveAs(Server.MapPath("images") + Path.GetFileName(FileUpload3.FileName));
                String link2 = "images" + Path.GetFileName(FileUpload3.FileName);
                FileUpload4.SaveAs(Server.MapPath("images") + Path.GetFileName(FileUpload4.FileName));
                String link3 = "images" + Path.GetFileName(FileUpload4.FileName);
                String query = "Insert into Student_Documents(StudentName,StudentId,profileimg,aadharimg,sscimg,hscimg) values('" + Textstud1.Text + "','" + Textstud2.Text + "','" + link + "','" + link1 + "','" + link2 + "','" + link3 + "')";
                SqlCommand cmd = new SqlCommand(query, sqlcon);
                sqlcon.Open();
                cmd.ExecuteNonQuery();
                Labmsg.Text = "SAVED SUCCESSFULLY...!";
                Labmsg.ForeColor = System.Drawing.Color.DarkGreen;
                sqlcon.Close();

                Textstud1.Text = "";
                Textstud2.Text = "";
            }





        }
    }
}