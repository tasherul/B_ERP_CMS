using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ECMS.Design;
using ECMS;
using System.Web.Services;
using System.Web.Mvc;

namespace B_ERP_CMS.CMS.Development
{
    public partial class view : System.Web.UI.Page
    {
        ECMS.Design.Template template = new ECMS.Design.Template();
        protected void Page_Load(object sender, EventArgs e)
        {

            if(Session["APPID"] !=null && Session["TEMPLATEID"] != null && Session["REGID"] != null)
            {
                var TempplateID = Session["TEMPLATEID"].ToString();
                template.TemplateID = TempplateID;
                MainControl m = template.ShowData();
                ClientScript.RegisterStartupScript(this.GetType(), "script", template.JsFiles(m.CssJs_ID) + "<script src='../../File/10003/assets/js/jquery.min.js'></script>");



                pnlHeader.Controls.Add(new LiteralControl(template.CssFiles(m.CssJs_ID)));
            }
            else
            {
                Response.Redirect("~/CMS/Development");
            }


        }

        
     

    }
}