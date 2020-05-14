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
    public partial class Add2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Butadd2_Click(object sender, EventArgs e)
        {
            if (TxtStudName.Text == "" && TxtStudId.Text == "" && TxtGen.Text == "" && TxtBranch.Text == "" && Txtsem.Text == "" && TxtAdd.Text == "" && TxtCity.Text == "" && TxtNum.Text == "" && TxtEID.Text == "" && TxtSsc.Text == "" && TxtHsc.Text == "")

            {

                Labmsg.Text = "ENTER DATA...!";
                Labmsg.ForeColor = System.Drawing.Color.DarkRed;


            }
            else
            {

                string mainconn = ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString;
                SqlConnection sqlconn = new SqlConnection(mainconn);


                string sqlquery = "insert into [dbo].[student](StudentName,StudentId,Gender,Branch,Semester,StudAddress,Cityandstate,contact,email,ssc,hsc) values (@StudentName,@StudentId,@Gender,@Branch,@Semester,@StudAddress,@Cityandstate,@contact,@email,@ssc,@hsc)";
                SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
                sqlconn.Open();
                sqlcomm.Parameters.AddWithValue("@StudentName", TxtStudName.Text);
                sqlcomm.Parameters.AddWithValue("@StudentId", TxtStudId.Text);
                sqlcomm.Parameters.AddWithValue("@Gender", TxtGen.Text);
                sqlcomm.Parameters.AddWithValue("@Branch", TxtBranch.Text);
                sqlcomm.Parameters.AddWithValue("@Semester", Txtsem.Text);
                sqlcomm.Parameters.AddWithValue("@StudAddress", TxtAdd.Text);
                sqlcomm.Parameters.AddWithValue("@Cityandstate", TxtCity.Text);

                sqlcomm.Parameters.AddWithValue("@contact", TxtNum.Text);
                sqlcomm.Parameters.AddWithValue("@email", TxtEID.Text);
                sqlcomm.Parameters.AddWithValue("@ssc", TxtSsc.Text);

                sqlcomm.Parameters.AddWithValue("@hsc", TxtHsc.Text);

                sqlcomm.ExecuteNonQuery();
                Labmsg.Text = "SAVED SUCCESSFULLY...!";
                Labmsg.ForeColor = System.Drawing.Color.DarkGreen;
                TxtStudName.Text = "";
                TxtStudId.Text = "";
                TxtGen.Text = "";
                TxtBranch.Text = "";
                Txtsem.Text = "";
                TxtAdd.Text = "";
                TxtCity.Text = "";

                TxtNum.Text = "";
                TxtEID.Text = "";
                TxtSsc.Text = "";
                TxtHsc.Text = "";

                sqlconn.Close();

            }

        }
    }
}