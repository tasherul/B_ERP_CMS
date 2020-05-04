using System;
using System.Collections.Generic;
using System.IO.Ports;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace B_ERP_CMS.CMS
{
    public partial class Default : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            //int _index = 0; string[] Value = new string[((CMSmaster)this.Master).Cookies.CookiesName.Length];
            //foreach (var Name in ((CMSmaster)this.Master).Cookies.CookiesName)
            //{Value[_index] = Session[Name] == null ? Request.Cookies[Name].Value : Session[Name].ToString();_index++; }
            //((CMSmaster)this.Master).AllPageGetData(Value);
            //Label1.Text = ((CMSmaster)this.Master).FirstName;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }
    }
}