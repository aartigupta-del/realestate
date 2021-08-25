using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.Services;

/// <summary>
/// Summary description for WebService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService]
public class WebService : System.Web.Services.WebService
{

    public WebService()
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string HelloWorld()
    {
        return "Hello World";
    }

    [WebMethod]
    public string Deleteproperty(string id)
    {
        SqlConnection conn = null;
        try {
            string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            string sql = "update  realestate set active='N' where id='" + id + "'";
            conn = new SqlConnection(strcon);
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            int status = cmd.ExecuteNonQuery();

            if (status > 0)
            {
                return "successfully deleted";
            }
            else
            {
                return "Failed";
            }
            //return "Hello aarti";

        }
        catch (Exception ex)
        {
            Console.Write(ex);
        }
        finally
        {
            conn.Close();
        }

        return null;
    }

    [WebMethod]
    public string searchEnquiry(string search)
    {


        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        SqlConnection con = new SqlConnection(strcon);
        // string sql = " select id, fname, lname, email from users where fname like '%" + searchKey + "%' or lname like '%" + searchKey + "%' or  email like '%" + searchKey + "%'";

        string sql = "select en.id,en.fullname,en.email,en.phone_no,en.msg,res.propertyname from enquries en JOIN realestate res ON res.id=en.property_id  where  en.fullname  like '%" + search + "%' or en.email like '%" + search + "%' or en.phone_no    like '%" + search + "%' or res.propertyname  like '%" + search + "%'";

        List<Enquiry> enqList = new List<Enquiry>();
        string JsonResult = "";
        using (SqlCommand command = new SqlCommand(sql, con))
        {
            con.Open();

            var reader = command.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    Enquiry enq = new Enquiry();
                    enq.id = Convert.ToInt32(reader["id"]);
                    enq.Fullname = reader["fullname"].ToString();
                    enq.email = reader["email"].ToString();
                    enq.Message = reader["msg"].ToString();
                    enq.Phone = reader["phone_no"].ToString();
                    enq.Propertyname = reader["propertyname"].ToString();
                    enqList.Add(enq);
                }

            }
            JsonResult = JsonConvert.SerializeObject(enqList);
            con.Close();
        }

        return JsonResult;

    }

    [WebMethod]
    public string sendEmail(string email, string name, string msg)
    {

        try
        {

            SmtpClient mySmtpClient = new SmtpClient("mail.thelastyogi.com");//smtp server name
            // set smtp-client with basicAuthentication
            mySmtpClient.UseDefaultCredentials = false;
            System.Net.NetworkCredential basicAuthenticationInfo = new
               System.Net.NetworkCredential("student@thelastyogi.com", "Student12Batch");//smtp username,password
            mySmtpClient.Credentials = basicAuthenticationInfo;

            // add from,to mailaddresses
            //MailAddress from = new MailAddress("test@example.com", "TestFromName");
            //MailAddress to = new MailAddress("test2@example.com", "TestToName");
            MailAddress from = new MailAddress("gupta1999aarti@gmail.com", "TestFromName");
            //MailAddress to = new MailAddress("surajvishwakarma338@gmail.com", "TestToName");
            MailAddress to = new MailAddress(email, name);
            MailMessage myMail = new System.Net.Mail.MailMessage(from, to);

            // add ReplyTo
            //MailAddress replyTo = new MailAddress("reply@example.com");
            MailAddress replyTo = new MailAddress("student@thelastyogi.com");
            myMail.ReplyToList.Add(replyTo);

            // set subject and encoding
            myMail.Subject = "My Subject";//Type Your Subject 
            myMail.SubjectEncoding = System.Text.Encoding.UTF8;

            // set body-message and encoding
            //myMail.Body = "<b>Test Mail</b><br>using <b>HTML</b>.";//Your Message In Html Format
            myMail.Body = msg;
            myMail.BodyEncoding = System.Text.Encoding.UTF8;
            // text or html
            myMail.IsBodyHtml = true;

            mySmtpClient.Send(myMail);
        }

        catch (SmtpException ex)
        {
            throw new ApplicationException
              ("SmtpException has occured: " + ex.Message);
        }
        catch (Exception ex)
        {
            throw ex;
        }
        return email + " " + name + " " + msg;
    }





}

