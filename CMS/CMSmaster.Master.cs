using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ECMS.WebPage;
using ECMS.Cookies;
using Newtonsoft.Json.Serialization;
using System.Web.Services.Description;
using System.IO.Ports;
using ECMS;
using System.Web.WebSockets;
using System.Data.SqlClient;

namespace B_ERP_CMS.CMS 
{
    public partial class CMSmaster : System.Web.UI.MasterPage
    {
        public Cookies Cookies = new Cookies();
        /// <summary>
        /// All Cookies are Expire is boolen value
        /// </summary>
        Check __check = new Check();
        Notification _Timeago = new Notification();
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
                var Fullname = Cookies.FirstName + " " + Cookies.LastName;
                profilephoto.ImageUrl = "../" + Cookies.Profileimage;
                lblName.Text = Fullname;
                lblEmail.Text = Cookies.Email;
                profilephoto2.ImageUrl = "../" + Cookies.Profileimage;
                profilephoto2.AlternateText = Fullname;
                profilephoto.AlternateText = Fullname;
                string Notifications = "";
                SqlDataReader dr = __check.SqlDataReader("select top 5 * from System_Notifications where Reg_ID='"+RegID+ "' order by Notification_ID desc");
                while(dr.Read())
                {
                    Notifications += string.Format(@"<a href='{0}' class='dropdown-item'>
                                            <div class='icon'>
												<i data-feather='{1}'></i>
											</div>
											<div class='content'>
												<p>{2}</p>
												<p class='sub-text text-muted'>{3}</p>
											</div>
										</a>",dr["Link"],dr["Icon"],dr["Title"], _Timeago.timeago(dr["DateTime"].ToString(), Offset, true));
                }
                pnlNotification.Controls.Add(new LiteralControl(Notifications));
            }
            else
                Response.Redirect("~/login");
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
            return returnVal;
        }
        private bool Session_Cookies_Check(string[] CookiesValue, string[] SessionValue,bool cookies,bool session)
        {
            string[] Value = new string[] { };
            if (cookies)
                Value = CookiesValue;
            if (session)
                Value = SessionValue;
            return AllPageGetData(Value);

        }
    }
}