using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace B_ERP_CMS
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime d = Convert.ToDateTime("10/17/2020 4:30 PM");
            Response.Write(d.AddMinutes(5));

            //foreach(string s in ConvertIDs("61172,61173,61176,61241,61242,61246,61247,61249,"))
            //{
            //    Response.Write(s + "</br>");
            //}
            string x = "http://sms.softhostit.com/smsapi?api_key=R60007075f4672afee98d6.29165424&type=text&contacts=8801920640620&senderid=8804445629107&msg=OPT";
            if (Uri.IsWellFormedUriString(x, UriKind.Absolute))
            {
                Response.Write("send");
            }
            else
            {
                Response.Write("not send");
            }
        }
        private string[] ConvertIDs(string IDs)
        {
            string[] alIDs = new string[CountIDs(IDs)];
            int index = 0;
            for (int i = 0; i < IDs.Length; i++)
            {
                if (IDs[i] == ',')
                {
                    index++;
                }
                else
                {
                    alIDs[index] += IDs[i];
                }
            }
            return alIDs;
        }
        private int CountIDs(string IDs)
        {
            int count = 0;
            for (int i = 0; i < IDs.Length; i++)
            {
                if (IDs[i] == ',')
                { count++; }
            }
            return count;
        }
    }
}