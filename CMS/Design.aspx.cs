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
    public partial class Design : System.Web.UI.Page
    {
        Encrypt _enc = new Encrypt();
        Decrypt _dec = new Decrypt();
        Notification Notification = new Notification();
        ECMS.Design.Design design = new ECMS.Design.Design();
        ECMS.Design.Design de = new ECMS.Design.Design();


        DesignDetails d = new DesignDetails();
        string E_key = "design_Edit";
        string G_Key = "design_Go";
        string D_Key ="design_Delete";
        string Update_Image;
        double Update_ImageSize;
        protected void Page_Load(object sender, EventArgs e)
        {
            //if(chkYoutubeEnable.Checked)
            //{ pnlYoutube.Visible = true; }
            //else { pnlYoutube.Visible = false; }
            int _index = 0; string[] Value = new string[((CMSmaster)this.Master).Cookies.CookiesName.Length];
            foreach (var Name in ((CMSmaster)this.Master).Cookies.CookiesName)
            { if (Session[Name] != null || Request.Cookies[Name] != null) { Value[_index] = Session[Name] == null ? Request.Cookies[Name].Value : Session[Name].ToString(); _index++; } else { Response.Redirect("../login"); } }
            ((CMSmaster)this.Master).AllPageGetData(Value);
            if(Request.Cookies["_temp_id"]!=null)
            {
                Response.Redirect("~/CMS/Template/");
            }
            
            if (!IsPostBack)
            {
                ViewTemplate();
                foreach (ListItem li in de.AppsCategorys())
                { ddlCategory.Items.Add(li); }

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
                    if (design.AvaiableTemplate(TemplateID))
                    {
                        d = design.GetSingleTempletData(TemplateID);
                        txtDiscription.Text = d.Discription;
                        txtPrice.Text = d.Price.ToString();
                        txttags.Text = d.Tag;
                        txtTitle.Text = d.Title;
                        txtYoutuleLink.Text = d.YoutubeLink;
                        chkPublicMode.Checked = d.PublicMode;
                        chkSEO.Checked = d.SEO;
                        chkSpeedOptimization.Checked = d.SpeedOptimization;
                        chkSupport.Checked = d.Support;
                        chkTesting.Checked = d.Testing;
                        chkVersionUpdate.Checked = d.Version;
                        btnTemplate.Visible = false;
                        btnUpdate.Visible = true;
                        Image1.Visible = true;
                        Image1.ImageUrl = "../../" + d.imgaePath;
                        Update_Image = d.imgaePath;
                        Update_ImageSize = d.imageSize;
                        ddlCategory.SelectedValue = d.CategoryID;
                    }
                    else
                    {
                        Response.Redirect("~/500");
                    }
                }
                if (Request.QueryString["g"] != null)
                {
                    string EncTempID =Request.QueryString["g"].ToString();
                    EncTempID = EncTempID.Replace(" ", "+");
                    _dec.DecryptCode = G_Key;
                    string TemplateID = _dec.GetDecryptHashCode(EncTempID);
                    if (design.AvaiableTemplate(TemplateID))
                    {
                        HttpCookie AddnewCookies = new HttpCookie("_temp_id", TemplateID);
                        Response.Cookies.Add(AddnewCookies);
                        Response.Redirect("~/CMS/Template/");
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
                    var TemplateID = _dec.GetDecryptHashCode(EncTempID);
                    if (design.AvaiableTemplate(TemplateID))
                    {
                        if(design.DeleteTemplate(TemplateID))
                        {
                            lblResult.Text = "<div class='alert alert-success'> Template Deleted. </div>";
                            File.Delete(Server.MapPath("~/"+design.ImagePath_forDelete));
                        }
                        else
                        {
                            lblResult.Text = "<div class='alert alert-success'>"+design.ErrorMessege+"</div>";

                        }
                    }
                    else
                    {
                        Response.Redirect("~/500");
                    }
                }



            }
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
                            var Path = Server.MapPath("~/"+localPath);
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
                                Output(localPath+ ImageName + Extension, fileSize);
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
        private void Output(string Path,double Size)
        {
            
            if (design.InsertTemplate(new DesignDetails()
            {
                RegID = ((CMSmaster)this.Master).RegID,
                CategoryID = ddlCategory.SelectedValue.ToString(),
                CategoryName = ddlCategory.SelectedItem.ToString(),
                Title = txtTitle.Text,
                Discription = txtDiscription.Text,
                Offset = ((CMSmaster)this.Master).Offset,
                Price = Convert.ToDouble(txtPrice.Text.Replace("$","")),
                SEO = chkSEO.Checked ? true : false,
                SpeedOptimization = chkSpeedOptimization.Checked ? true : false,
                Support = chkSupport.Checked ? true : false,
                Tag = txttags.Text,
                Testing = chkTesting.Checked ? true : false,
                Version = chkVersionUpdate.Checked?true:false,
                YoutubeEnable = txtYoutuleLink.Text == "" ? false : true,
                YoutubeLink = txtYoutuleLink.Text,
                imageSize = Size,
                imgaePath = Path,
                PublicMode = chkPublicMode.Checked ? true : false
            }))
            {
                FileUpload1.SaveAs(Server.MapPath("~/"+Path));
                lblResult.Text = "";
                _enc.EncryptCode = G_Key;
                Notification.AddNotification("New Template Create","../../CMS/Design?g="+_enc.Encrypt256bits(design.Template_ID,G_Key),IconDataFeather.file, ((CMSmaster)this.Master).Offset,((CMSmaster)this.Master).RegID);
                HttpCookie AddnewCookies = new HttpCookie("_temp_id", _enc.Encrypt256bits(design.Template_ID));
                Response.Cookies.Add(AddnewCookies);
                Response.Redirect("~/CMS/Template/");

            }
            else
            {
                lblResult.Text = "<div class='alert alert-danger'>" + design.ErrorMessege + "</div>";
            }
        }

        private void ViewTemplate()
        {
            pnlTemplate.Controls.Clear(); string html = "";
            foreach (DesignDetails details in de.GetTemplateData(((CMSmaster)this.Master).RegID))
            {
                html += string.Format(@"<div class='card-body'>
                            <div class='row'>
                                <div class='col-md-4'>
                                    <img src='{5}' width='100%'  /></div>
                                <div class='col-md-8'>
                                    <h4 class='card-title'>{0}</h4>
                            <code><sub>{6}</sub></code>
                            <p class='card-description text-justify'>{1}</p>
                            <a href='../CMS/Design?e={2}' class='btn btn-primary active' > Edit Details</a>
                            <a href='../CMS/Design?g={3}' class='btn btn-success active'>Go Template</a>
                            <a href='../CMS/Design?d={4}' class='btn btn-danger active' onclick='return confirm('Are you sure you want to delete this item?'); '>Delete</a>
                                 </div>
                            </div>
                            
                        </div>", details.Title.Length > 38 ? details.Title.Substring(0, 38) + ".." : details.Title,
                    details.Discription.Length > 150 ? details.Discription.Substring(0, 150) + "..." : details.Discription,
                    _enc.HashCode(details.TemplateId, E_key),
                    _enc.HashCode(details.TemplateId, G_Key),
                    _enc.HashCode(details.TemplateId, D_Key),
                    "../../" + details.imgaePath,
                    Notification.timeago(details.OpenDate, ((CMSmaster)this.Master).Offset, true));
            }
            pnlTemplate.Controls.Add(new LiteralControl(html));
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
                                    UpdateOutput(localPath + ImageName + Extension, fileSize);
                                }
                                else
                                {
                                    Directory.CreateDirectory(Path);
                                    //---------- output
                                    UpdateOutput(localPath + ImageName + Extension, fileSize);
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
            if(design.UpdateTemplate(new DesignDetails()
            {
                RegID = ((CMSmaster)this.Master).RegID,
                CategoryID = ddlCategory.SelectedValue.ToString(),
                CategoryName = ddlCategory.SelectedItem.ToString(),
                Title = txtTitle.Text,
                Discription = txtDiscription.Text,
                Offset = ((CMSmaster)this.Master).Offset,
                Price = Convert.ToDouble(txtPrice.Text.Replace("$", "")),
                SEO = chkSEO.Checked ? true : false,
                SpeedOptimization = chkSpeedOptimization.Checked ? true : false,
                Support = chkSupport.Checked ? true : false,
                Tag = txttags.Text,
                Testing = chkTesting.Checked ? true : false,
                Version = chkVersionUpdate.Checked ? true : false,
                YoutubeEnable = txtYoutuleLink.Text == "" ? false : true,
                YoutubeLink = txtYoutuleLink.Text,
                imageSize = fileSize,
                imgaePath = Path,
                PublicMode = chkPublicMode.Checked ? true : false
            }))
            {

                Notification.AddNotification("Your Template is update", "../../CMS/Design?g=" + _enc.Encrypt256bits(design.Template_ID, G_Key), IconDataFeather.file, ((CMSmaster)this.Master).Offset, ((CMSmaster)this.Master).RegID);
                lblResult.Text = "<div class='alert alert-success'>Template Update</div>";
                ViewTemplate();
            }
            else
            {
                lblResult.Text = "<div class='alert alert-danger'>" + design.ErrorMessege + "</div>";
            }
        }
    }
}