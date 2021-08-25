using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       
    }

    protected void userlogin(object sender, EventArgs e)
    {

        SqlConnection conn = null;
        
        try {
            string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            string uname = Username.Text;
            string password = Password.Text;

            const int workFactor = 13;
           // var start = DateTime.UtcNow;
            string hashed = BCrypt.Net.BCrypt.HashPassword(password, workFactor);// for generating password
           // var end = DateTime.UtcNow;

            string sql = "select r.name ,u.id, u.username,u.password, u.fname, u.lname, u.role_id from users u join Role r  ON u.role_id = r.id where u.username ='" + uname + "'";

            //if (uname.Equals("admin") && password.Equals("123"))
            //{
            //    Response.Redirect("dashboard");
            //}
            //else
            //{
            //    //show error message
            //    errorMessage.Text = "something went wrong";
            //    Username.Text = "";
            //    Password.Text = "";

            //}
            conn = new SqlConnection(strcon);
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader sda = cmd.ExecuteReader();
            Users user = new Users();
            
            while (sda.Read())
            {
                user.id = Convert.ToInt32(sda["id"]);
                user.username = sda["username"].ToString();
                user.password = sda["password"].ToString();
                user.fname = sda["fname"].ToString();
                user.lname = sda["lname"].ToString();
                user.role_id = Convert.ToInt32(sda["role_id"]);
                user.userrole= sda["name"].ToString();
                Console.WriteLine(sda["username"]);

            }
            //Console.WriteLine(user);
            Console.WriteLine(user +" "+user.id);
            Console.WriteLine(user + " " + user.username);
            Console.WriteLine(user + " " + user.password);
            Console.WriteLine(user + " " + user.fname);
            Console.WriteLine(user + " " + user.lname);
            Console.WriteLine(user + " " + user.role_id);
            Console.WriteLine(user + " " + user.userrole);
            if (user != null)
            {

                if(BCrypt.Net.BCrypt.Verify(password, user.password))
                {
                    Session["username"] = user.username;
                    if (user.userrole.Equals("Admin"))
                    {
                        Response.Redirect("Admin/dashboard.aspx");
                    }
                }
                else
                {
                    Console.WriteLine("Invalid password");
                    errorMessage.Text = "Invalid password";
                }
            }
                else
                {
                Console.WriteLine( "something went wrong");
                Response.Redirect("Default.aspx");
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