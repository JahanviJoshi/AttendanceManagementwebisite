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
    public partial class STUDENTS_LOGIN : System.Web.UI.Page
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
            String mycon = "Data Source=DESKTOP-JCLI3CL\\JAHANVI; Initial Catalog=sam; Integrated Security= True";
            SqlConnection scon = new SqlConnection(mycon);
            String myquery = "Select * from LoginDetails";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = scon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            String staffid;
            String password;
            staffid = ds.Tables[0].Rows[0]["staffid"].ToString();
            password = ds.Tables[0].Rows[0]["password"].ToString();
            scon.Close();
            if (staffid == TextBox1.Text && password == TextBox2.Text)
            {
                Session["username"] = staffid;
                Response.Redirect("Default2.aspx");
            }
            else
            {
                Label2.Text = "Invalid username or passwor - Relogin with Correct username password";
            }

        }
    }
}