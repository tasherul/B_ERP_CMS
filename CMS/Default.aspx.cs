using ECMS.Cookies;
using System;
using System.Collections.Generic;
using System.IO.Ports;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ECMS;
using ECMS.Design;

namespace B_ERP_CMS.CMS
{
    public partial class Default : System.Web.UI.Page
    {
        Application apps = new Application();
        ECMS.Design.Template template = new ECMS.Design.Template();
        Check_pv __Check = new Check_pv();
        protected void Page_Load(object sender, EventArgs e)
        {
            int _index = 0; string[] Value = new string[((CMSmaster)this.Master).Cookies.CookiesName.Length];
            foreach (var Name in ((CMSmaster)this.Master).Cookies.CookiesName)
            { if (Session[Name] != null || Request.Cookies[Name] != null) { Value[_index] = Session[Name] == null ? Request.Cookies[Name].Value : Session[Name].ToString(); _index++; } else { Response.Redirect("../login"); } }
            ((CMSmaster)this.Master).AllPageGetData(Value);
            //lblMobileNumber.Text = NumberEncrypt(((CMSmaster)this.Master).Mobile);

            //var AppID = Request.Cookies["_app_id"].Value;
            var RegID = ((CMSmaster)this.Master).RegID;// apps.AppID_to_RegID(AppID);
                                                       //var TemplateID = apps.AppID_to_TemplateID(AppID);
                                                       // template.TemplateID = TemplateID;
                                                       //apps.App_ID = AppID;
            //Response.Write(RegID);
            lblApps.Text = apps.Allapps(RegID).ToString();
            lblDesign.Text = template.Alltemplate(RegID).ToString();
            double YourStorageDB = Storage(RegID);
            __Check.ConnectionString("ERCMSMainDB");
            double MaxStorageDB = Convert.ToDouble(__Check.stringCheck("select MaxStorage from DeveloperRegistation where Reg_ID=" + RegID)); ;
            int yourStogare = Convert.ToInt32(YourStorageDB / 1024);
            lblStore.Text = yourStogare.ToString();
            lblTotalStorage.Text = (MaxStorageDB / 1024).ToString() + "MB";
            int maxStarage = Convert.ToInt32(MaxStorageDB / 1024);
            lblUseStorage.Text = (maxStarage - yourStogare).ToString() + "MB";

            int per = ((100 * (maxStarage - yourStogare)) / maxStarage);
            txtPersentage.Text = per.ToString();


        }
        public double Storage(string RegID)
        {
            __Check.ConnectionString("ERCMSMainDB");
            var Size = __Check.stringCheck("select sum(imageSize) from System_Template where RegID=" + RegID);
            double TemplateImageSize = Convert.ToDouble(Size == "" ? "0" : Size);
            Size = __Check.stringCheck("select sum(ImageSize) from Apps_Image where RegID=" + RegID);
            double ApplicationImageSize = Convert.ToDouble(Size == "" ? "0" : Size);
            Size = __Check.stringCheck("select imagebyte from DeveloperRegistation where Reg_ID=" + RegID);
            double ProfileImageSize = Convert.ToDouble(Size == "" ? "0" : Size);
            __Check.ConnectionString("CMSTemplate");
            Size = __Check.stringCheck("select sum(FileSize) from Template_FileUpload where RegID=" + RegID);
            double FileSize = Convert.ToDouble(Size == "" ? "0" : Size);

            return (TemplateImageSize + ApplicationImageSize + ProfileImageSize + FileSize);
        }
    }
}