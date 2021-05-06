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
    public partial class STUDENTS_LLEAVE : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();
            }

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                CheckBox status = (row.Cells[3].FindControl("CheckBox1") as CheckBox);
                int applicationid = Convert.ToInt32(row.Cells[1].Text);
                if (status.Checked)
                {
                    updaterow(applicationid, "APPROVED");
                }
                else
                {
                    updaterow(applicationid, "DISAPPROVED");

                }



            }
            Label2.Text = "Applications Has Been Approved Successfully";
            SqlDataSource1.DataBind();
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
        }
        private void updaterow(int applicationid, String approval)
        {
            String mycon = "Data Source=LAPTOP-BAAIA824\\RAHUL_SERVER; Initial Catalog=SAMS; Integrated Security=True";
            String updatedata = "Update ApplicationDetails set approval='" + approval + "' where applicationid=" + applicationid + "";
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
        }
    }
}