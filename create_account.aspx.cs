using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using ECMS;
using ECMS.WebPage;
using ECMS.Cookies;
namespace B_ERP_CMS
{
    public partial class create_account : System.Web.UI.Page
    {
        Registation reg = new Registation();
        ECMS.StringGenarator _Random = new StringGenarator();
        private static string Country_Messege = "Please type your country mobile number currectly and send otp?";
        protected void Page_Load(object sender, EventArgs e)
        {
            reg.Bind();
            lblFlag.Controls.Add(new LiteralControl("<i class='form-control col-md-2 flag-icon flag-icon-" + reg.CountryCode_Output.ToLower()+"'  style='border: 0px; cursor: pointer; ' data-toggle='popover' title='"+reg.Country_Output+"' data-content='"+Country_Messege+"'></i>"));
            txtMobileCode.Text = reg.MobileCode_Output;
        }

        List<HttpCookie> _Cookies = new List<HttpCookie>();
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            bool email = reg.Email_Avaiable(txtEmail.Text);
            bool username = reg.UserName_Avaiable(txtUserName.Text);
            bool mobile = reg.Mobile_Avaiable(txtMobileCode.Text+txtMobileNumber.Text);
            lblUserNameAvaility.Text = reg.UserNameIcon;
            lblEmailAvaiable.Text = reg.EmailIcon;
            lblMobileVerify.Text = reg.MobileIcon;
            lblPassword.Text = reg.PasswordStrongMessege(txtPassword.Text);
            if(email && username && mobile)
            {
                reg.Input_Email = txtEmail.Text;
                reg.Input_FirstName = txtFirstName.Text;
                reg.Input_Mobile = txtMobileCode.Text+ txtMobileNumber.Text;
                reg.Input_Packege = "free";
                reg.Input_Password = txtPassword.Text;
                reg.Input_SureName = txtSureName.Text;
                reg.Input_UserName = txtUserName.Text;
                if (reg.Reg())
                {
                    Cookies cookies = new Cookies();
                    _Cookies = cookies.Add(reg.LoginID, reg.RegID, Request.UserAgent.ToString());

                    foreach (HttpCookie httpCookie in _Cookies)
                    {Response.Cookies.Add(httpCookie);
                    }int i = 0;
                    foreach (string Name in cookies.CookiesName)
                    {Session[Name] = cookies.CookiesValueEncrypt[i]; i++;}
                    //lblResult.Text += "1="+ reg.Message;

                    Notification notification = new Notification();
                    notification.AddNotification("Verify your Email Address.", "../EmailVerify", IconDataFeather.mail,reg.Offset,reg.RegID);
                     
                        //lblResult.Text += "2="+reg.RegID+"/ " + notification.ErrorMessage;
                    
                    EMAIL mAIL = new EMAIL();
                    mAIL.Subject = "Email Confirmation";
                    mAIL.Messege = "please verify your email. please click http://" + Request.Url.AbsoluteUri.ToString().Replace("create_account", "EmailVerify") + "?=" + reg.EmailCode;
                    mAIL.Email = txtEmail.Text;
                    //mAIL.Mail();

                    



                    Response.Redirect("~/CMS/");
                }
                else
                    lblResult.Text = reg.Message;

            }
        }
    }
    
}