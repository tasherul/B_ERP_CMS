using ECMS;
using ECMS.Cookies;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace B_ERP_CMS
{
    public partial class app_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["APPID"] = null;
                Session["TEMPLATEID"] = null;
                Session["REGID"] = null;
            }
        }
        List<HttpCookie> _Cookies = new List<HttpCookie>();
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if(txtEmail.Text!="" && txtPassword.Text!="")
            {
                Check_pv chk = new Check_pv();
                if(chk.int32Check("select count(*) from Development_Settings where UserName='"+txtEmail.Text+"' and Password='"+txtPassword.Text+"' ") > 0)
                {
                    string app_id = chk.stringCheck("select App_id from Development_Settings where UserName='" + txtEmail.Text + "' and Password='" + txtPassword.Text + "' ");
                    chk.ConnectionString("ERCMSMainDB");
                    string reg_id = chk.stringCheck("select RegID from System_Apps where App_Id="+ app_id);
                    string template_id = chk.stringCheck("select Template_Id from System_Apps where App_Id=" + app_id);
                    Session["APPID"] = app_id;
                    Session["TEMPLATEID"] = reg_id;
                    Session["REGID"] = template_id;
                    string loging_id = chk.stringCheck("slect Login_ID from Login Reg_ID="+ reg_id);
                    HttpCookie AddnewCookies = new HttpCookie("_app_id", template_id);
                    Response.Cookies.Add(AddnewCookies);

                    Cookies cookies = new Cookies();
                    _Cookies = cookies.Add(loging_id, reg_id, Request.UserAgent.ToString());
                    foreach (HttpCookie httpCookie in _Cookies)
                    {
                        Response.Cookies.Add(httpCookie);
                    }
                    int i = 0;
                    foreach (string Name in cookies.CookiesName)
                    { Session[Name] = cookies.CookiesValueEncrypt[i]; i++; }

                    Response.Redirect("~/CMS/Development/view");
                }
                else
                {
                    lblResult.Text = "Type Username/ Password invaild.";
                }
            }
            else
            {
                lblResult.Text = "Type Username and Password.";
            }
        }
    }
}