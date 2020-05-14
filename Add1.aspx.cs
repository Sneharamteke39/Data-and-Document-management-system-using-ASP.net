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
    public partial class Add1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Butadd1_Click(object sender, EventArgs e)
        {

            if (TxtfacId.Text == "" && TxtfacName.Text == "" && Txtgen.Text == "" && Txtbranch.Text == "" && Txteid.Text == "" && TxtSem.Text == "" && Txtdeg.Text == "" && Txtnum.Text == "" && Txtcity.Text == "")

            {

                Labmsg.Text = "ENTER DATA...!";
                Labmsg.ForeColor = System.Drawing.Color.DarkRed;


            }
            else
            {
                string mainconn = ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString;
                SqlConnection sqlconn = new SqlConnection(mainconn);
                string sqlquery = "insert into [dbo].[faculty](facultyName,facultyId,gender,course,tSemester,Degree,cityandstate,Contact,Email) values (@facultyName,@facultyId,@gender,@course,@tSemester,@Degree,@cityandstate,@Contact,@Email)";
                SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
                sqlconn.Open();
                sqlcomm.Parameters.AddWithValue("@facultyName", TxtfacName.Text);
                sqlcomm.Parameters.AddWithValue("@facultyId", TxtfacId.Text);
                sqlcomm.Parameters.AddWithValue("@gender", Txtgen.Text);
                sqlcomm.Parameters.AddWithValue("@course", Txtbranch.Text);
                sqlcomm.Parameters.AddWithValue("@tSemester", TxtSem.Text);
                sqlcomm.Parameters.AddWithValue("@Degree", Txtdeg.Text);
                sqlcomm.Parameters.AddWithValue("@cityandstate", Txtcity.Text);

                sqlcomm.Parameters.AddWithValue("@Contact", Txtnum.Text);
                sqlcomm.Parameters.AddWithValue("@Email", Txteid.Text);

                sqlcomm.ExecuteNonQuery();
                Labmsg.Text = "SAVED SUCCESSFULLY...!";
                Labmsg.ForeColor = System.Drawing.Color.DarkGreen;
                TxtfacName.Text = "";
                TxtfacId.Text = "";
                Txtgen.Text = "";
                Txtbranch.Text = "";
                TxtSem.Text = "";
                Txtdeg.Text = "";
                Txtcity.Text = "";

                Txtnum.Text = "";
                Txteid.Text = "";

                sqlconn.Close();
            }

        }
    }
}