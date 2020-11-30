using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ECMS.Design;
using ECMS;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace B_ERP_CMS.CMS.Development
{
    public partial class htmlCode : System.Web.UI.UserControl
    {
        ECMS.Design.Template template = new ECMS.Design.Template();
        Check_pv chk = new Check_pv();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["APPID"] != null && Session["TEMPLATEID"] != null && Session["REGID"] != null)
            {

                var TempplateID = Session["TEMPLATEID"].ToString();
                template.TemplateID = TempplateID;
                MainControl m = template.ShowData();
                string AppID = Session["APPID"].ToString();

                string BaseHtml = m.MailHtml;//{0}{1}{2}{3}

                HtmlDesign d = template.ShowHtmlDesign();
                string ImageLink=chk.stringCheck("select Logo from Development_Settings where App_id="+ AppID);
                string HeaderImage = string.Format(@"" + d.HeaderImage_HtmlCode, "../../" + ImageLink, d.HeaderImage_DD_AlternateText, d.HeaderImage_DD_Link);

                string HeaderNotification = "";
                for (int i = 0; i < 5; i++)
                {
                    HeaderNotification += string.Format(@"" + d.HeaderNotification_HtmlCode, d.HeaderNotification_DD_Link, d.HeaderNotification_DD_Icon, d.HeaderNotification_DD_Title, d.HeaderNotification_DD_DetailsOrTime);
                }

                string HeaderMessage = "";
                for (int i = 0; i < 5; i++)
                {
                    HeaderMessage += string.Format(@"" + d.HeaderMessage_HtmlCode, d.HeaderMessage_DD_Link, d.HeaderMessage_DD_ImageLink, d.HeaderMessage_DD_Title, d.HeaderMessage_DD_DetailsOrTime);
                }

                string HeaderProfile2 = "";
                for (int i = 0; i < 1; i++)
                {
                    HeaderProfile2 += string.Format(@"" + d.HeaderProfile_HtmlCode2, "../CMS/Development/", "Logout");
                }
                string ProfileImageLink = chk.stringCheck("select Profile_pic from Development_Settings where App_id=" + AppID);
                string HeaderProfile = string.Format(@"" + d.HeaderProfile_HtmlCode1, "../../" + ProfileImageLink, d.HeaderProfile_DD1_Name, HeaderProfile2);

                string bar2 = "";
                for (int i = 0; i < 5; i++)
                {
                    bar2 += string.Format(@"" + d.BodyBar_HtmlCode2, d.BodyBar_DD2_Link, d.BodyBar_DD2_BarName + (i + 1));// down Bar          
                }
                string Bar = "";
                for (int j = 0; j < 5; j++)
                {
                    Bar += string.Format(@"" + d.BodyBar_HtmlCode1, d.BodyBar_DD1_Link, d.BodyBar_DD2_BarName + (j + 1), bar2); // up Bar
                }

                string sub = ""; string main = "";
                foreach (DataRow dr in ShowData(AppID).Rows)
                {
                    sub = "";
                    foreach (DataRow sub_dr in SubShowData(dr["page_id"].ToString()).Rows)
                    {
                        if (sub_dr["Page_Name"].ToString() != "Default")
                        { sub += string.Format(@"" + d.BodyBar_HtmlCode2, "?SubMain=" + sub_dr["subpage_id"], sub_dr["Page_Name"]); }
                    }
                    if (dr["Page_name"].ToString() != "Default")
                        main += string.Format(@"" + d.BodyBar_HtmlCode1, dr["SubPage"].ToString().ToLower() == "true" ? "#" : (dr["Page_link"].ToString() == "{##}" ? "?Main=" + dr["page_id"] : dr["Page_link"]), dr["Page_name"], dr["SubPage"].ToString().ToLower() == "true" ? sub : "");
                    else
                        main += string.Format(@"" + d.BodyBar_HtmlCode1,"?Main="+ dr["page_id"], "Dashboard","");
                }

                    string HeaderScarch = HeaderImage + "\n\n" + d.HeaderSearch_HtmlCode + "\n\n" + d.HeaderNotification_HtmlCode2.Replace("{0}", HeaderNotification) + "\n\n" + d.HeaderMessage_HtmlCode2.Replace("{0}", HeaderMessage) + "\n\n" + HeaderProfile + "\n\n";



                string Header = HeaderScarch;
                string Body = "";
                string Layout_Html = "";
                int Layout_Count;
                int index = 1;
                string Default_ID = chk.stringCheck("select page_id from Development_Page where Page_name='Default' and App_id="+ AppID);
                Body = chk.stringCheck("select PageBody from Developed_Page where Main="+Default_ID);

                BaseHtml = BaseHtml.Replace("{0}", Header);
                BaseHtml = BaseHtml.Replace("{1}", main);
                
                if (Request.QueryString["Main"]!=null)
                {
                    Body = chk.stringCheck("select PageBody from Developed_Page where Main="+ Request.QueryString["Main"].ToString());
                    if (Body == "Object reference not set to an instance of an object.")
                        Body = "This Page is Not Developed.";
                }
                if (Request.QueryString["SubMain"] != null)
                {
                    Body = chk.stringCheck("select PageBody from Developed_Page where SubMain=" + Request.QueryString["SubMain"].ToString());
                    if (Body == "Object reference not set to an instance of an object.")
                        Body = "This Page is Not Developed.";
                }
                BaseHtml = BaseHtml.Replace("{2}", Body);
                BaseHtml = BaseHtml.Replace("{3}", d.Footer_HtmlCode);
                string output = BaseHtml;



                pnlBody.Controls.Add(new LiteralControl(output + template.JsFiles(m.CssJs_ID) + "<script src='../../File/10003/assets/js/jquery.min.js'></script><link href = '../../assets/vendors/font-awesome/css/font-awesome.min.css' rel = 'stylesheet'>"));
            }
            else
            {
                Response.Redirect("../CMS/Development");
            }
        }



        private DataTable ShowData(string AppID)
        {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CMSTemplate"].ConnectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select * from Development_Page where App_id=" + AppID;
            con.Open();
            SqlDataAdapter dr = new SqlDataAdapter(cmd);
            con.Close();
            dr.Fill(dt);
            return dt;

        }
        private DataTable SubShowData(string PageID)
        {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CMSTemplate"].ConnectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select * from Development_SubPage where page_id=" + PageID;
            con.Open();
            SqlDataAdapter dr = new SqlDataAdapter(cmd);
            con.Close();
            dr.Fill(dt);
            return dt;

        }

    }
}