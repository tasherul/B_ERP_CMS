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
            foreach(string s in ConvertIDs("61172,61173,61176,61241,61242,61246,61247,61249,"))
            {
                Response.Write(s + "</br>");
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