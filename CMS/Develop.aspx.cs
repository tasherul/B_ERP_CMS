using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Security.AccessControl;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ECMS;
using ECMS.Design;
using ECMS.WebPage;

namespace B_ERP_CMS.CMS
{
    public partial class Develop : System.Web.UI.Page
    {
        Encrypt _enc = new Encrypt();
        Decrypt _dec = new Decrypt();
        Notification Notification = new Notification();
        ECMS.Design.Design design = new ECMS.Design.Design();
        ECMS.Design.Design de = new ECMS.Design.Design();
        DesignDetails d = new DesignDetails();
        Application apps = new Application();
        Apps_Development a = new Apps_Development();
        string E_key = "design_Edit";
        string G_Key = "design_Go";
        string D_Key = "design_Delete";
        static string Update_Image;
        static double Update_ImageSize;
        public static string current_APP_ID { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            int _index = 0; string[] Value = new string[((CMSmaster)this.Master).Cookies.CookiesName.Length];
            foreach (var Name in ((CMSmaster)this.Master).Cookies.CookiesName)
            { if (Session[Name] != null || Request.Cookies[Name] != null) { Value[_index] = Session[Name] == null ? Request.Cookies[Name].Value : Session[Name].ToString(); _index++; } else { Response.Redirect("../login"); } }
            ((CMSmaster)this.Master).AllPageGetData(Value);
            if (Request.Cookies["_app_id"] != null)
            {
                Response.Redirect("~/CMS/Development/");
            }

            if (!IsPostBack)
            {
                ViewTemplate();
                foreach (ListItem li in de.AppsCategorys())
                { ddlCategory.Items.Add(li); }
                foreach (ListItem li in apps.UserTemplate(((CMSmaster)this.Master).RegID))
                { ddlTemplate.Items.Add(li); }
                //pnlImage.Visible = false;
                btnUpdate.Visible = false;
                btnTemplate.Visible = true;
                Image1.Visible = false;
                if (Request.QueryString["e"] != null)
                {
                    var EncTempID = Request.QueryString["e"].ToString();
                    EncTempID = EncTempID.Replace(" ", "+");
                    _dec.DecryptCode = E_key;
                    var TemplateID = _dec.GetDecryptHashCode(EncTempID);
                    current_APP_ID = TemplateID;
                    if (apps.AvaiabDevelop(TemplateID))
                    {
                        //Response.Write(current_APP_ID);
                        a = apps.GetSignleDevelopmentData(TemplateID);
                        txtDiscription.Text = a.Discription;
                        txtPrice.Text = a.Price.ToString();
                        txttags.Text = a.Tag;
                        txtTitle.Text = a.Title;
                        txtYoutuleLink.Text = a.YoutubeVideoLink;
                        chkPublicMode.Checked = a.PublicMode;
                        chkSEO.Checked = a.SEO;
                        chkSpeedOptimization.Checked = a.SpeedOptimization;
                        chkSupport.Checked = a.Support;
                        chkTesting.Checked = a.Testing;
                        chkVersionUpdate.Checked = a.VersionUpgrade;
                        btnTemplate.Visible = false;
                        btnUpdate.Visible = true;
                        Image1.Visible = true;
                        Image1.ImageUrl = "../../" + a.imgaePath;
                        Update_Image = a.imgaePath;
                        Update_ImageSize = a.imageSize;
                        ddlCategory.SelectedValue = a.App_Category_Id;
                        ddlTemplate.SelectedValue = a.Template_Id;
                    }
                    else
                    {
                        Response.Redirect("~/500");
                    }
                }
                if (Request.QueryString["g"] != null)
                {
                    string EncTempID = Request.QueryString["g"].ToString();
                    EncTempID = EncTempID.Replace(" ", "+");
                    _dec.DecryptCode = G_Key;
                    string TemplateID = _dec.GetDecryptHashCode(EncTempID);
                    if (apps.AvaiabDevelop(TemplateID))
                    {
                        HttpCookie AddnewCookies = new HttpCookie("_app_id", TemplateID);
                        Response.Cookies.Add(AddnewCookies);
                        Response.Redirect("~/CMS/Development/");
                    }
                    else
                    {
                        //Response.Redirect("~/500");
                    }
                }
                if (Request.QueryString["d"] != null)
                {
                    var EncTempID = Request.QueryString["d"].ToString();
                    EncTempID = EncTempID.Replace(" ", "+");
                    _dec.DecryptCode = D_Key;
                    var App_ID = _dec.GetDecryptHashCode(EncTempID);
                    if (apps.AvaiabDevelop(App_ID))
                    {
                        if (apps.DeleteApplication(App_ID))
                        {
                            lblResult.Text = "<div class='alert alert-success'> Development Deleted. </div>";
                            File.Delete(Server.MapPath("~/" + apps.ImagePath_forDelete));
                        }
                        else
                        {
                            lblResult.Text = "<div class='alert alert-success'>" + design.ErrorMessege + "</div>";
                            Response.Redirect("~/CMS/Develop");
                        }
                    }
                    else
                    {
                        Response.Redirect("~/500");
                    }
                }



            }

        }
        private void ViewTemplate()
        {
            pnlDevelop.Controls.Clear(); string html = "";
            foreach (Apps_Development details in apps.GetDevelopmentData(((CMSmaster)this.Master).RegID))
            {
                html += string.Format(@"<div class='card-body'>
                            <div class='row'>
                                <div class='col-md-4'>
                                    <img src='{5}' width='100%'  /></div>
                                <div class='col-md-8'>
                                    <h4 class='card-title'>{0}</h4>
                            <code><sub>{6}</sub></code>
                            <p class='card-description text-justify'>{1}</p>
                            <a href='../CMS/Develop?e={2}' class='btn btn-primary active' > Edit Details</a>
                            <a href='../CMS/Develop?g={3}' class='btn btn-success active'>Development</a>
                            <a href='../CMS/Develop?d={4}' class='btn btn-danger active' onclick='return confirm('Are you sure you want to delete this item?'); '>Delete</a>
                                 </div>
                            </div>
                            
                        </div>", details.Title.Length > 38 ? details.Title.Substring(0, 38) + ".." : details.Title,
                    details.Discription.Length > 150 ? details.Discription.Substring(0, 150) + "..." : details.Discription,
                    _enc.HashCode(details.App_Id, E_key),
                    _enc.HashCode(details.App_Id, G_Key),
                    _enc.HashCode(details.App_Id, D_Key),
                    "../../" + details.imgaePath,
                    Notification.timeago(details.OpenDate, ((CMSmaster)this.Master).Offset, true));
            }
            pnlDevelop.Controls.Add(new LiteralControl(html));
        }

        protected void btnTemplate_Click(object sender, EventArgs e)
        {
            if (txtTitle.Text != "" && txtDiscription.Text != "" && FileUpload1.HasFile)
            {
                string FileName = FileUpload1.FileName.ToLower();
                string Extension = Path.GetExtension(FileName);
                if (Extension == ".jpg" || Extension == ".jpeg" || Extension == ".png")
                {
                    double fileSize = FileUpload1.PostedFile.ContentLength;
                    if (fileSize <= 2097152)
                    {
                        if (de.AppsPermision(((CMSmaster)this.Master).RegID))
                        {
                            fileSize = fileSize / 1024;//bytes to kilobytes
                            var localPath = "image/" + ((CMSmaster)this.Master).RegID + "/";
                            var Path = Server.MapPath("~/" + localPath);
                            StringGenarator random = new StringGenarator();
                            ECMS.WebPage.Settings settings = new ECMS.WebPage.Settings();
                            random.Number = true;
                            random.ApperCase = true;
                            random.LowerCase = true;
                            random.TotalString = settings.Get_InValue_Settings(10003);
                            string ImageName = random.RandomStringNumber("trmplateImage");
                            if (Directory.Exists(Path))
                            {
                                //-------- output
                                Output(localPath + ImageName + Extension, fileSize);                                
                            }
                            else
                            {
                                Directory.CreateDirectory(Path);
                                //---------- output
                                Output(localPath + ImageName + Extension, fileSize);
                            }
                        }
                        else
                        {
                            lblResult.Text = "<div class='alert alert-danger'>You are already insert Maximum Appication you can not add more applicaion. Add more Application<a href='#'> Click here </a> </div>";
                        }
                    }
                    else
                    {
                        lblResult.Text = "<div class='alert alert-danger'>Upload Maximum 2MB image file.</div>";
                    }
                }
                else
                {
                    lblResult.Text = "<div class='alert alert-danger'>Upload your template image in *jpg *jpeg .png formate.</div>";
                }
            }
            else
            {
                lblResult.Text = "<div class='alert alert-danger'>Must be need title and discription to tenplate.</div>";
            }
        }
        private void Output(string Path, double Size)
        {

            if (apps.Insert_Development(new Apps_Development()
            {
                RegID = ((CMSmaster)this.Master).RegID,
                Template_Id = ddlTemplate.SelectedValue.ToString(),
                Title = txtTitle.Text,
                Discription = txtDiscription.Text,
                App_Category_Id = ddlCategory.SelectedValue.ToString(),
                CategoryName = ddlCategory.SelectedItem.ToString(),
                Tag = txttags.Text,
                Price = Convert.ToDouble(txtPrice.Text.Replace("$", "")),
                YoutubeVideoEnable = txtYoutuleLink.Text == "" ? false : true,
                YoutubeVideoLink = txtYoutuleLink.Text,

                Offset = ((CMSmaster)this.Master).Offset,
                
                SEO = chkSEO.Checked ? true : false,
                VersionUpgrade = chkVersionUpdate.Checked ? true : false,
                SpeedOptimization = chkSpeedOptimization.Checked ? true : false,
                Support = chkSupport.Checked ? true : false,                
                Testing = chkTesting.Checked ? true : false,
                
                
                imageSize = Size,
                imgaePath = Path,
                PublicMode = chkPublicMode.Checked ? true : false
            }))
            {
                FileUpload1.SaveAs(Server.MapPath("~/" + Path));
                lblResult.Text = "";
                _enc.EncryptCode = G_Key;
                Notification.AddNotification("New Application is Create", "../../CMS/Develop?g=" + _enc.HashCode(apps.App_ID, G_Key), IconDataFeather.file, ((CMSmaster)this.Master).Offset, ((CMSmaster)this.Master).RegID);
                HttpCookie AddnewCookies = new HttpCookie("_app_id", apps.App_ID);
                Response.Cookies.Add(AddnewCookies);
                Response.Redirect("~/CMS/Development/");

            }
            else
            {
                lblResult.Text = "<div class='alert alert-danger'>" + design.ErrorMessege + "</div>";
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (txtTitle.Text != "" && txtDiscription.Text != "")
            {
                if (FileUpload1.HasFile)
                {
                    string FileName = FileUpload1.FileName.ToLower();
                    string Extension = Path.GetExtension(FileName);
                    if (Extension == ".jpg" || Extension == ".jpeg" || Extension == ".png")
                    {
                        double fileSize = FileUpload1.PostedFile.ContentLength;
                        if (fileSize <= 2097152)
                        {
                            if (true)
                            {
                                fileSize = fileSize / 1024;//bytes to kilobytes
                                var localPath = "image/" + ((CMSmaster)this.Master).RegID + "/";
                                var Path = Server.MapPath("~/" + localPath);
                                StringGenarator random = new StringGenarator();
                                ECMS.WebPage.Settings settings = new ECMS.WebPage.Settings();
                                random.Number = true;
                                random.ApperCase = true;
                                random.LowerCase = true;
                                random.TotalString = settings.Get_InValue_Settings(10003);
                                string ImageName = random.RandomStringNumber("trmplateImage");
                                if (Directory.Exists(Path))
                                {
                                    //-------- output
                                    UpdateOutput(localPath + ImageName + Extension, fileSize);
                                    FileUpload1.SaveAs(Server.MapPath("~/" + localPath + ImageName + Extension));
                                }
                                else
                                {
                                    Directory.CreateDirectory(Path);
                                    //---------- output
                                    UpdateOutput(localPath + ImageName + Extension, fileSize);
                                    FileUpload1.SaveAs(Server.MapPath("~/" + localPath + ImageName + Extension));
                                }
                            }
                            else
                            {
                                lblResult.Text = "<div class='alert alert-danger'>You are already insert Maximum Appication you can not add more applicaion. Add more Application<a href='#'> Click here </a> </div>";
                            }
                        }
                        else
                        {
                            lblResult.Text = "<div class='alert alert-danger'>Upload Maximum 2MB image file.</div>";
                        }
                    }
                    else
                    {
                        lblResult.Text = "<div class='alert alert-danger'>Upload your template image in *jpg *jpeg .png formate.</div>";
                    }
                }
                else
                {
                    UpdateOutput(Update_Image, Update_ImageSize);
                }
            }
            else
            {
                lblResult.Text = "<div class='alert alert-danger'>Must be need title and discription to tenplate.</div>";
            }
        }

        private void UpdateOutput(string Path, double fileSize)
        {
            if (apps.UpdateTemplate(new Apps_Development()
            {
                App_Id = current_APP_ID,
                RegID = ((CMSmaster)this.Master).RegID,
                App_Category_Id = ddlCategory.SelectedValue.ToString(),
                CategoryName = ddlCategory.SelectedItem.ToString(),
                Template_Id = ddlTemplate.SelectedValue.ToString(),
                Title = txtTitle.Text,
                Discription = txtDiscription.Text,
                Offset = ((CMSmaster)this.Master).Offset,
                Price = Convert.ToDouble(txtPrice.Text.Replace("$", "")),
                SEO = chkSEO.Checked ? true : false,
                SpeedOptimization = chkSpeedOptimization.Checked ? true : false,
                Support = chkSupport.Checked ? true : false,
                Tag = txttags.Text,
                Testing = chkTesting.Checked ? true : false,
                VersionUpgrade = chkVersionUpdate.Checked ? true : false,
                YoutubeVideoEnable = txtYoutuleLink.Text == "" ? false : true,
                YoutubeVideoLink = txtYoutuleLink.Text,
                imageSize = fileSize,
                imgaePath = Path,
                PublicMode = chkPublicMode.Checked ? true : false
            }))
            {

                Notification.AddNotification("Your Template is update", "../../CMS/Development?g=" + _enc.HashCode(current_APP_ID, G_Key), IconDataFeather.file, ((CMSmaster)this.Master).Offset, ((CMSmaster)this.Master).RegID);
                lblResult.Text = "<div class='alert alert-success'>Development Update</div>";
                ViewTemplate();
            }
            else
            {
                lblResult.Text = "<div class='alert alert-danger'>" + apps.ErrorServerMessege + "</div>";
            }
        }


    }
}