using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ECMS;
using ECMS.Design;
namespace B_ERP_CMS.CMS
{
    public partial class Design : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if(chkYoutubeEnable.Checked)
            //{ pnlYoutube.Visible = true; }
            //else { pnlYoutube.Visible = false; }
            if(!IsPostBack)
            {
                ECMS.Design.Design de = new ECMS.Design.Design();
                foreach (ListItem li in de.AppsCategorys())
                { ddlCategory.Items.Add(li); }
               
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
           

            
        }


    }
}