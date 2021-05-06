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
    public partial class CONTACT_US : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            String today = DateTime.Now.ToLongDateString().ToString();
            String query = "insert into ContactUs(name,emailid,mobileno,message,messagedate) values('" + TextBox1.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox4.Text + "','" + today + "')";
            String mycon = "Data Source=LAPTOP-BAAIA824\\RAHUL_SERVER; Initial Catalog=SAMS; Integrated Security=true";
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label1.Text = "Thanks For Contact Us, We will reach You very Soon.";
            TextBox1.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox4.Text = "";
        }
    }
}