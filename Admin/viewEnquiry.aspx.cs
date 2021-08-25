using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_viewEnquiry : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            SqlConnection conn = new SqlConnection();
            SqlCommand cmd = new SqlCommand();
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            cmd.Connection = conn;
            string sql = "select en.id,en.fullname,en.email,en.phone_no ,en.msg,res.propertyname from enquries en JOIN realestate res ON res.id = en.property_id ";
            SqlDataAdapter sda = new SqlDataAdapter(sql, conn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            conn.Open();
            viewenquiry.DataSource = dt;
            viewenquiry.DataBind();
            conn.Close();

        }
        else
        {
            Response.Redirect("../login.aspx");
        }
        


    }
}