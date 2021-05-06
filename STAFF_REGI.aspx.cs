using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace MINI_PROJECT
{
    public partial class STAFF_REGI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            String query = "Insert into STAFF_REG(firstname,lastname,emailid,password,retypepassword,gender,phoneno,address,position,id,subject)values('" + TextBox1.Text + "','" + TextBox13.Text + "','" + TextBox14.Text + "','" + TextBox15.Text + "','" + TextBox16.Text + "','" + DropDownList2.Text + "','" + TextBox17.Text + "','" + TextBox18.Text + "','" + DropDownList3.Text + "','" + TextBox20.Text + "','" + DropDownList4.Text + "')";
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
            

        }

        protected void TextBox17_TextChanged(object sender, EventArgs e)
        {

        }
        

    }
}