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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btninsert_Click(object sender, EventArgs e)
        {
            string conn = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|HRM.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(conn);

            con.Open();
            string query = "insert into Employee(Name,Email,ContactNo,OfferedSalary)Values(@Name,@Email,@ContactNo,@OfferedSalary)";
            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.AddWithValue("@Name", txtname.Text);
            cmd.Parameters.AddWithValue("@Email", txtemail.Text);
            cmd.Parameters.AddWithValue("@ContactNo", txtcontactno.Text);
            cmd.Parameters.AddWithValue("@OfferedSalary", txtsalary.Text);
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Write("<script>alert('Record Inserted Successfully.')</script>");
        }
    }
}