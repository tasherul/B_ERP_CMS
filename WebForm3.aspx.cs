using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ECMS.Design;
using ECMS;
namespace B_ERP_CMS
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        ECMS.Design.Template template = new ECMS.Design.Template();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var TempplateID = Request.Cookies["_temp_id"].Value;
                template.TemplateID = TempplateID;
                MainControl m = template.ShowData();
               ClientScript.RegisterStartupScript(this.GetType(), "script", template.JsFiles(m.CssJs_ID) + "<script src='../../File/10003/assets/js/jquery.min.js'></script>");
               // //Page.ClientScript.RegisterStartupScript(this.GetType(), "Script1", template.JsFiles(m.CssJs_ID));
               //// pnlJS.Controls.Add(new LiteralControl(template.JsFiles(m.CssJs_ID)));
               // //pnlHeader.Controls.Add(new LiteralControl(template.CssFiles(m.CssJs_ID)));
               // string BaseHtml = m.MailHtml;
               // HtmlDesign d = template.ShowHtmlDesign();
               // string HeaderImage = string.Format(@"" + d.HeaderImage_HtmlCode, "../../" + d.HeaderImage_DD_ImageLink, d.HeaderImage_DD_AlternateText, d.HeaderImage_DD_Link);
               // string HeaderNotification = "";
               // for (int i = 0; i < 5; i++)
               // {
               //     HeaderNotification += string.Format(@"" + d.HeaderNotification_HtmlCode, d.HeaderNotification_DD_Link, d.HeaderNotification_DD_Icon, d.HeaderNotification_DD_Title, d.HeaderNotification_DD_DetailsOrTime);
               // }


               // string HeaderProfile2 = "";
               // for (int i = 0; i < 5; i++)
               // {
               //     HeaderProfile2 += string.Format(@"" + d.HeaderProfile_HtmlCode2, d.HeaderProfile_DD2_Link, d.HeaderProfile_DD2_Name);
               // }
               // string HeaderProfile = string.Format(@"" + d.HeaderProfile_HtmlCode1, "../../" + d.HeaderProfile_DD1_ImageLink, d.HeaderProfile_DD1_Name, HeaderProfile2);

               // string bar2 = "";
               // for (int i = 0; i < 5; i++)
               // {
               //     bar2 += string.Format(@"" + d.BodyBar_HtmlCode2, d.BodyBar_DD2_Link, d.BodyBar_DD2_BarName + (i + 1));// down Bar          
               // }
               // string Bar = "";
               // for (int j = 0; j < 5; j++)
               // {
               //     Bar += string.Format(@"" + d.BodyBar_HtmlCode1, d.BodyBar_DD1_Link, d.BodyBar_DD2_BarName + (j + 1), bar2); // up Bar
               // }

               // string HeaderScarch = HeaderImage + d.HeaderSearch_HtmlCode + HeaderNotification + HeaderProfile;



               // string Header = HeaderScarch;
               // string output = string.Format(@"" + BaseHtml, Header, Bar, "", d.Footer_HtmlCode);



               // pnlBody.Controls.Add(new LiteralControl(output));
                //contant.InnerHtml = output;
            }

        }
    }
}