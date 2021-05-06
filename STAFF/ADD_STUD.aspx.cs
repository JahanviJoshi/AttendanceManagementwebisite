using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace MINI_PROJECT.STAFF
{
    public partial class ADD_STUD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void TextBox17_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String query = "Insert into AddStudent1(firstname,lastname,emailid,gender,dob,religion,phonno,address,id,password,retypepassword,subject)values('" + TextBox1.Text + "','" + TextBox13.Text + "','" + TextBox14.Text + "','" + TextBox15.Text + "','" + TextBox16.Text + "','" + DropDownList3.Text + "','" + TextBox17.Text + "','" + TextBox18.Text + "','" + TextBox20.Text + "','" + TextBox23.Text + "','" + TextBox24.Text + "','" + DropDownList3.Text+ "')";
            String mycon = "Data Source=LAPTOP-BAAIA824\\RAHUL_SERVER; Initial Catalog=SAMS; Integrated Security= True";
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label1.Text = "New Registration Successfully Saved!!";

            TextBox1.Text = "";
            TextBox13.Text = "";
            TextBox14.Text = "";
            TextBox15.Text = "";
            TextBox16.Text = "";
            TextBox17.Text = "";
            TextBox20.Text = "";
            TextBox18.Text = "";
            TextBox23.Text = "";
            TextBox24.Text = "";


        }

        protected void TextBox15_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox14_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox13_TextChanged(object sender, EventArgs e)
        {

        }
    }
}