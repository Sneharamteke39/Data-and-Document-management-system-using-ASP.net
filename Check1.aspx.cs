using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Data_And_Documents_Management_System
{
    public partial class Check1 : System.Web.UI.Page
    {
        string str = "Data Source=LAPTOP-T30095AD;Initial Catalog=managementsystem;Integrated Security=True";
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Butsubmit_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedItem.Text == "")
            {
                Label1.Text = "SELECT ITEM !";
                Label1.ForeColor = System.Drawing.Color.DarkRed;
                Gridfaculty.Visible = false;
                Gridstudent.Visible = false;

            }
            else
            {
                SqlConnection con = new SqlConnection(str);
                string squery = "select * from " + DropDownList1.SelectedItem.Text;


                SqlCommand cmd = new SqlCommand(squery, con);
                SqlDataAdapter Adpt = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                Adpt.Fill(dt);

                if (DropDownList1.SelectedItem.Text == "faculty")
                {
                    Gridfaculty.Visible = true;
                    Gridstudent.Visible = false;

                    Gridfaculty.DataSource = dt;
                    Gridfaculty.DataBind();
                    Label1.Text = "RECORDS FOUND";
                    Label1.ForeColor = System.Drawing.Color.DarkGreen;
                }

                else


                {
                    Gridstudent.Visible = true;
                    Gridfaculty.Visible = false;

                    Gridstudent.DataSource = dt;
                    Gridstudent.DataBind();
                    Label1.Text = "RECORDS FOUND ";
                    Label1.ForeColor = System.Drawing.Color.DarkGreen;
                }


            }
        }

        protected void Gridfaculty_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            Gridfaculty.EditIndex = -1;
        }

        protected void Gridfaculty_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = Gridfaculty.Rows[e.RowIndex];
            int facultyId = Convert.ToInt32(Gridfaculty.DataKeys[e.RowIndex].Values[0]);
            string facultyName = (row.Cells[1].Controls[0] as TextBox).Text;
            string gender = (row.Cells[3].Controls[0] as TextBox).Text;
            string course = (row.Cells[4].Controls[0] as TextBox).Text;
            string tSemester = (row.Cells[5].Controls[0] as TextBox).Text;
            string Degree = (row.Cells[6].Controls[0] as TextBox).Text;
            string cityandstate = (row.Cells[7].Controls[0] as TextBox).Text;
            string Contact = (row.Cells[8].Controls[0] as TextBox).Text;
            string Email = (row.Cells[9].Controls[0] as TextBox).Text;

            SqlConnection maincon = new SqlConnection(str);
            string squery = "update faculty set facultyName=@facultyName,gender=@gender,course=@course,tSemester=@tSemester,Degree=@Degree,cityandstate=@cityandstate,Contact=@Contact,Email=@Email where facultyId=@facultyId ";
            maincon.Open();
            SqlCommand cmd = new SqlCommand(squery, maincon);
            cmd.Parameters.AddWithValue("@facultyId ", facultyId);
            cmd.Parameters.AddWithValue("@facultyName ", facultyName);
            cmd.Parameters.AddWithValue("@gender ", gender);
            cmd.Parameters.AddWithValue("@course ", course);
            cmd.Parameters.AddWithValue("@tSemester ", tSemester);
            cmd.Parameters.AddWithValue("@Degree ", Degree);
            cmd.Parameters.AddWithValue("@cityandstate ", cityandstate);
            cmd.Parameters.AddWithValue("@Contact ", Contact);
            cmd.Parameters.AddWithValue("@Email ", Email);

            cmd.ExecuteNonQuery();

            maincon.Close();



        }

        protected void Gridfaculty_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Gridfaculty.EditIndex = e.NewEditIndex;
        }

        protected void Gridfaculty_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int facultyId = Convert.ToInt32(Gridfaculty.DataKeys[e.RowIndex].Values[1]);
            SqlConnection maincon = new SqlConnection(str);
            string squery = "delete from faculty where facultyId=@facultyId ";
            maincon.Open();
            SqlCommand cmd = new SqlCommand(squery, maincon);
            cmd.Parameters.AddWithValue("@facultyId ", facultyId);
            cmd.ExecuteNonQuery();

            maincon.Close();


        }
    }
}