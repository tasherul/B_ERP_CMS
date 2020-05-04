using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace B_ERP_CMS
{
    public partial class OTP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        static bool b = false;
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //ClientScript.RegisterClientScriptBlock(this.GetType(), "SomeThing", "startTimer(7);", true);
             ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", "startTimerd();", true); 
            
            
        }
    }
}