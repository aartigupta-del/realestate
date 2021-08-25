using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void registerhere(object sender, EventArgs e)
    {
        SqlConnection conn = null;
        try
        {

            string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;

            string fsname = firstname.Text;
            string lsname = lastname.Text;
            string username = usname.Text;
            string passwd = password.Text;

            const int workFactor = 13;
            // var start = DateTime.UtcNow;
            string hashed = BCrypt.Net.BCrypt.HashPassword(passwd, workFactor);


            string sql = "insert into users(fname,lname,username,password)values('" + fsname + "','" + lsname + "','" + username + "','" + hashed + "')";

            conn = new SqlConnection(strcon);
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            int status = cmd.ExecuteNonQuery();
            if (status > 0)
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                Response.Write("<script>alert('Username Already Exist')</script>");
            }

        }
        catch (Exception ex)
        {
            
            Console.WriteLine("Username Already Exist");
            errormessage.Text = "Username Already Exist";
            Response.Write("<script>alert('Username Already Exist')</script>");

        }
        finally
        {
            conn.Close();
        }
    }
}
