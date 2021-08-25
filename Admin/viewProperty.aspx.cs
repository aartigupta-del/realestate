using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_viewProperty : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        SqlConnection conn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        cmd.Connection = conn;
        string sql = "select id,propertyname,area,whatsapp from realestate where active='Y'";
        SqlDataAdapter sda = new SqlDataAdapter(sql, conn);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        conn.Open();
        viewproperty.DataSource = dt;
        viewproperty.DataBind();
        conn.Close();
    }
}