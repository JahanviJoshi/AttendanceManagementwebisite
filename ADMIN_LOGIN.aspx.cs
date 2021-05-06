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
    public partial class ADMIN_LOGIN1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /* if (Session["username"] == null)
           {
               Response.Redirect("Default1.aspx");
           }
           else
           {
               Label2.Text = "Hello" + Session["username"].ToString();
           }*/
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            String mycon = "Data Source=LAPTOP-BAAIA824\\RAHUL_SERVER; Initial Catalog=SAMS; Integrated Security= True";
            SqlConnection scon = new SqlConnection(mycon);
            String myquery = "Select * from adminlogindetails";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = scon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            String adminid;
            String password;
            adminid = ds.Tables[0].Rows[0]["adminid"].ToString();
            password = ds.Tables[0].Rows[0]["password"].ToString();
            scon.Close();
            if (adminid == TextBox1.Text && password == TextBox2.Text)
            {
                Session["username"] = adminid;
                Response.Redirect("ADMIN/ADMIN_HOME.aspx");
            }
            else
            {
                Label2.Text = "Invalid username or passwor - Relogin with Correct username password";
            }

        }
    }
}