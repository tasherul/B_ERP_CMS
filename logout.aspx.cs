using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ECMS.Cookies;

namespace B_ERP_CMS
{
    public partial class logout : System.Web.UI.Page
    {
        Cookies Cookies = new Cookies();
        protected void Page_Load(object sender, EventArgs e)
        {
            string[] cVal = new string[Cookies.CookiesName.Length];
            int _index = 0;
            foreach (var Name in Cookies.CookiesName)
            {

                if (Session[Name] != null && Request.Cookies[Name] != null)
                {
                    cVal[_index] = Session[Name].ToString();
                    Session[Name] = null;
                    HttpCookie myCookie = new HttpCookie(Name);
                    myCookie.Expires = DateTime.Now.AddDays(-7d);
                    Response.Cookies.Add(myCookie);
                }
                else if (Session[Name] != null)
                {
                    cVal[_index] = Session[Name].ToString();
                    Session[Name] = null;
                }
                else if (Request.Cookies[Name] != null)
                {
                    cVal[_index] = Request.Cookies[Name].Value;
                    HttpCookie myCookie = new HttpCookie(Name);
                    myCookie.Expires = DateTime.Now.AddDays(-7d);
                    Response.Cookies.Add(myCookie);
                }
                else
                {
                    Response.Redirect("~/Default");
                }
                if (Session[Name] != null)
                {
                    Response.Write(Session[Name].ToString() + "<br/>");
                }
                _index++;
            }
            if(Cookies.loginClear(cVal))
            {
                Response.Redirect("~/Default");
            }
            

        }
    }
}