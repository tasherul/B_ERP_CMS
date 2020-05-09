using MySqlX.XDevAPI;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using ECMS.Cookies;
using ECMS;
using ECMS.WebPage;
using System.Text.RegularExpressions;

namespace B_ERP_CMS
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string[] ss;
        Decrypt d = new Decrypt();
        public enum xx
        {
            place,
            assas
        }
        Notification Notification = new Notification();
        protected void Page_Load(object sender, EventArgs e)
        {
            //d.DecryptCode = "IVQT173XULRD4MS";
            //Response.Write(d.GetDecryptHashCode("zEy5HhzABHYtNUFe05zGbQ=="));
            //Response.Write(xx.place);
            
            // Response.Write(Notification.timeago("2020-05-04 00:49:59.000", "+06:00",true));
            //Response.Write(Notification.AddNotification("Please verify your email","#",IconDataFeather.mail,"+06:00", "10002"));
        }
        private string timeago()
        {
            var dt = Convert.ToDateTime("2020-05-02 13:56:04.067");
            var ts = new TimeSpan(DateTime.UtcNow.Ticks - dt.Ticks);
            double delta = Math.Abs(ts.TotalSeconds);

            if (delta < 60)
            {
                return ts.Seconds == 1 ? "one second ago" : ts.Seconds + " seconds ago";
            }
            if (delta < 120)
            {
                return "a minute ago";
            }
            if (delta < 2700) // 45 * 60
            {
                return ts.Minutes + " minutes ago";
            }
            if (delta < 5400) // 90 * 60
            {
                return "an hour ago";
            }
            if (delta < 86400) // 24 * 60 * 60
            {
                return ts.Hours + " hours ago";
            }
            if (delta < 172800) // 48 * 60 * 60
            {
                return "yesterday";
            }
            if (delta < 2592000) // 30 * 24 * 60 * 60
            {
                return ts.Days + " days ago";
            }
            if (delta < 31104000) // 12 * 30 * 24 * 60 * 60
            {
                int months = Convert.ToInt32(Math.Floor((double)ts.Days / 30));
                return months <= 1 ? "one month ago" : months + " months ago";
            }
            int years = Convert.ToInt32(Math.Floor((double)ts.Days / 365));
            return years <= 1 ? "one year ago" : years + " years ago";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // // Label1.Text = Session["s"].ToString();
            // int i = 0;
            //foreach (string httpCookie in cookies.CookiesName)
            // {
            //     Label1.Text += cookies.CookiesName[i]+" : "+ Request.Cookies[httpCookie].Value+"<br/>";
            //     i++;
            // }
            //Response.Write(Request.Browser.IsMobileDevice+"<br/>"+ Request.UserAgent.ToString()+"</br>"+ HttpContext.Current.Request.ServerVariables["HTTP_USER_AGENT"].ToString());
            int start = 0, end = 0,length=0;bool lengths = false;
            string version = Request.UserAgent.ToString();
            for (int i = 0; i < version.Length; i++)
            {
                if (version[i] == '(')
                { start = i+1;lengths = true; }                
                if(version[i]==')')
                { lengths = false; end = i;break; }
                if (lengths) { length++; }
            }
            var newVersion = version.Substring(start, length - 1);
            
            Response.Write(newVersion);
        }
        //mozilla/5.0 (linux; android 6.0; nexus 5 build/mra58n) applewebkit/537.36 (khtml, like gecko) chrome/81.0.4044.129 mobile safari/537.36 //chrome
        //mozilla/5.0 (windows nt 10.0; wow64; trident/7.0; rv:11.0) like gecko // imnternet explorer
        //mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/81.0.4044.129 safari/537.36 // chrome
        //mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/70.0.3538.102 safari/537.36 edge/18.18362 // internet edge
        protected void Button2_Click(object sender , EventArgs e)
        {
            
            //_Cookies = cookies.Add("1", "10002");
            //Label1.Text += "Error: "+cookies.ErrorMessage+"<br/>";
            // show save data
            //int i = 0;
            //foreach (string Name in cookies.CookiesName)
            //{
            //    HttpCookie Cookies = new HttpCookie(Name, cookies.CookiesValueEncrypt[i]);
            //    _Cookies.Add(Cookies);
            //    i++;
            //}

            //foreach(HttpCookie httpCookie in _Cookies)
            //{
            //    Response.Cookies.Add(httpCookie);
            //}

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < Request.Files.Count; i++)
            {
                HttpPostedFile postedFile = Request.Files[i];
                if (postedFile.ContentLength > 0)
                {
                    string fileName = System.IO.Path.GetFileName(postedFile.FileName);
                    postedFile.SaveAs(Server.MapPath("~/image/") + fileName);
                }
            }
        }
    }
}