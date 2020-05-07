using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ECMS;
using ECMS.WebPage;

namespace B_ERP_CMS.CMS
{
    public partial class Settings : System.Web.UI.Page
    {
        Registation registation = new Registation();
        UpdateClasses d = new UpdateClasses();
        protected void Page_Load(object sender, EventArgs e)
        {
            int _index = 0; string[] Value = new string[((CMSmaster)this.Master).Cookies.CookiesName.Length];
            foreach (var Name in ((CMSmaster)this.Master).Cookies.CookiesName)
            { if (Session[Name] != null || Request.Cookies[Name] != null) { Value[_index] = Session[Name] == null ? Request.Cookies[Name].Value : Session[Name].ToString(); _index++; } else { Response.Redirect("../login"); } }
            ((CMSmaster)this.Master).AllPageGetData(Value);
            if(!IsPostBack)
            {
                txtFastName.Text = ((CMSmaster)this.Master).FirstName;
                txtLastName.Text = ((CMSmaster)this.Master).LastName;
                txtRegion.Text = ((CMSmaster)this.Master).Region;
                txtWebsite.Text = ((CMSmaster)this.Master).Website;
                txtDiscription.Value = ((CMSmaster)this.Master).Discription;
                chkEmailShow.Checked = ((CMSmaster)this.Master).EmailShow;
                chkMobileShow.Checked = ((CMSmaster)this.Master).NumberShow;
                ddlMode.SelectedValue = ((CMSmaster)this.Master).Active;
            }           
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if(txtDiscription.Value!=null && txtFastName.Text!="" && txtLastName.Text!=null && txtRegion.Text!=null)
            d.Active = ddlMode.SelectedValue.ToString();
            d.FirstName = txtFastName.Text;
            d.LastName = txtLastName.Text;
            d.Website = txtWebsite.Text=="" || txtWebsite.Text==null?"null":txtWebsite.Text;
            d.Region = txtRegion.Text;
            d.Discription = txtDiscription.Value;
            d.EmailShow = chkEmailShow.Checked ? true : false;
            d.MobileShow = chkMobileShow.Checked ? true : false;
            d.RegID = ((CMSmaster)this.Master).RegID;
            if (registation.UpdateDetails(d))
            {
                lblResult.Text = "<div class='alert alert-success'> Saved.</div>";
                
            }
            else
            {
                lblResult.Text = "<div class='alert alert-danger'>"+registation.Message+"</div>";
            }

        }
    }
}