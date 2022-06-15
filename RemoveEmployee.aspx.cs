using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace MockTestFinal
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string conn = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|HRM.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(conn);

            con.Open();
            string query = "Delete from Employee where EmpId=@EmpId";
            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.AddWithValue("@EmpId", txtEmpid.Text);
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Write("<script>alert('Record Removed Successfully.')</script>");
        }
    }
}