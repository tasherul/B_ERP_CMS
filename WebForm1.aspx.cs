﻿using MySqlX.XDevAPI;
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
using System.Data.SqlClient;
using System.IO;
using ECMS.Design;
using System.Web.ModelBinding;
using Ionic.Zip;
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
            string path_and_file = "LocalDBDataSet.xss";
            Response.Write(GetFileName(path_and_file)+"</br>");
            Response.Write(GetPath(path_and_file));


            d.Key = "design_Go";
            //d.SetDerivationIterations = 119;
            if(Request.QueryString["s"]!=null)
            {
                var s = Request.QueryString["s"].ToString();

                s =s.Replace("%20", " ");
                
                Response.Write(Server.HtmlEncode(s)+"</br>");
                Response.Write(d.Decrypt256bits(s)+ "</br>");            //Response.Write(d.GetDecryptHashCode("zEy5HhzABHYtNUFe05zGbQ=="));

            }
            //Response.Write(xx.place);

            // Response.Write(Notification.timeago("2020-05-04 00:49:59.000", "+06:00",true));
            //Response.Write(Notification.AddNotification("Please verify your email","#",IconDataFeather.mail,"+06:00", "10002"));
            //Response.Write(d.Decrypt256bits("gZD8a4ID/OTyi91NShs9Z5mPLaGK1hlQShBOewxaWQEYlGcxgj8XtY2Qe6SNfbhshL1Oo2FfHpntVGV6c9/skULvhv05R2KDuq9WUyop3fptqTqo1pF/DqLVpvPxr8ai", "design_Go"));
        }
        private string GetFileName(string Path)
        {
            string ReverseName = "";
            for (int i = Path.Length - 1; i >= 0; i--)
            {
                if (Path[i] == '/')
                {
                    break;
                }
                ReverseName += Path[i];
            }
            string OrginalFile = "";
            for (int i = ReverseName.Length - 1; i >= 0; i--)
            {
                OrginalFile += ReverseName[i];
            }
            return OrginalFile;
        }
        private string GetPath(string FullPath)
        {
            string ReversePath = "";
            for (int i = FullPath.Length - 1; i >= 0; i--)
            {
                if (FullPath[i] == '/')
                {
                    ReversePath = FullPath.Substring(0, i+1);
                    break;
                }
            }
            return ReversePath;
        }

        private string OutputFolder(string Path)
        {
            string[] SinglePath_of_Folder = PathFolder(Path);
            string Output="";
            for (int j = 0; j < SinglePath_of_Folder.Length; j++)
            {
                Output += "&#128193;" + SinglePath_of_Folder[j] + Enter();
                for (int k = 0; k < j + 1; k++)
                { Output += "&nbsp;&nbsp;"; }
            }
            Output += "&#128462; File.cs <br/>";

            return Output;
        }
        private string OutputFolder(string[] Path)
        {
            string[] SinglePath_of_Folder = Path;
            string Output = "";
            for (int j = 0; j < SinglePath_of_Folder.Length; j++)
            {
                Output += "&#128193;" + SinglePath_of_Folder[j] + Enter();
                for (int k = 0; k < j + 1; k++)
                { Output += "&nbsp;&nbsp;"; }
            }
            Output += "&#128462; File.cs <br/>";

            return Output;
        }
        private string ArrayToString(string[] Array)
        {
            string output = "";
            foreach(string s in Array)
            { output += s + "/"; }
            return output;
        }
        private string Enter()
        {
            return "<br/>";
        }
        private void Tab()
        {           
            Response.Write("&nbsp;&nbsp;"); 
        }
        private int CountFolder(string Path)
        {
            int count = 0;
            for (int i = 0; i < Path.Length; i++)
            {
                if (Path[i] == '/')
                {
                    count++;
                }
            }
            return count;
        }
        private string[] PathFolder(string Path)
        {
            string[] Folders = new string[CountFolder(Path)];
            string File = ""; int folderid = 0;
            for (int i = 0; i < Path.Length; i++)
            {
                if (Path[i] == '/')
                {
                    Folders[folderid] = File;
                    File = "";
                    folderid++;
                }
                else
                {
                    File += Path[i];
                }
            }
            return Folders;
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
            var Path = Server.MapPath("~/image/12345/");
            if(Directory.Exists(Path))
            {
                
                Response.Write("Create");
            }
            else
            {
                Directory.CreateDirectory(Path);
                Response.Write("Not Create");
            }
            //            var Database_Name = "Design DataBase";
            //            var Data_Source = "DESKTOP-FOOHGE0";
            //            var Initial_Catalog = "CMSTemplate";
            //            var User_ID = "DesginMasterDB01";
            //            var Password = "Pi@sh885989";
            //            var SQLType = "MSSQL";
            //            var Encrypt_Code = "1C1B0DA881D0";
            //            var Datetime = DateTime.Now;
            //            var DI_Key = 119;
            //            Encrypt encrypt = new Encrypt();
            //            encrypt.Key = Encrypt_Code;
            //            encrypt.SetDerivationIterations = DI_Key;
            //            Database_Name = encrypt.Encrypt256bits(Database_Name);
            //            Data_Source = encrypt.Encrypt256bits(Data_Source);
            //            Initial_Catalog = encrypt.Encrypt256bits(Initial_Catalog);
            //            User_ID = encrypt.Encrypt256bits(User_ID);
            //            Password = encrypt.Encrypt256bits(Password);
            //            SQLType = encrypt.Encrypt256bits(SQLType);

            //            Check check = new Check();
            //            check.ExcutionNonQuery(@"insert into System_Database (Database_Name,Data_Source,Initial_Catalog,User_ID,Password,SQLType,Encrypt_Code,DI_Key,Datetime) 
            //values('"+Database_Name+"','"+Data_Source+"','"+Initial_Catalog+"','"+User_ID+"','"+Password+"','"+SQLType+"','"+Encrypt_Code+"',"+DI_Key+",'"+Datetime+"' ) ");
            //            Response.Write(check.Messege);
            // // Label1.Text = Session["s"].ToString();
            // int i = 0;
            //foreach (string httpCookie in cookies.CookiesName)
            // {
            //     Label1.Text += cookies.CookiesName[i]+" : "+ Request.Cookies[httpCookie].Value+"<br/>";
            //     i++;
            // }
            //Response.Write(Request.Browser.IsMobileDevice+"<br/>"+ Request.UserAgent.ToString()+"</br>"+ HttpContext.Current.Request.ServerVariables["HTTP_USER_AGENT"].ToString());
            //int start = 0, end = 0,length=0;bool lengths = false;
            //string version = Request.UserAgent.ToString();
            //for (int i = 0; i < version.Length; i++)
            //{
            //    if (version[i] == '(')
            //    { start = i+1;lengths = true; }                
            //    if(version[i]==')')
            //    { lengths = false; end = i;break; }
            //    if (lengths) { length++; }
            //}
            //var newVersion = version.Substring(start, length - 1);

            //Response.Write(newVersion);
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

        protected void btnUpload_Click1(object sender, EventArgs e)
        {
            string extractPath = Server.MapPath("~/File/");
            using (ZipFile zip = ZipFile.Read(FileUpload1.PostedFile.InputStream))
            {
                //zip.ExtractAll(extractPath, ExtractExistingFileAction.DoNotOverwrite);
                
                GridView1.DataSource = zip.Entries;
                GridView1.DataBind();
                ZipEntry s = new ZipEntry();
                foreach(ZipEntry z in zip.Entries)
                {
                    z.Extract(extractPath, ExtractExistingFileAction.DoNotOverwrite);
                }
                
            }
        }

    }
}