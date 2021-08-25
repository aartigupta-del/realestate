using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    SqlConnection conn = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        cmd.Connection = conn;
        string sql = "select propertyname,minimumprice,maximumprice,Uploadfile ,facebook ,instagram ,whatsapp ,youtube ,area ,bedroom ,bathroom ,proplist ,prophave ,proptype ,propavailable ,map ,propshort ,proplong  ,propplace ,landmark ,city ,pincode ,fulladdress ,slugname ,garage from realestate where active='Y'";
        SqlDataAdapter sda = new SqlDataAdapter(sql, conn);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        conn.Open();
        propertylist.DataSource = dt;
        propertylist.DataBind();
        conn.Close();

    }
}