using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class viewproperty : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        string slugname = Request.QueryString["slug"];
        if (slugname !=null)
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            cmd.Connection = conn;
            string sql = "select id,propertyname,minimumprice,maximumprice,Uploadfile ,facebook ,instagram ,whatsapp ,youtube ,area ,bedroom ,bathroom ,proplist ,prophave ,proptype ,propavailable ,map ,propshort ,proplong  ,propplace ,landmark ,city ,pincode ,fulladdress ,slugname ,garage from realestate where slugname ='" + slugname + "'";
            SqlDataAdapter sda = new SqlDataAdapter(sql, conn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            conn.Open();
            viewproperty1.DataSource = dt;
            viewproperty1.DataBind();
            conn.Close();

        }
        else {
            Response.Redirect("Default.aspx");
           }
       

    }
    protected void AddEnquiry(object sender, EventArgs e) {


        SqlConnection conn = null;
        try {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;
            string name = (item.FindControl("firstname") as TextBox).Text;
            int id = Convert.ToInt32((item.FindControl("Id") as TextBox).Text);
            string Email = (item.FindControl("email") as TextBox).Text;
            string phone_no = (item.FindControl("phone") as TextBox).Text;
            string msg = Request.Form["message"];
            conn.Open();
            string sql = "insert into enquries(fullname,property_id,email,phone_no,msg) values('"+ name + "','"+ id + "','"+ Email + "','"+ phone_no + "','"+ msg+"')";
            SqlCommand cmd = new SqlCommand(sql, conn);
            int status = cmd.ExecuteNonQuery();

            if (status > 0)
            {
                Console.WriteLine(true);
            }
            else {
                Console.WriteLine(false);
            }

        }
        catch (Exception ex)
        {
            Console.Write(ex);
        }
        finally
        {
            conn.Close();
        }

    }


}