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
            foreach (var Name in Cookies.CookiesName)
            {
                if (Session[Name] != null && Request.Cookies[Name] != null)
                {
                    Session.Remove(Name);
                    HttpCookie myCookie = new HttpCookie(Name);
                    myCookie.Expires = DateTime.Now.AddDays(-7d);
                    Response.Cookies.Add(myCookie);
                }
                else if (Session[Name] != null)
                {
                    Session.Remove(Name);
                }
                else if (Request.Cookies[Name] != null)
                {
                    HttpCookie myCookie = new HttpCookie(Name);
                    myCookie.Expires = DateTime.Now.AddDays(-7d);
                    Response.Cookies.Add(myCookie);
                }
                else
                {
                    Response.Redirect("~/Default");
                }
                //if(Session[Name]!=null)
                //{
                //    Response.Write(Session[Name].ToString() + "<br/>");
                //}

            }
            Response.Redirect("~/Default");

        }
    }
}