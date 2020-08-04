using ECMS;
using ECMS.Cookies;
using ECMS.Design;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace B_ERP_CMS.CMS.Template
{
    public partial class Editor : System.Web.UI.Page
    {
        ECMS.Design.Template template = new ECMS.Design.Template();
        Cookies Cookies = new Cookies();
        private static string OTP_Code;
        SMS _send = new SMS();
        private string TemplateID { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["_temp_id"] != null)
            {
                var _TempplateID = Request.Cookies["_temp_id"].Value;
                template.TemplateID = _TempplateID;
                TemplateID = _TempplateID;
            }
            else
            {
                Response.Redirect("~/CMS/Template/");
            }
            int _index = 0; bool session = false; bool cookies = false;
            string[] CookiesValue = new string[Cookies.CookiesName.Length];
            string[] SessionValue = new string[Cookies.CookiesName.Length];
            foreach (var Name in Cookies.CookiesName)
            {
                if (Session[Name] != null || Request.Cookies[Name] != null)
                {
                    if (Session[Name] != null) { session = true; SessionValue[_index] = Session[Name].ToString(); }
                    if (Request.Cookies[Name] != null) { cookies = true; CookiesValue[_index] = Request.Cookies[Name].Value; }
                }
                else { Response.Redirect("~/login"); break; }
                _index++;
            }
            if (Session_Cookies_Check(CookiesValue, SessionValue, cookies, session))
            {
               

            }
            else
                Response.Redirect("~/login");

        }
        private bool Session_Cookies_Check(string[] CookiesValue, string[] SessionValue, bool cookies, bool session)
        {
            string[] Value = new string[] { };
            if (cookies)
                Value = CookiesValue;
            if (session)
                Value = SessionValue;
            return AllPageGetData(Value);

        }
        #region
        /// <summary>
        /// CMS Master Return Country Value for avaiable cookies or sessions.
        /// </summary>
        public string Country { get; private set; }
        /// <summary>
        /// CMS Master Return TimeZone Value for avaiable cookies or sessions.
        /// </summary>
        public string TimeZone { get; private set; }
        /// <summary>
        /// CMS Master Return IpAddress Value for avaiable cookies or sessions.
        /// </summary>
        public string IpAddress { get; private set; }
        /// <summary>
        /// CMS Master Return Offset Value for avaiable cookies or sessions.
        /// </summary>
        public string Offset { get; private set; }
        /// <summary>
        /// CMS Master Return Rememberme Value for avaiable cookies or sessions.
        /// </summary>
        public bool Rememberme { get; private set; }
        /// <summary>
        /// CMS Master Return Registation ID Value for avaiable cookies or sessions.
        /// </summary>
        public string RegID { get; private set; }
        /// <summary>
        /// CMS Master Return LoginID Value for avaiable cookies or sessions.
        /// </summary>
        public string LoginID { get; private set; }
        /// <summary>
        /// CMS Master Return FirstName Value for avaiable cookies or sessions.
        /// </summary>
        public string FirstName { get; private set; }
        /// <summary>
        /// CMS Master Return LastName Value for avaiable cookies or sessions.
        /// </summary>
        public string LastName { get; private set; }
        /// <summary>
        /// CMS Master Return Email Value for avaiable cookies or sessions.
        /// </summary>
        public string Email { get; private set; }
        /// <summary>
        /// CMS Master Return Mobile number Value for avaiable cookies or sessions.
        /// </summary>
        public string Mobile { get; private set; }
        /// <summary>
        /// CMS Master Return Max_Apps Value for avaiable cookies or sessions.
        /// </summary>
        public int Max_Apps { get; private set; }
        /// <summary>
        /// CMS Master Return EmailVerify Value for avaiable cookies or sessions.
        /// </summary>
        public string EmailVerify { get; private set; }
        /// <summary>
        /// CMS Master Return MobileVerify Value for avaiable cookies or sessions.
        /// </summary>
        public string MobileVerify { get; private set; }
        /// <summary>
        /// CMS Master Return Profileimage Value for avaiable cookies or sessions.
        /// </summary>
        public string Profileimage { get; private set; }
        /// <summary>
        /// CMS Master Return Active Value for avaiable cookies or sessions.
        /// </summary>
        public string Active { get; private set; }
        /// <summary>
        /// CMS Master Return Discription Value for avaiable cookies or sessions.
        /// </summary>
        public string Discription { get; private set; }
        /// <summary>
        /// CMS Master Return Website Value for avaiable cookies or sessions.
        /// </summary>
        public string Website { get; private set; }
        /// <summary>
        /// CMS Master Return EmailShow Value for avaiable cookies or sessions.
        /// </summary>
        public bool EmailShow { get; private set; }
        /// <summary>
        /// CMS Master Return NumberShow Value for avaiable cookies or sessions.
        /// </summary>
        public bool NumberShow { get; private set; }
        /// <summary>
        /// CMS Master Return JoinDate Value for avaiable cookies or sessions.
        /// </summary>
        public string JoinDate { get; private set; }
        /// <summary>
        /// CMS Master Return Region Value for avaiable cookies or sessions.
        /// </summary>
        public string Region { get; private set; }
        /// <summary>
        /// CMS Master Return AccountAbility Value for avaiable cookies or sessions.
        /// </summary>
        public bool AccountAbility { get; private set; }


        #endregion
        /// <summary>
        /// All page can access cookies data need call cookies value
        /// </summary>
        /// <param name="Value">value is a multiple value parameter.</param>
        /// <returns></returns>
        public bool AllPageGetData(string[] Value)
        {
            bool returnVal = Cookies.CheckCookies(Value);
            Country = Cookies.Country;
            TimeZone = Cookies.TimeZone;
            IpAddress = Cookies.IpAddress;
            Offset = Cookies.Offset;
            Rememberme = Cookies.Rememberme;
            RegID = Cookies.RegID;
            LoginID = Cookies.LoginID;
            FirstName = Cookies.FirstName;
            LastName = Cookies.LastName;
            Email = Cookies.Email;
            Max_Apps = Cookies.Max_Apps;
            EmailVerify = Cookies.EmailVerify;
            MobileVerify = Cookies.MobileVerify;
            Profileimage = Cookies.Profileimage;
            Mobile = Cookies.MobileNumber;
            Active = Cookies.Active;
            Discription = Cookies.Discription;
            Website = Cookies.Website;
            EmailShow = Cookies.EmailShow;
            NumberShow = Cookies.NumberShow;
            JoinDate = Cookies.JoinDate;
            Region = Cookies.Region;
            AccountAbility = Cookies.AccountAbility;
            return returnVal;
        }
        protected void btnSaveHtml_Click(object sender, EventArgs e)
        {
           bool y = template.MainHtml(new MainControl() {
                RegID = RegID,
                BodyClass = "",
                CssJs = "",
                CssJs_ID = "",
                MailHtml = txtMainControl.Text.Replace("'","\""),
                Template_Id = TemplateID,
                UpdateDateTime = DateTime.Now
            });
            bool x = template.HtmlDesign(new HtmlDesign()
            {
                RegID = RegID,
                Template_Id = TemplateID,
                HeaderSearch_HtmlCode = txtHeaderScarchControl.Text.Replace("'", "\""),
                HeaderSearch_UpdateTime = DateTime.Now.ToString(),
                HeaderImage_HtmlCode = txtHeaderImageControl.Text.Replace("'", "\""),
                HeaderImage_DD_ImageLink = txtSrcLogo.Text.Replace("'", "\""),
                HeaderImage_DD_AlternateText = "Demo",
                HeaderImage_DD_Link = "#",
                HeaderImage_UpdateTime = DateTime.Now.ToString(),
                HeaderNotification_HtmlCode = txtNotificationControl.Text.Replace("'", "\""),
                HeaderNotification_DD_Link = "#",
                HeaderNotification_DD_Icon = "<i class=\"fa fa-bell\"></i>",
                HeaderNotification_DD_Title = "Demo",
                HeaderNotification_DD_DetailsOrTime = "16 min ago",
                HeaderNotification_UpdateTime = DateTime.Now.ToString(),
                HeaderMessage_HtmlCode = txtMessegeControl.Text.Replace("'", "\""),
                HeaderMessage_DD_Link = "#",
                HeaderMessage_DD_ImageLink = "<i class=\"fa fa-user\"></i>",
                HeaderMessage_DD_Title = "Demo Title",
                HeaderMessage_DD_DetailsOrTime = "16 min ago",
                HeaderMessage_UpdateTime = DateTime.Now.ToString(),
                HeaderProfile_HtmlCode1 = txtProfileControl1.Text.Replace("'", "\""),
                HeaderProfile_HtmlCode2 = txtProfileControl2.Text.Replace("'", "\""),
                HeaderProfile_DD1_ImageLink = txtSrcProfileImage.Text.Replace("'", "\""),
                HeaderProfile_DD1_Name = "Demo",
                HeaderProfile_DD2_Link = "#",
                HeaderProfile_DD2_Name = "Profile",
                HeaderProfile_UpdateTime = DateTime.Now.ToString(),
                BodyBar_HtmlCode1 = txtBarSection1.Text.Replace("'", "\""),
                BodyBar_HtmlCode2 = txtBarSection2.Text.Replace("'", "\""),
                BodyBar_DD1_Link = "#",
                BodyBar_DD1_BarName = "Demo",
                BodyBar_DD2_Link = "#",
                BodyBar_DD2_BarName = "SubDemo",
                BodyBar_UpdateTime = DateTime.Now.ToString(),
                Footer_HtmlCode = txtFooter.Text.Replace("'", "\""),
                Footer_UpdateTime = DateTime.Now.ToString()
            });

            lblResult.Text = y+"-"+x+"-"+template.ErrorMessege;


        }
    }
}