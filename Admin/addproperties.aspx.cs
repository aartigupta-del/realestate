using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

public partial class Admin_addproperties : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //List<string> propertyfor = new List<string> { "For Sale", "For Rent","PG", "Flatmates","Other"};
        //listproperty.DataSource = propertyfor;
        //listproperty.DataBind();

        //List<string> Haveno = new List<string> { "Residential", "Commercial","Agriculture","Other" };
        //ihave.DataSource = Haveno;
        //ihave.DataBind();

        //List<string> propertytypefor = new List<string> { "Apartments", "House","Villa", "Builder floor","Floor","Studio" ,"Farmhouse","Other"};
        //propertytype.DataSource = propertytypefor;
        //propertytype.DataBind();

        //List<string> Availablefor = new List<string> { "New", "Resale" };
        //available.DataSource = Availablefor;
        //available.DataBind();

    }

    protected void Publish(object sender, EventArgs e)
    {
        SqlConnection conn = null;
        try
        {
            string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;

            conn = new SqlConnection(strcon);

            string propertyname = Propertyname.Text;
            string minimumprice = Minimumprice.Text;
            string maximumprice = Maximumprice.Text;
            string SaveLocation = "";
            string actualpath = "";
            string foldername = "Uploads";
            if ((fileupload.PostedFile != null) && (fileupload.PostedFile.ContentLength > 0))
            {
                Guid myuuid = Guid.NewGuid();
                string myuuidAsString = myuuid.ToString();
                string fn = System.IO.Path.GetFileName(fileupload.PostedFile.FileName);
                SaveLocation = Server.MapPath("\\" + foldername) + "\\" + myuuidAsString + fn;
                actualpath = foldername + "\\" + myuuidAsString + fn;
                fileupload.PostedFile.SaveAs(SaveLocation);
            }

            string facebook = Facebook.Text;
            string instagram = Instagram.Text;
            string whatsapp = Whatsapp.Text;
            string youtube = Youtube.Text;
            string area = Area.Text;
            string bedroom = Bedroom.Text;
            string bathroom = Bathroom.Text;
            string proplist = Request.Form["listproperty"];
            string prophave = Request.Form["ihave"];
            string proptype = Request.Form["propertytype"];
            string propavailable = Request.Form["available"];
            //string proplist = listproperty.SelectedValue;
            //string prophave = ihave.SelectedValue;
            //string proptype = propertytype.SelectedValue;
            //string propavailable = available.SelectedValue;
            string map = Request.Form["googlemap"];
            string propshort = Request.Form["shortdesc"];
            string proplong = Request.Form["longdesc"];
            string propplace = Request.Form["nearplaces"];
            string landmark = Landmark.Text;
            string city = City.Text;
            string pincode = Pincode.Text;
            string fulladdress = Request.Form["Fulladdress"];
            string slugname = Regex.Replace(propertyname.Replace(",", "_"), @"[^0-9a-zA-Z:,]+", "_").ToLower();
            string garage = Garage.Text;
            string sql = "insert into realestate(propertyname,minimumprice,maximumprice,Uploadfile ,facebook ,instagram ,whatsapp ,youtube ,area ,bedroom ,bathroom ,proplist ,prophave ,proptype ,propavailable ,map ,propshort ,proplong  ,propplace ,landmark ,city ,pincode ,fulladdress ,slugname ,garage ) values('" + propertyname + "','" + minimumprice + "','" + maximumprice + "','" + actualpath + "','" + facebook + "','" + instagram + "','" + whatsapp + "','" + youtube + "','" + area + "','" + bedroom + "','" + bathroom + "','" + proplist + "','" + prophave + "','" + proptype + "','" + propavailable + "','" + map + "','" + propshort + "','" + proplong + "','" + propplace + "','" + landmark + "','" + city + "','" + pincode + "','" + fulladdress + "','" + slugname + "','" + garage + "')";
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);

            int status = cmd.ExecuteNonQuery();
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