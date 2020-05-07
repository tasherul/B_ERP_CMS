using ECMS.WebPage;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace B_ERP_CMS.CMS
{
    public partial class Profile : System.Web.UI.Page
    {
        string Icon_OK = "<i data-feather='check' style='color:darkseagreen; width:17px; height:17px;'></i>";
        string Icon_Circle_OK = "<i data-feather='check-circle' style='color:darkseagreen; width:17px; height:17px;'></i>";
        string Icon_Error = "<i data-feather='alert-triangle' style='color:red; width:17px; height:17px;'></i>";
        int persentage=0;
        Notification __Notification = new Notification();
        protected void Page_Load(object sender, EventArgs e)
        {
            int _index = 0; string[] Value = new string[((CMSmaster)this.Master).Cookies.CookiesName.Length];
            foreach (var Name in ((CMSmaster)this.Master).Cookies.CookiesName)
            { if (Session[Name] != null || Request.Cookies[Name] != null) { Value[_index] = Session[Name] == null ? Request.Cookies[Name].Value : Session[Name].ToString(); _index++; } else { Response.Redirect("../login"); } }
            ((CMSmaster)this.Master).AllPageGetData(Value);
            if (!IsPostBack)
            {
                int InstallApps = 0;
                lblMobileNumber.Text = ((CMSmaster)this.Master).Mobile;
                lblDiscription.Text = ((CMSmaster)this.Master).Discription;
                lblApps.Text = ((CMSmaster)this.Master).Max_Apps.ToString() + " of "+ InstallApps;
                lblEmail.Text = ((CMSmaster)this.Master).Email;
                lblEmailEncrypt.Text = emailEncrypt(((CMSmaster)this.Master).Email);
                DateTime _Jodindate = Convert.ToDateTime(((CMSmaster)this.Master).JoinDate);
                lblJoinDate.Text = _Jodindate.ToString("dd MMMM yyyy")+"<br/><sup>"+ __Notification.timeago(((CMSmaster)this.Master).JoinDate, ((CMSmaster)this.Master).Offset, true)+ "</sup>";
                lblMobileNumber.Text = ((CMSmaster)this.Master).Mobile;
                lblName.Text = ((CMSmaster)this.Master).FirstName + " " + ((CMSmaster)this.Master).LastName;
                lblOnlineStatus.Text = ((CMSmaster)this.Master).Active;
                lblRegionCountry.Text = ((CMSmaster)this.Master).Region + "," + ((CMSmaster)this.Master).Country;
                lblWebsite.Text = ((CMSmaster)this.Master).Website;
                ProfileImage.ImageUrl = "../"+((CMSmaster)this.Master).Profileimage;
                ProfileImage.AlternateText= ((CMSmaster)this.Master).FirstName + " " + ((CMSmaster)this.Master).LastName;
                lblIconEmail.Text = ((CMSmaster)this.Master).EmailVerify == "true" || ((CMSmaster)this.Master).EmailVerify == "True" ? Icon_Circle_OK : Icon_Error;
                lblIconMaximamApps.Text = ((CMSmaster)this.Master).Discription!="" && ((CMSmaster)this.Master).Region!="" && ((CMSmaster)this.Master).EmailVerify=="true" && ((CMSmaster)this.Master).MobileVerify=="true"?Icon_OK:Icon_Error;
                lblIconMobile.Text = ((CMSmaster)this.Master).MobileVerify == "true" || ((CMSmaster)this.Master).MobileVerify == "True" ? Icon_Circle_OK : Icon_Error;
                lblIconOnlineState.Text = ((CMSmaster)this.Master).Active == "Online" || ((CMSmaster)this.Master).Active == "online" ? Icon_OK : Icon_Error;
                persentage = 0;int point = 0;int total = 4;
                if(((CMSmaster)this.Master).EmailVerify == "true" || ((CMSmaster)this.Master).EmailVerify == "True")
                { point++; }
                if(((CMSmaster)this.Master).MobileVerify == "true" || ((CMSmaster)this.Master).MobileVerify == "True")
                { point++; }
                if (((CMSmaster)this.Master).Discription != "" || ((CMSmaster)this.Master).Discription != null)
                { point++; }
                if(((CMSmaster)this.Master).Region !="" || ((CMSmaster)this.Master).Region!=null)
                { point++; }
                persentage = (point * 100) / total;
                lblProfileComplete.Text = @"<div class='progress'><div class='progress-bar' role='progressbar' style='width: " + persentage + "%;' aria-valuenow='" + persentage + "' aria-valuemin='0' aria-valuemax='100'>" + persentage + "%</div></div>";
                lblIconProfileComplete.Text = persentage == 100 ? Icon_Circle_OK : Icon_Error;
            }
        }
        private string emailEncrypt(string email)
        {
            var str = email;
            int max = 0;
            for(int i=0;i< str.Length;i++)
            {
                if(str[i]=='@')
                { max = i;break; }
            }
            return str.Length>10? str.Substring(0, 2) + "******" + str.Substring(max-3,3)+str.Substring(max):"Error Email";
        }
    }
}