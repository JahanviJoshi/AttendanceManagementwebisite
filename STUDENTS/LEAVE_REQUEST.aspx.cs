using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace MINI_PROJECT.STUDENTS
{
    public partial class LEAVE_REQUEST : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            String query = "Insert into ApplicationDetails(applicationid,applicationname,applicationreason)values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";
            String mycon = "Data Source=LAPTOP-BAAIA824\\RAHUL_SERVER; Initial Catalog=SAMS; Integrated Security= True";
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label1.Text = "Leave Request Applied!!";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
           

        }
    }
}