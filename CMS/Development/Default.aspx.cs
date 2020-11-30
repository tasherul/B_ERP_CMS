using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace B_ERP_CMS.CMS.Development
{
    public partial class Default : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            int _index = 0; string[] Value = new string[((CMSmaster)this.Master).Cookies.CookiesName.Length];
            foreach (var Name in ((CMSmaster)this.Master).Cookies.CookiesName)
            { if (Session[Name] != null || Request.Cookies[Name] != null) { Value[_index] = Session[Name] == null ? Request.Cookies[Name].Value : Session[Name].ToString(); _index++; } else { Response.Redirect("~/login"); } }
            ((CMSmaster)this.Master).AllPageGetData(Value);
            if (!IsPostBack)
            {
                Session["APPID"] = null;
                Session["TEMPLATEID"] = null;
                Session["REGID"] = null;
            }
            if (Request.Cookies["_app_id"] != null)
            {
                string AppID = Request.Cookies["_app_id"].Value;
                string show = "";string subShow = "";
                foreach(DataRow dr in ShowData(AppID).Rows)
                {

                    foreach(DataRow sub_dr in SubShowData(dr["page_id"].ToString()).Rows)
                    {
                        subShow += string.Format(@"<div class='col-md-12'><a href='{0}'><i data-feather='file'></i>{1}</a> </div>", sub_dr["Page_Link"].ToString() == "{##}" ? "../../CMS/Development/Page?SubMain=" + sub_dr["subpage_id"] : sub_dr["Page_Link"], sub_dr["Page_Name"]);
                    }

                    show += string.Format(@"<div class='col-md-4'>
                            <div class='card' style='background-color:#5197ed !important;'>
                                <div class='card-body'>
                                    <div class='icons-list row'>
                                        <div class='col-md-12'><a href='{0}'><i data-feather='chevron-down'></i>{1}</a></div>
                                            {2}
                                    </div>
                                </div>
                            </div>
                        </div>",dr["SubPage"].ToString().ToLower()=="true"?"#":(dr["Page_link"].ToString()=="{##}"? "../../CMS/Development/Page?Main="+dr["page_id"]: dr["Page_link"]),dr["Page_name"], dr["SubPage"].ToString().ToLower()=="true"?subShow:"");
                    subShow = "";
                }
                pnlshow.Controls.Add(new LiteralControl(show));
            }
            else
            {
                Response.Redirect("~/CMS/Develop");
            }
        }

        private DataTable ShowData(string AppID)
        {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CMSTemplate"].ConnectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select * from Development_Page where App_id="+AppID;
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

        protected void btnBack_Click(object sender, EventArgs e)
        {
            var Cookies = "_app_id";
            HttpCookie myCookie = new HttpCookie(Cookies);
            myCookie.Expires = DateTime.Now.AddDays(-7d);
            Response.Cookies.Add(myCookie);
            Response.Redirect("~/CMS/Develop");
        }

        protected void btnPreview_Click(object sender, EventArgs e)
        {
            string AppID = Request.Cookies["_app_id"].Value;
            ECMS.Application apps = new ECMS.Application();
            string RegID = apps.AppID_to_RegID(AppID);
            string TemplateID = apps.AppID_to_TemplateID(AppID);

            Session["APPID"] = AppID;
            Session["TEMPLATEID"] = TemplateID;
            Session["REGID"] = RegID;

            Response.Redirect("~/CMS/Development/view");
        }
    }
}