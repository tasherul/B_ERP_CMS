using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ECMS.WebPage;
using ECMS.Cookies;

namespace B_ERP_CMS
{
    public partial class login : System.Web.UI.Page
    {
        
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        List<HttpCookie> _Cookies = new List<HttpCookie>();
        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            lblResult.Text = "";
            if (txtEmail.Text != "" && txtPassword.Text != "") 
            { 
                ECMS.WebPage.Login login = new ECMS.WebPage.Login(txtEmail.Text, txtPassword.Text);
                if (login.LoginResult)
                {
                    Cookies cookies = new Cookies();
                    if (htmlchkRememberme.Checked)
                        cookies.RememberMe = true;
                    else
                        cookies.RememberMe = false;

                    _Cookies = cookies.Add(login.LoginID, login.RegID, Request.UserAgent.ToString());
                    foreach (HttpCookie httpCookie in _Cookies)
                    {Response.Cookies.Add(httpCookie);
                    }int i = 0;
                    foreach(string Name in cookies.CookiesName)
                    {Session[Name] = cookies.CookiesValueEncrypt[i];i++;}

                    //lblResult.Text = cookies.ErrorMessage;
                    Response.Redirect("~/CMS/");
                }
                else
                {
                    lblResult.Text = string.Format(@"<div class='alert alert-icon-danger' role='alert'>
                                    <i data-feather='alert-circle'></i>
                                       {0}
                                 </div> ", login.ErrorMessage);
                }
            }
        }
    }
}