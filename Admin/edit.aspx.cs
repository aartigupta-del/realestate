using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_edit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        int editid = Convert.ToInt32(Request.QueryString["edit"]);
        SqlConnection conn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        if (editid !=null)
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            cmd.Connection = conn;
            string sql = "select propertyname,minimumprice,maximumprice,Uploadfile ,facebook ,instagram ,whatsapp ,youtube ,area ,bedroom ,bathroom ,proplist ,prophave ,proptype ,propavailable ,map ,propshort ,proplong  ,propplace ,landmark ,city ,pincode ,fulladdress ,slugname ,garage from realestate where id = '" + editid + "' ";
            SqlDataAdapter sda = new SqlDataAdapter(sql, conn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            conn.Open();
            editSingleProp.DataSource = dt;
            editSingleProp.DataBind();
            conn.Close();
        }
        else
        {
            Response.Redirect("Default.aspx");
        }



    }
    protected void updateprop(object sender, EventArgs e)
    {

        SqlConnection conn = null;
      
        
        
        try
        {
            string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;

            RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;
            string propertyname = (item.FindControl("Propertyname") as TextBox).Text;
            string minimumprice = (item.FindControl("Minimumprice") as TextBox).Text;
            string maximumprice = (item.FindControl("Maximumprice") as TextBox).Text;

            int editid = Convert.ToInt32(Request.QueryString["edit"]);
            string SaveLocation = "";
            string actualpath = "";
            string foldername = "Uploads";
            foreach (RepeaterItem itm in editSingleProp.Items)
            {
                FileUpload fileupload = itm.FindControl("FileUpload1") as FileUpload;
                if (fileupload.HasFile)
                {
                    if ((fileupload.PostedFile != null) && (fileupload.PostedFile.ContentLength > 0))
                    {
                        Guid myuuid = Guid.NewGuid();
                        string myuuidAsString = myuuid.ToString();
                        string fn = System.IO.Path.GetFileName(fileupload.PostedFile.FileName);
                        SaveLocation = Server.MapPath("\\" + foldername) + "\\" + myuuidAsString + fn;
                        actualpath = foldername + "\\" + myuuidAsString + fn;
                        fileupload.PostedFile.SaveAs(SaveLocation);
                    }
                }
            }
            


            string facebook = (item.FindControl("facebook") as TextBox).Text;
            string instagram = (item.FindControl("instagram") as TextBox).Text;
            string whatsapp = (item.FindControl("whatsapp") as TextBox).Text;
            string youtube = (item.FindControl("youtube") as TextBox).Text;
            string area = (item.FindControl("area") as TextBox).Text;
            string bedroom = (item.FindControl("bedroom") as TextBox).Text;
            string bathroom = (item.FindControl("bathroom") as TextBox).Text;
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
            string landmark = (item.FindControl("landmark") as TextBox).Text;
            string city = (item.FindControl("city") as TextBox).Text;
            string pincode =(item.FindControl("pincode") as TextBox).Text;
            string fulladdress = Request.Form["fulladdress"];
            //string slugname = Regex.Replace(propertyname.Replace(",", "_"), @"[^0-9a-zA-Z:,]+", "_").ToLower();
            string garage = (item.FindControl("garage") as TextBox).Text;
            string sql = "update  realestate set  propertyname = '"+propertyname+"',minimumprice = '"+minimumprice+"',maximumprice = '"+maximumprice+"',facebook = '"+facebook+"',instagram = '"+instagram+"',whatsapp = '"+whatsapp+"',youtube = '"+youtube+"',area = '"+area+"',bedroom = '"+bedroom+"',bathroom = '"+bathroom+ "' ,proplist='"+ proplist+ "',prophave ='" + prophave+ "',proptype ='" +proptype+ "',propavailable ='"+ propavailable +"',map = '" + map+ "' ,propshort  ='" +propshort+ "',proplong ='"+proplong+"',propplace ='"+propplace+"', landmark = '"+ landmark+"' ,city = '"+city+"' ,pincode = '"+pincode+"' ,fulladdress = '"+fulladdress+"',garage = '"+garage+ "', Uploadfile = '" + actualpath + "' where id = '"+editid+"'";

           
            conn = new SqlConnection(strcon);
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            int status = cmd.ExecuteNonQuery();

            if (status > 0)
            {
                Console.WriteLine("true");
            }
            else
            {
                Console.WriteLine("false");
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