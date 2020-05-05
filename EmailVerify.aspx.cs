using ECMS.Cookies;
using ECMS.WebPage;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace B_ERP_CMS
{
    public partial class EmailVerify : System.Web.UI.Page
    {
        Cookies Cookies = new Cookies();
        protected void Page_Load(object sender, EventArgs e)
        {
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
                if (Cookies.EmailVerify == "True" || Cookies.EmailVerify == "true")
                {
                    Response.Redirect("~/CMS/");
                }
                else
                {
                    btnResend.Visible = true;
                }
            }
            else
            {
                if (Request.QueryString[""] != null && Request.QueryString["rid"]!=null)
                {
                    var Code = Request.QueryString[""].ToString();
                    var RegID = Request.QueryString["rid"].ToString();
                    Registation reg = new Registation();
                    if(reg.EmailVerification(Code,RegID))
                    {
                        Response.Redirect("~/CMS/");
                    }
                    else
                    {
                        lblResult.Text = ""+reg.Message;
                    }
                }
                else
                {
                    Response.Redirect("~/login");
                }
            }
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
        public string EmailVerifed { get; private set; }
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
            EmailVerifed = Cookies.EmailVerify;
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
        private bool Session_Cookies_Check(string[] CookiesValue, string[] SessionValue, bool cookies, bool session)
        {
            string[] Value = new string[] { };
            if (cookies)
                Value = CookiesValue;
            if (session)
                Value = SessionValue;
            return AllPageGetData(Value);

        }

        protected void btnResend_Click(object sender, EventArgs e)
        {
            ECMS.EMAIL eMAIL = new ECMS.EMAIL();
            eMAIL.Email = Email;
            eMAIL.Subject = "Email Verifications.";
            eMAIL.Messege = "please verify your email. please click http://" + Request.Url.AbsoluteUri.ToString().Replace("create_account", "EmailVerify") + "?=" + EmailVerifed + "&rid=" + RegID;
            if (eMAIL.Mail())
            {
                lblResult.Text = @"<div class='alert alert-icon-success' role='alert'>
                                   Email is Send Please Check your Email.
                             </div>";
            }
            else
            {
                lblResult.Text = "";
            }
        }
    }
}