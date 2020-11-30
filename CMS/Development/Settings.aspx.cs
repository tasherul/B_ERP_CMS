using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace B_ERP_CMS.CMS.Development
{
    public partial class Settings : System.Web.UI.Page
    {
        Check_pv __Chk__ = new Check_pv();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["_app_id"] != null)
            {
                string AppID = Request.Cookies["_app_id"].Value;
                if(__Chk__.int32Check("select count(*) from Development_Settings where App_id="+AppID)==1)
                {
                    if (!IsPostBack)
                    {
                        string st = " from Development_Settings where App_id=" + AppID;
                        txtApplicationName.Text = __Chk__.stringCheck("select App_Name" + st);
                        txtFullName.Text = __Chk__.stringCheck("select full_name" + st);
                        txtPassword.Text = __Chk__.stringCheck("select Password" + st);
                        txtUserName.Text = __Chk__.stringCheck("select UserName" + st);
                        img_logo.ImageUrl = "../../" + __Chk__.stringCheck("select Logo" + st);
                        img_Profile_pic.ImageUrl = "../../" + __Chk__.stringCheck("select Profile_pic" + st);
                    }
                }
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["_app_id"] != null)
            {
                string AppID = Request.Cookies["_app_id"].Value;
                if (__Chk__.int32Check("select count(*) from Development_Settings where App_id=" + AppID) == 1)
                {
                    //Response.Write("Find");
                    string Logo = ""; string Profile_pic = "";
                    if (FileUpload2_logo.HasFile)
                    {
                        string ext = Path.GetExtension(FileUpload2_logo.FileName).ToLower();
                        if (ext == ".jpg" || ext == ".png")
                        {
                            string file = "logo-" + AppID + "-" + DateTime.Now.ToString("MMddyyyyHHmmss") + ext;
                            FileUpload2_logo.SaveAs(Server.MapPath("~/File/Development/" + file));
                            Logo = "File/Development/" + file;
                            Logo = "Logo='"+Logo+"', ";
                        }
                    }
                    if (FileUpload1_prodile_pic.HasFile)
                    {
                        string ext = Path.GetExtension(FileUpload1_prodile_pic.FileName).ToLower();
                        if (ext == ".jpg" || ext == ".png")
                        {
                            string file = "profile-" + AppID + "-" + DateTime.Now.ToString("MMddyyyyHHmmss") + ext;
                            FileUpload1_prodile_pic.SaveAs(Server.MapPath("~/File/Development/" + file));
                            Profile_pic = "File/Development/" + file;
                            Profile_pic = "Profile_pic='"+ Profile_pic + "', ";
                        }
                    }
                    __Chk__.Execute(@"update Development_Settings set "+Logo+" UserName='"+txtUserName.Text+"'  ,Password='"+txtPassword.Text+"' , "+Profile_pic+" full_name='"+txtFullName.Text+"' ,App_Name='"+txtApplicationName.Text+"' where App_id="+AppID);
                    Response.Write(__Chk__.Error);
                }
                else
                {
                    
                    string Logo = "";string Profile_pic = "";
                    if(FileUpload2_logo.HasFile)
                    {
                        string ext = Path.GetExtension(FileUpload2_logo.FileName).ToLower();
                        if(ext==".jpg" || ext==".png")
                        {
                            string file = "logo-"+AppID + "-" + DateTime.Now.ToString("MMddyyyyHHmmss") + ext;
                            FileUpload2_logo.SaveAs(Server.MapPath("~/File/Development/"+ file));
                            Logo = "File/Development/"+ file;
                        }
                    }
                    if(FileUpload1_prodile_pic.HasFile)
                    {
                        string ext = Path.GetExtension(FileUpload1_prodile_pic.FileName).ToLower();
                        if (ext == ".jpg" || ext == ".png")
                        {
                            string file = "profile-" + AppID + "-" + DateTime.Now.ToString("MMddyyyyHHmmss") + ext;
                            FileUpload1_prodile_pic.SaveAs(Server.MapPath("~/File/Development/" + file));
                            Profile_pic = "File/Development/"+file;
                        }
                    }
                    __Chk__.Execute(@"insert into Development_Settings (App_id,Logo,UserName,Password,Profile_pic,full_name,App_Name,date)
                    values("+AppID+",'"+Logo+"','"+txtUserName.Text+"','"+txtPassword.Text+"','"+Profile_pic+"','"+txtFullName.Text+"','"+txtApplicationName.Text+"','"+DateTime.Now.ToString()+"') ");
                    //Response.Write(__Chk__.Error);
                }
            }
        }


    }
}