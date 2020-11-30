using ECMS.Design;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace B_ERP_CMS.CMS.Template
{
    public partial class htmlCode : System.Web.UI.UserControl
    {
        ECMS.Design.Template template = new ECMS.Design.Template();
        protected void Page_Load(object sender, EventArgs e)
        {
            var TempplateID = Request.Cookies["_temp_id"].Value;
            template.TemplateID = TempplateID;
            MainControl m = template.ShowData();
            //ClientScript.RegisterStartupScript(this.GetType(), "script", template.JsFiles(m.CssJs_ID) + "<script src='../../File/10003/assets/js/jquery.min.js'></script>");
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "Script1", template.JsFiles(m.CssJs_ID));
            // pnlJS.Controls.Add(new LiteralControl(template.JsFiles(m.CssJs_ID)));
            //pnlHeader.Controls.Add(new LiteralControl(template.CssFiles(m.CssJs_ID)));
            string BaseHtml = m.MailHtml;//{0}{1}{2}{3}

            HtmlDesign d = template.ShowHtmlDesign();

            string HeaderImage = string.Format(@"" + d.HeaderImage_HtmlCode, "../../" + d.HeaderImage_DD_ImageLink, d.HeaderImage_DD_AlternateText, d.HeaderImage_DD_Link);
            
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
            for (int i = 0; i < 5; i++)
            {
                HeaderProfile2 += string.Format(@"" + d.HeaderProfile_HtmlCode2, d.HeaderProfile_DD2_Link, d.HeaderProfile_DD2_Name);
            }
            string HeaderProfile = string.Format(@"" + d.HeaderProfile_HtmlCode1, "../../" + d.HeaderProfile_DD1_ImageLink, d.HeaderProfile_DD1_Name, HeaderProfile2);

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

            string HeaderScarch = HeaderImage +"\n\n"+ d.HeaderSearch_HtmlCode + "\n\n" +d.HeaderNotification_HtmlCode2.Replace("{0}", HeaderNotification) + "\n\n"+d.HeaderMessage_HtmlCode2.Replace("{0}", HeaderMessage)+"\n\n" + HeaderProfile+"\n\n";



            string Header = HeaderScarch;
            string Body = "";
            string Layout_Html = "";
            int Layout_Count;
            int index = 1;

            //foreach (DemoPage ContantPage in template.ShowDemoPage())
            //{

            //    int TotalCount = 0;
            //    string HTML_Alert = "NULL";
            //    string HTML_Button = "NULL";
            //    string HTML_CheckBox = "NULL";
            //    string HTML_RadioButton = "NULL";
            //    string HTML_TextBox = "NULL";

            //    if (ContantPage.Alert_ID!="NULL")
            //    {
            //        TotalCount++;
            //        Alert alert = template.ShowAlert(ContantPage.Alert_ID);
            //        HTML_Alert = string.Format(@""+alert.HtmlCode,alert.DefaultData);
            //    }
            //    if (ContantPage.Button_ID != "NULL")
            //    {
            //        TotalCount++;
            //        Buttons button = template.ShowButtons(ContantPage.Button_ID);
            //        HTML_Button = string.Format(@""+button.HtmlCode,button.DefaultData1,button.DefaultData2);
            //    }
            //    if (ContantPage.CheckBox_ID != "NULL")
            //    {
            //        TotalCount++;
            //        CheckBoxs checkBox = template.ShowCheckBoxs(ContantPage.CheckBox_ID);
            //        HTML_CheckBox = string.Format(@""+checkBox.HtmlCode,checkBox.Text,checkBox.Checked,"CheckBox"+ index, "");
            //    }
            //    if (ContantPage.DataTable_ID != "NULL")
            //    {
            //        TotalCount++;
            //        DataTables dataTable = template.ShowDataTable(ContantPage.DataTable_ID);
            //        string HTML = string.Format(@"");
            //    }
            //    if (ContantPage.RadioButton_ID != "NULL")
            //    {
            //        TotalCount++;
            //        RadioButtons radioButton = template.ShowRadioButtons(ContantPage.RadioButton_ID);
            //        HTML_RadioButton = string.Format(@""+radioButton.HtmlCode,radioButton.GroupName,radioButton.Text,"RadioButton"+ index, "");
            //    }
            //    if (ContantPage.TextBox_ID != "NULL")
            //    {
            //        TotalCount++;
            //        TextBoxs textBox = template.ShowTextBoxs(ContantPage.TextBox_ID);
            //        HTML_TextBox = string.Format(@""+textBox.HtmlCode,textBox.PlaceHolder,textBox.Value,"TextBox"+ index);
            //    }
            //    if (ContantPage.Layout_ID != "NULL")
            //    {
            //        Layout layout = template.ShowLayoutData(ContantPage.Layout_ID);
            //        Layout_Count = layout.TotalCode;
            //        Layout_Html += layout.HTML+ 
            //            (HTML_Alert!="NULL"? HTML_Alert:"") +
            //            (HTML_Button != "NULL" ? HTML_Button : "")+
            //            (HTML_CheckBox != "NULL" ? HTML_CheckBox : "")+
            //            (HTML_RadioButton != "NULL" ? HTML_RadioButton : "")+
            //            (HTML_TextBox != "NULL" ? HTML_TextBox : "");
                    

            //    }
            //    index++;
            //}

            BaseHtml = BaseHtml.Replace("{0}", Header);
            BaseHtml = BaseHtml.Replace("{1}", Bar);
            BaseHtml = BaseHtml.Replace("{2}", @"<div class='main'>            <h2> Demo Body</h2>            
<p>1. Show Advance Works.</p>            
<p>2. Show All buttons, label, table, checkbox</p>
<p>3.Some random text..</p></div>");
            BaseHtml = BaseHtml.Replace("{3}", d.Footer_HtmlCode);
            string output = BaseHtml;

            

               pnlBody.Controls.Add(new LiteralControl(output+ template.JsFiles(m.CssJs_ID) + "<script src='../../File/10003/assets/js/jquery.min.js'></script><link href = '../../assets/vendors/font-awesome/css/font-awesome.min.css' rel = 'stylesheet'>"));
        }




    }
}