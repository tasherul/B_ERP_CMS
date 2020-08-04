using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.WebSockets;
using ECMS;
using ECMS.Design;
using WebGrease.Css.Ast.Selectors;
using Ionic.Zip;
using System.Text;

namespace B_ERP_CMS.CMS.Template
{
    public partial class Default : System.Web.UI.Page
    {
        ECMS.Design.Template template = new ECMS.Design.Template();
        string G_Key = "design_Go";
        Decrypt _dec = new Decrypt();
        string TemplateID="";
        private static List<Files> Js = new List<Files>();
        private static List<Files> Css = new List<Files>();
        private static List<Files> CssJs = new List<Files>();

        protected void Page_Load(object sender, EventArgs e)
        {
            int _index = 0; string[] Value = new string[((CMSmaster)this.Master).Cookies.CookiesName.Length];
            foreach (var Name in ((CMSmaster)this.Master).Cookies.CookiesName)
            { if (Session[Name] != null || Request.Cookies[Name] != null) { Value[_index] = Session[Name] == null ? Request.Cookies[Name].Value : Session[Name].ToString(); _index++; } else { Response.Redirect("~/login"); } }
            ((CMSmaster)this.Master).AllPageGetData(Value);

            if (Request.Cookies["_temp_id"] !=null)
            {
                var Cookies = Request.Cookies["_temp_id"].Value;
                ECMS.Design.Design d = new ECMS.Design.Design();
                if (d.AvaiableTemplate(Cookies, ((CMSmaster)this.Master).RegID))
                {
                    TemplateID = Cookies;
                    template.TemplateID = TemplateID;
                    lblPath.Text = template.TemplateId_to_RegID(TemplateID);
                    //Response.Write(template.TemplateId_to_RegID(TemplateID));     
                    if(!IsPostBack)
                    {
                        PanelShow(panel.FileUpload);
                        showFils_and_Folders();
                        updateMainControl();
                        jscss();
                        offAllPanel_HtmlDesign();
                        showHtmlDesign();
                        showLayoutImageShow();

                       



                    }
                    ShowLayoutData();

                    showjsCss();

                    if (Request.QueryString["fu_id"] != null)
                    {
                        string ID = Request.QueryString["fu_id"].ToString();
                        string path = template.DeleteFileUpload(ID, ((CMSmaster)this.Master).RegID);
                        if (path != "File is Not Found.")
                        {
                            File.Delete(Server.MapPath("~/" + path));
                            lblResult.Text = "<div class='alert alert-success'> Delete " + template.ErrorMessege + ". " + GetFileName(path) + " </div>";
                            showFils_and_Folders();
                            Response.Redirect(Request.RawUrl.Replace(Request.Url.Query, ""));
                        }
                        else
                        {
                            Response.Redirect("~/500?="+ID+"?p="+path);
                            //Response.Write(path);
                        }
                    }



                }
                else
                {
                    HttpCookie myCookie = new HttpCookie("_temp_id");
                    myCookie.Expires = DateTime.Now.AddDays(-7d);
                    Response.Cookies.Add(myCookie);
                    Response.Redirect("~/CMS/Design");
                }
            }
            else
            {
               Response.Redirect("~/CMS/Design");
            }
        }

        private void PanelShow(panel Name)
        {
            AllHide();

            if (Name == panel.FileUpload)
                pnlFileUpload.Visible = true;

            if (Name == panel.HeaderControl)
                pnlHeaderControl.Visible = true;

            if (Name == panel.BarControl)
                pnlBarControl.Visible = true;

            if (Name == panel.Layout)
                pnlLayout.Visible = true;

            if (Name == panel.Widget)
                pnlWidget.Visible = true;

            if (Name == panel.DataTables)
                pnlDataTable.Visible = true;

            if (Name == panel.Dashboard)
                pnlDashboard.Visible = true;

            if (Name == panel.Chart)
                pnlChart.Visible = true;

            if (Name == panel.Icon)
                pnlIcon.Visible = true;

            if (Name == panel.Button)
                pnlbutton.Visible = true;

            if (Name == panel.Lablel)
                pnlLablel.Visible = true;

            if (Name == panel.Droupdown)
                pnlDroupdown.Visible = true;

            if (Name == panel.RadioButton)
                pnlRadioButtons.Visible = true;

            if (Name == panel.LinkButton)
                pnlLinkButton.Visible = true;

            if (Name == panel.CheckBox)
                pnlCheckBox.Visible = true;

            if (Name == panel.Uploader)
                pnlUploader.Visible = true;

            if (Name == panel.Image)
                pnlImage.Visible = true;

            if (Name == panel.Alert)
                pnlAlert.Visible = true;

            if (Name == panel.Process)
                pnlProcess.Visible = true;

            if (Name == panel.DempPage)
                pnlDempPages.Visible = true;

            if (Name == panel.LoginPage)
                pnlLoginPage.Visible = true;

            if (Name == panel.Invoice)
                pnlInvoice.Visible = true;

            if (Name == panel.Reporting)
                pnlReporting.Visible = true;

            if (Name == panel.TextBox)
                pnlTextBoxs.Visible = true;
        }

        private void AllHide()
        {
            pnlAlert.Visible = false;
            pnlBarControl.Visible = false;
            pnlbutton.Visible = false;
            pnlChart.Visible = false;
            pnlCheckBox.Visible = false;
            pnlDashboard.Visible = false;
            pnlDataTable.Visible = false;
            pnlDempPages.Visible = false;
            pnlDroupdown.Visible = false;
            pnlFileUpload.Visible = false;
            pnlHeaderControl.Visible = false;
            pnlIcon.Visible = false;
            pnlImage.Visible = false;
            pnlInvoice.Visible = false;
            pnlLablel.Visible = false;
            pnlLayout.Visible = false;
            pnlLinkButton.Visible = false;
            pnlLoginPage.Visible = false;
            pnlProcess.Visible = false;
            pnlRadioButtons.Visible = false;
            pnlReporting.Visible = false;
            pnlUploader.Visible = false;
            pnlWidget.Visible = false;
            pnlTextBoxs.Visible = false;
        }

        #region File upload 
        private string GetFileName(string Path)
        {
            string ReverseName = "";
            for (int i = Path.Length - 1; i >= 0; i--)
            {
                if (Path[i] == '/')
                {
                    break;
                }
                ReverseName += Path[i];
            }
            string OrginalFile = "";
            for (int i = ReverseName.Length - 1; i >= 0; i--)
            {
                OrginalFile += ReverseName[i];
            }
            return OrginalFile;
        }
        private string GetPath(string FullPath)
        {
            string ReversePath = "";
            for (int i = FullPath.Length - 1; i >= 0; i--)
            {
                if (FullPath[i] == '/')
                {
                    ReversePath = FullPath.Substring(0, i + 1);
                    break;
                }
            }
            return ReversePath;
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            
            if(txtPath.Text!="" && FileUpload1.HasFile)
            {
                string pathcheck = txtPath.Text;
                if (pathcheck[pathcheck.Length - 1] == '/' && pathcheck[0] != '/' && doubleSlash(txtPath.Text))
                {
                    string FileName = FileUpload1.FileName;
                    double fileSize = FileUpload1.PostedFile.ContentLength;
                    fileSize = fileSize / 1024;
                    if (template.AvaiableStorage())
                    {
                        var LocalPath = "File/" + template.TemplateID + "/" + txtPath.Text;
                        var ServerPath = Server.MapPath("~/" + LocalPath);

                        if (Directory.Exists(ServerPath))
                        {
                            filesave(LocalPath, FileName, fileSize);
                        }
                        else
                        {
                            Directory.CreateDirectory(ServerPath);
                            filesave(LocalPath, FileName, fileSize);
                        }

                    }
                    else
                    {
                        lblResult.Text = "<div class='alert alert-danger'>You don't have enough space.</div>";
                    }
                }
                else
                {
                    lblResult.Text = "<div class='alert alert-danger'>Your Path must be <strong>path1/path2/path3/</strong> this type.</div>";
                }
            }
            else
            {
                lblResult.Text = "<div class='alert alert-danger'>Please upload a file and Type your path.</div>";
            }
            showFils_and_Folders();
        }
        private bool doubleSlash(string Path)
        {
            bool returnval = true;
            for(int i=0;i<Path.Length;i++)
            {
                if(Path[i]=='/')
                {
                    if(i < Path.Length-1)
                    {
                        if(Path[i+1]=='/')
                        {
                            returnval = false;
                            break;
                        }
                    }
                }
            }
            return returnval;
        }
        private void filesave(string serverPath,string fileName,double FileSize )
        {
            DateTimeZone dateTimeZone = new DateTimeZone(((CMSmaster)this.Master).Offset);
            if (template.FileChech(serverPath + fileName))
            {
                if (template.Insert_FileUpload(new T_FileUpload()
                {
                    FileSize = FileSize,
                    FileName = fileName,
                    Path = serverPath.Replace("File/"+ template.TemplateID + "/", ""),
                    FullPath = serverPath + fileName,
                    RegID = ((CMSmaster)this.Master).RegID,
                    Template_Id = TemplateID,
                    DateTime = dateTimeZone.DateTimes().ToString()
                }))
                {
                    FileUpload1.SaveAs(Server.MapPath("~/"+serverPath + fileName));
                    txtPath.Text = "";
                    lblResult.Text = "<div class='alert alert-success'>Your <strong>" + fileName + "</strong> file is saved. File size is <strong>" + (FileSize / 1024).ToString("0.00") + " MB</strong>.</div>";
                }
                else
                {
                    lblResult.Text = "<div class='alert alert-danger'>" + template.ErrorMessege + "</div>";
                }
            }
            else
            {
                lblResult.Text = "<div class='alert alert-danger'>This File is already insert try another.</div>";
            }
        }
        private void showFils_and_Folders()
        {
            pnlFile_and_Folder.Controls.Clear();
            string output = "";
            foreach (T_FileUpload file in template.GetAllFiles(TemplateID))
            {
                //PreviousFolder.AddRange(PathFolder(file.Path));
                //
                output += string.Format(@"<div class='file pad-0'><a href='?fu_id={2}'><i data-feather='trash'></i></a> <a title='{0}' href='#' target='_blank' class='file-icon-name'><i data-feather='file'></i> {1}</a></div>", file.FullPath,file.FileName,file.FileUpload_Id);
            }
            pnlFile_and_Folder.Controls.Add(new LiteralControl(output));
        }
        //private string Folder = "<div class='folder pad-0'><i data-feather='folder'></i> folder</div>";
        //private string File = "<div class='file pad-2'><a href='#'><i data-feather='trash'></i></a> <a href='#' title='{}' target='_blank' class='file-icon-name'><i data-feather='file'></i> File.css</a></div>";
        private int CountFolder(string Path)
        {
            int count = 0;
            for(int i=0;i<Path.Length;i++)
            {
                if(Path[i]=='/')
                {
                    count++;
                }
            }
            return count;
        }
        private string[] PathFolder(string Path)
        {
            string[] Folders = new string[CountFolder(Path)];
            string File = ""; int folderid = 0;
            for (int i = 0; i < Path.Length; i++)
            {
                if (Path[i] == '/')
                {
                    Folders[folderid] = File;
                    File = "";
                    folderid++;
                }
                else
                {
                    File += Path[i];
                }
            }
            return Folders;
        }
        protected void btnfileUpload_Click(object sender, EventArgs e)
        {
            PanelShow(panel.FileUpload);
            showFils_and_Folders();
        }
        protected void btnZipUpload_Click(object sender, EventArgs e)
        {
            if (FileUpload2.HasFile)
            {
                string FileExtintion = Path.GetExtension(FileUpload2.FileName.ToLower());
                if (FileExtintion == ".zip")
                {
                    double TotalSize = 0;
                    int TotalFiles = 0;
                    using (ZipFile zip = ZipFile.Read(FileUpload2.PostedFile.InputStream))
                    {
                        //zip.ExtractAll(extractPath, ExtractExistingFileAction.DoNotOverwrite);
                        ZipEntry s = new ZipEntry();
                        string FirstPath = "File/" + template.TemplateID + "/";
                        if (!Directory.Exists(Server.MapPath("~/"+FirstPath)))
                        {
                            Directory.CreateDirectory(Server.MapPath("~/" + FirstPath));
                        }
                        foreach (ZipEntry z in zip.Entries)
                        {
                            string SecoundPath = "";
                            string FileName = "";
                            double FileSize = z.UncompressedSize; // this makes Bytes
                            FileSize /= 1024;// this makes KB
                            TotalSize += FileSize;

                            if (z.IsDirectory)// if folder are avaiable
                            {
                                SecoundPath = z.FileName;
                            }
                            else
                            {
                                FileName = GetFileName(z.FileName);
                            }
                            string ServerSavePath = Server.MapPath("~/" + FirstPath);



                            if (template.AvaiableStorage())
                            {
                                try
                                {
                                    z.Extract(ServerSavePath,ExtractExistingFileAction.DoNotOverwrite);
                                }
                                catch(Exception er)
                                {
                                    lblFileuploadResult.Text = "<div class='alert alert-danger'>Your path are too long yor path must be short with in (10 folders).</div>";
                                }
                                if (!z.IsDirectory) {
                                    TotalFiles++;
                                    DateTimeZone dateTimeZone = new DateTimeZone(((CMSmaster)this.Master).Offset);
                                    template.Insert_FileUpload(new T_FileUpload()
                                    {
                                        FileSize = FileSize,
                                        FileName = FileName,
                                        Path = GetPath(z.FileName),
                                        FullPath = FirstPath + z.FileName,
                                        RegID = ((CMSmaster)this.Master).RegID,
                                        Template_Id = TemplateID,
                                        DateTime = dateTimeZone.DateTimes().ToString()
                                    });
                                }
                            }
                            else
                            {
                                lblFileuploadResult.Text = "<div class='alert alert-danger'>You don't have any space to save this files. Please update your storage.</div>";
                                return;
                            }
                        }

                        lblFileuploadResult.Text = " <div class='alert alert-success'>Uploaded <strong>"+TotalFiles+"</strong> files, Unconpressed Total Size is <strong>"+TotalSize+" KB"+"</strong></div>";
                        showFils_and_Folders();

                    }
                }
                else
                {
                    lblFileuploadResult.Text = "<div class='alert alert-danger'>This file is not a Zip File. Please Upload zip file try again.</div>";
                }
            }
            else
            {
                lblFileuploadResult.Text = "<div class='alert alert-danger'>Upload Your Zip File.</div>";
            }
        }


        #endregion

        #region MainControl
        private void updateMainControl()
        {
            MainControl mdata = template.ShowData();
            if(mdata.UpdateEnable)
            {
                txtBodyCss.Text = mdata.BodyClass;
                txthtml.Text = mdata.MailHtml;
                lblCss.Text = mdata.CssJs;
                
            }
            
        }
        private void showjsCss()
        {
            lblCss.Text = "";
            lblJs.Text = "";
            lblCssJs_Result.Text = "";
            foreach (Files f in Css)
            {
                lblCss.Text += string.Format(@"<span style='color:#990055; font-size:medium; margin-bottom:10px;'>	&lt;link 
	<span style='color:#669900;'>rel</span><span style='color:#999999;'>=&#34;</span><span style='color:#767dff'>stylesheet</span><span style='color:#999999;'>&#34;</span> 
	<span style='color:#669900;'>href</span><span style='color:#999999;'>=&#34;</span><span style='color:#767dff'>{0}</span><span style='color:#999999;'>&#34;</span>&sol;&gt;</span>
	<br />", f.FileName);
            }
            foreach (Files f in Js)
            {
                lblJs.Text += string.Format(@"	<span style='color:#990055; font-size:medium; margin-bottom:10px;'>	&lt;script
	<span style='color:#669900;'>src</span><span style='color:#999999;'>=&#34;</span><span style='color:#767dff'>{0}</span><span style='color:#999999;'>&#34;</span>&gt;&lt;&sol;script&gt;</span>
	<br />", f.FileName);
            }
            foreach(Files f in CssJs)
            {
                if(Path.GetExtension(f.FileName.ToLower())==".css")
                {
                    lblCssJs_Result.Text += string.Format(@"<span style='color:#990055; font-size:medium; margin-bottom:10px;'>	&lt;link 
	<span style='color:#669900;'>rel</span><span style='color:#999999;'>=&#34;</span><span style='color:#767dff'>stylesheet</span><span style='color:#999999;'>&#34;</span> 
	<span style='color:#669900;'>href</span><span style='color:#999999;'>=&#34;</span><span style='color:#767dff'>{0}</span><span style='color:#999999;'>&#34;</span>&sol;&gt;</span>
	<br />", f.FileName);
                }
                if (Path.GetExtension(f.FileName.ToLower()) == ".js")
                {
                    lblCssJs_Result.Text += string.Format(@"	<span style='color:#990055; font-size:medium; margin-bottom:10px;'>	&lt;script
	<span style='color:#669900;'>src</span><span style='color:#999999;'>=&#34;</span><span style='color:#767dff'>{0}</span><span style='color:#999999;'>&#34;</span>&gt;&lt;&sol;script&gt;</span>
	<br />", f.FileName);
                }
            }

        }
        protected void btnHeaderControl_Click(object sender, EventArgs e)
        {
            PanelShow(panel.HeaderControl);
        }
        private void jscss()
        {
            ddlJs.Items.Clear();
            ddlCssJs.Items.Clear();
            ddlAllCss.Items.Clear();
            foreach (Files f in template.GetJS_Files())
            {
                ddlJs.Items.Add(new ListItem(f.FileName+" | ("+f.Path+")", f.ID));
                ddlCssJs.Items.Add(new ListItem(f.FileName + " | (" + f.Path + ")", f.ID));             
            }
            ddlCss.Items.Clear();
            foreach (Files f in template.GetCSS_Files())
            {
                ddlCss.Items.Add(new ListItem(f.FileName+ " | (" + f.Path + ")", f.ID));
                ddlCssJs.Items.Add(new ListItem(f.FileName + " | (" + f.Path + ")", f.ID));
                ddlAllCss.Items.Add(new ListItem(f.FileName + " | (" + f.Path + ")", f.ID));
            }
        }
        protected void btnJs_Click(object sender, EventArgs e)
        {
            string ID = ddlJs.SelectedValue.ToString();
            bool Match = false;
            foreach(Files file in Js)
            {
                if(ID==file.ID)
                {
                    Match = true;
                    break;
                }
            }
            if(!Match)
            {
                Js.Add(new Files() { FileName = template.FullPath(ID), ID = ID });
                showjsCss();
            }
            else
            {
                lblHeaderReasult.Text = "<div class='alert alert-danger'> Already insert. </div>";
            }
        }
        protected void btnCSS_Click(object sender, EventArgs e)
        {
            string ID = ddlCss.SelectedValue.ToString();
            bool Match = false;
            foreach (Files file in Css)
            {
                if (ID == file.ID)
                {
                    Match = true;
                    break;
                }
            }
            if (!Match)
            {
                Css.Add(new Files() { FileName = template.FullPath(ID), ID = ID });
                showjsCss();
            }
            else
            {
                lblHeaderReasult.Text = "<div class='alert alert-danger'> Already insert. </div>";
            }
        }
        protected void btnMainSave_Click(object sender, EventArgs e)
        {
            string HTML = txthtml.Text;
            string CssJsID = "";
            string CssJsFile = "";
            foreach(Files f in Css)
            {
                CssJsID += f.ID+",";
                CssJsFile += "<link rel=\"stylesheet\" href=\"../../" + f.FileName+"\"/>";
            }
            foreach(Files f in Js)
            {
                CssJsID += f.ID + ",";
                CssJsFile += "<script src=\"../../" + f.FileName + "\"></script>";
            }
            if(HTML.Contains("{0}") && HTML.Contains("{1}") && HTML.Contains("{2}")&& HTML.Contains("{3}"))
            {
                DateTimeZone dt = new DateTimeZone(((CMSmaster)this.Master).Offset);
                MainControl control = new MainControl();
                control.RegID = ((CMSmaster)this.Master).RegID;
                control.BodyClass = txtBodyCss.Text;
                control.CssJs = CssJsFile;
                control.CssJs_ID = CssJsID;
                control.MailHtml = HTML;
                control.Template_Id = TemplateID;
                control.UpdateDateTime = dt.DateTimes();
                if (template.MainHtml(control))
                {
                    lblHeaderReasult.Text = "<div class='alert alert-success'>main File is Saved.</div>";
                }
                else
                {
                    lblHeaderReasult.Text = "<div class='alert alert-danger'>Please Fill All Froms. "+template.ErrorMessege+"</div>";
                }
            }
            else
            {
                lblHeaderReasult.Text = "<div class='alert alert-danger'> Your Must declear the Code {0}{1}{2}{3} and Not be empty.</div>"; 
            }

        }
        protected void btnDeleteCssJsFiles_Click(object sender, EventArgs e)
        {
            Css.Clear();
            Js.Clear();
            jscss();
        }
        #endregion

        #region HtmlDesign
        private void showHtmlDesign()
        {
            HtmlDesign d = template.ShowHtmlDesign();
            txtHtmlDesign_Section1_HTMLCode.Text = d.HeaderImage_HtmlCode;
            txtHtmlDesign_Section1_DD_ImageSrcLink.Text = d.HeaderImage_DD_ImageLink;
            txtHtmlDesign_Section1_DD_AlternatText.Text = d.HeaderImage_DD_AlternateText;
            txtHtmlDesign_Section1_DD_HiperLink.Text = d.HeaderImage_DD_Link;
            txtHtmlDesign_Section2_HTMLCode.Text = d.HeaderSearch_HtmlCode;
            txtHtmlDesign_Section3_HTMLCode.Text = d.HeaderNotification_HtmlCode;
            txtHtmlDesign_Section3_DD_Link.Text = d.HeaderNotification_DD_Link;
            txtHtmlDesign_Section3_DD_Icon.Text = d.HeaderNotification_DD_Icon;
            txtHtmlDesign_Section3_DD_Title.Text = d.HeaderNotification_DD_Title;
            txtHtmlDesign_Section3_DD_DetailsOrTime.Text = d.HeaderNotification_DD_DetailsOrTime;
            txtHtmlDesign_Section4_HtmlCode.Text = d.HeaderMessage_HtmlCode;
            txtHtmlDesign_Section4_DD_Link.Text = d.HeaderMessage_DD_Link;
            txtHtmlDesign_Section4_DD_ImageLink.Text = d.HeaderMessage_DD_ImageLink;
            txtHtmlDesign_Section4_DD_Title.Text = d.HeaderMessage_DD_Title;
            txtHtmlDesign_Section4_DD_DetailsOrTime.Text = d.HeaderMessage_DD_DetailsOrTime;
            txtHtmlDesign_Section5_HtmlCode1.Text = d.HeaderProfile_HtmlCode1;
            txtHtmlDesign_Section5_HtmlCode2.Text = d.HeaderProfile_HtmlCode2;
            txtHtmlDesign_Section5_Section1_DD_ImageLink.Text = d.HeaderProfile_DD1_ImageLink;
            txtHtmlDesign_Section5_Section1_DD_Name.Text = d.HeaderProfile_DD1_Name;
            txtHtmlDesign_Section5_Section2_DD_Link.Text = d.HeaderProfile_DD2_Link;
            txtHtmlDesign_Section5_Section2_DD_Name.Text = d.HeaderProfile_DD2_Name;
            txtHtmlDesign_Section6_HtmlCode1.Text = d.BodyBar_HtmlCode1;
            txtHtmlDesign_Section6_HtmlCode2.Text = d.BodyBar_HtmlCode2;
            txtHtmlDesign_Section6_section1_DD_Link.Text = d.BodyBar_DD1_Link;
            txtHtmlDesign_Section6_section1_DD_BarName.Text = d.BodyBar_DD1_BarName;
            txtHtmlDesign_Section6_section2_DD_Link.Text = d.BodyBar_DD2_Link;
            txtHtmlDesign_Section6_section2_DD_BarName.Text = d.BodyBar_DD2_BarName;
            txtHtmlDesign_Section7_HtmlCode.Text = d.Footer_HtmlCode;
        }
        protected void btnHtmlDesign_Click(object sender, EventArgs e)
        {
            PanelShow(panel.BarControl);
        }

        protected void chkHtmlDesign_Section1_CheckedChanged(object sender, EventArgs e)
        {
            if (chkHtmlDesign_Section1.Checked)
                pnlHtmlDesign_Section1.Visible = true;
            else
                pnlHtmlDesign_Section1.Visible = false;
        }
        protected void chkHtmlDesign_Section2_CheckedChanged(object sender, EventArgs e)
        {
            if (chkHtmlDesign_Section2.Checked)
                pnlHtmlDesign_Section2.Visible = true;
            else
                pnlHtmlDesign_Section2.Visible = false;
        }
        protected void chkHtmlDesign_Section3_CheckedChanged(object sender, EventArgs e)
        {
            if (chkHtmlDesign_Section3.Checked)
                pnlHtmlDesign_Section3.Visible = true;
            else
                pnlHtmlDesign_Section3.Visible = false;
        }
        protected void chkHtmlDesign_Section4_CheckedChanged(object sender, EventArgs e)
        {
            if (chkHtmlDesign_Section4.Checked)
                pnlHtmlDesign_Section4.Visible = true;
            else
                pnlHtmlDesign_Section4.Visible = false;
        }
        protected void chkHtmlDesign_Section5_CheckedChanged(object sender, EventArgs e)
        {
            if (chkHtmlDesign_Section5.Checked)
                pnlHtmlDesign_Section5.Visible = true;
            else
                pnlHtmlDesign_Section5.Visible = false;
        }

        protected void chkEditor_CheckedChanged(object sender, EventArgs e)
        {
            if (chkEditor.Checked)
                pnlEditor.Visible = true;
            else
                pnlEditor.Visible = false;
        }

        protected void chkDemoPage_CheckedChanged(object sender, EventArgs e)
        {
            if (chkDemoPage.Checked)
                pnlDemopage_.Visible = true;
            else
                pnlDemopage_.Visible = false;
        }
        private void offAllPanel_HtmlDesign()
        {
            pnlHtmlDesign_Section1.Visible = false;
            pnlHtmlDesign_Section2.Visible = false;
            pnlHtmlDesign_Section3.Visible = false;
            pnlHtmlDesign_Section4.Visible = false;
            pnlHtmlDesign_Section5.Visible = false;
            pnlHtmlDesign_Section6.Visible = false;
            pnlHtmlDesign_Section7.Visible = false;
            pnlDemopage_.Visible = false;
            pnlEditor.Visible = false;
        }
        protected void chkHtmlDesign_Section6_CheckedChanged(object sender, EventArgs e)
        {
            if (chkHtmlDesign_Section6.Checked)
                pnlHtmlDesign_Section6.Visible = true;
            else
                pnlHtmlDesign_Section6.Visible = false;
        }
        protected void chkHtmlDesign_Section7_CheckedChanged(object sender, EventArgs e)
        {
            if (chkHtmlDesign_Section7.Checked)
                pnlHtmlDesign_Section7.Visible = true;
            else
                pnlHtmlDesign_Section7.Visible = false;
        }
        protected void btnHtmlDesign_Save_Click(object sender, EventArgs e)
        {
             DateTimeZone dt = new DateTimeZone(((CMSmaster)this.Master).Offset);
             string RegID = ((CMSmaster)this.Master).RegID;
             string Template_Id = TemplateID;
             string HeaderImage_HtmlCode = txtHtmlDesign_Section1_HTMLCode.Text;
             string HeaderImage_DD_ImageLink = txtHtmlDesign_Section1_DD_ImageSrcLink.Text;
             string HeaderImage_DD_AlternateText = txtHtmlDesign_Section1_DD_AlternatText.Text;
             string HeaderImage_DD_Link = txtHtmlDesign_Section1_DD_HiperLink.Text;
             string HeaderImage_UpdateTime = dt.DateTimeResult();
             string HeaderSearch_HtmlCode = txtHtmlDesign_Section2_HTMLCode.Text;
             string HeaderSearch_UpdateTime = dt.DateTimeResult();
             string HeaderNotification_HtmlCode = txtHtmlDesign_Section3_HTMLCode.Text;
             string HeaderNotification_DD_Link = txtHtmlDesign_Section3_DD_Link.Text;
             string HeaderNotification_DD_Icon = txtHtmlDesign_Section3_DD_Icon.Text;
             string HeaderNotification_DD_Title = txtHtmlDesign_Section3_DD_Title.Text;
             string HeaderNotification_DD_DetailsOrTime = txtHtmlDesign_Section3_DD_DetailsOrTime.Text;
             string HeaderNotification_UpdateTime = dt.DateTimeResult();
             string HeaderMessage_HtmlCode = txtHtmlDesign_Section4_HtmlCode.Text;
             string HeaderMessage_DD_Link = txtHtmlDesign_Section4_DD_Link.Text;
             string HeaderMessage_DD_ImageLink = txtHtmlDesign_Section4_DD_ImageLink.Text;
             string HeaderMessage_DD_Title = txtHtmlDesign_Section4_DD_Title.Text;
            string HeaderMessage_DD_DetailsOrTime = txtHtmlDesign_Section4_DD_DetailsOrTime.Text;
             string HeaderMessage_UpdateTime = dt.DateTimeResult();
             string HeaderProfile_HtmlCode1 = txtHtmlDesign_Section5_HtmlCode1.Text;
             string HeaderProfile_HtmlCode2 = txtHtmlDesign_Section5_HtmlCode2.Text;
             string HeaderProfile_DD1_ImageLink = txtHtmlDesign_Section5_Section1_DD_ImageLink.Text;
             string HeaderProfile_DD1_Name = txtHtmlDesign_Section5_Section1_DD_Name.Text;
             string HeaderProfile_DD2_Link = txtHtmlDesign_Section5_Section2_DD_Link.Text;
             string HeaderProfile_DD2_Name = txtHtmlDesign_Section5_Section2_DD_Name.Text;
             string HeaderProfile_UpdateTime = dt.DateTimeResult();
             string BodyBar_HtmlCode1 = txtHtmlDesign_Section6_HtmlCode1.Text;
             string BodyBar_HtmlCode2 = txtHtmlDesign_Section6_HtmlCode2.Text;
             string BodyBar_DD1_Link = txtHtmlDesign_Section6_section1_DD_Link.Text;
             string BodyBar_DD1_BarName = txtHtmlDesign_Section6_section1_DD_BarName.Text;
             string BodyBar_DD2_Link = txtHtmlDesign_Section6_section2_DD_Link.Text;
             string BodyBar_DD2_BarName = txtHtmlDesign_Section6_section2_DD_BarName.Text;
             string BodyBar_UpdateTime = dt.DateTimeResult();
             string Footer_HtmlCode = txtHtmlDesign_Section7_HtmlCode.Text;
             string Footer_UpdateTime = dt.DateTimeResult();

            if (RBHtmlDesign_Save_AllSection.Checked)
            {
                if(RegID != "" && Template_Id != "" && HeaderImage_HtmlCode != "" && HeaderImage_DD_ImageLink != "" && 
                    HeaderImage_DD_AlternateText != "" && HeaderImage_DD_Link != "" && HeaderImage_UpdateTime != "" && 
                    HeaderSearch_HtmlCode != "" && HeaderSearch_UpdateTime!= "" && HeaderNotification_HtmlCode != "" && 
                    HeaderNotification_DD_Link != "" && HeaderNotification_DD_Icon != "" && HeaderNotification_DD_Title 
                    != "" && HeaderNotification_DD_DetailsOrTime != "" && HeaderNotification_UpdateTime != "" && 
                    HeaderMessage_HtmlCode!= "" && HeaderMessage_DD_Link != "" && HeaderMessage_DD_ImageLink != "" && 
                    HeaderMessage_DD_Title != "" && HeaderMessage_DD_DetailsOrTime != "" && HeaderMessage_UpdateTime 
                    != "" && HeaderProfile_HtmlCode1 != "" && HeaderProfile_HtmlCode2!= "" && HeaderProfile_DD1_ImageLink != "" && 
                    HeaderProfile_DD1_Name != "" && HeaderProfile_DD2_Link != "" && HeaderProfile_DD2_Name != "" && HeaderProfile_UpdateTime 
                    != "" && BodyBar_HtmlCode1 != "" && BodyBar_HtmlCode2 != "" && BodyBar_DD1_Link!= "" && BodyBar_DD1_BarName != "" && 
                    BodyBar_DD2_Link != "" && BodyBar_DD2_BarName != "" && BodyBar_UpdateTime != "" && Footer_HtmlCode != "" && 
                    Footer_UpdateTime!="")
                {
                    HtmlDesign Details = new HtmlDesign();
                    Details.RegID = RegID;
                    Details.Template_Id = Template_Id;
                    Details.HeaderImage_HtmlCode = HeaderImage_HtmlCode;
                    Details.HeaderImage_DD_ImageLink = HeaderMessage_DD_ImageLink;
                    Details.HeaderImage_DD_AlternateText = HeaderImage_DD_AlternateText;
                    Details.HeaderImage_DD_Link = HeaderImage_DD_Link;
                    Details.HeaderImage_UpdateTime = HeaderImage_UpdateTime;
                    //------- Section 2 
                    Details.HeaderSearch_HtmlCode = HeaderSearch_HtmlCode;
                    Details.HeaderSearch_UpdateTime = HeaderSearch_UpdateTime;
                    //------- Section 3
                    Details.HeaderNotification_HtmlCode = HeaderNotification_HtmlCode;
                    Details.HeaderNotification_DD_Link = HeaderNotification_DD_Link;
                    Details.HeaderNotification_DD_Icon = HeaderNotification_DD_Icon;
                    Details.HeaderNotification_DD_Title = HeaderNotification_DD_Title;
                    Details.HeaderNotification_DD_DetailsOrTime = HeaderNotification_DD_DetailsOrTime;
                    Details.HeaderNotification_UpdateTime = HeaderNotification_UpdateTime;
                    //------- Section 4
                    Details.HeaderMessage_HtmlCode = HeaderMessage_HtmlCode;
                    Details.HeaderMessage_DD_Link = HeaderMessage_DD_Link;
                    Details.HeaderMessage_DD_ImageLink = HeaderMessage_DD_ImageLink;
                    Details.HeaderMessage_DD_Title = HeaderMessage_DD_Title;
                    Details.HeaderMessage_DD_DetailsOrTime = HeaderMessage_DD_DetailsOrTime;
                    Details.HeaderMessage_UpdateTime = HeaderMessage_UpdateTime;
                    //------- Section 5
                    Details.HeaderProfile_HtmlCode1 = HeaderProfile_HtmlCode1;
                    Details.HeaderProfile_HtmlCode2 = HeaderProfile_HtmlCode2;
                    Details.HeaderProfile_DD1_ImageLink = HeaderProfile_DD1_ImageLink;
                    Details.HeaderProfile_DD1_Name = HeaderProfile_DD1_Name;
                    Details.HeaderProfile_DD2_Link = HeaderProfile_DD2_Link;
                    Details.HeaderProfile_DD2_Name = HeaderProfile_DD2_Name;
                    Details.HeaderProfile_UpdateTime = HeaderProfile_UpdateTime;
                    //------- Section 6
                    Details.BodyBar_HtmlCode1 = BodyBar_HtmlCode1;
                    Details.BodyBar_HtmlCode2 = BodyBar_HtmlCode2;
                    Details.BodyBar_DD1_Link = BodyBar_DD1_Link;
                    Details.BodyBar_DD1_BarName = BodyBar_DD1_BarName;
                    Details.BodyBar_DD2_Link = BodyBar_DD2_Link;
                    Details.BodyBar_DD2_BarName = BodyBar_DD2_BarName;
                    Details.BodyBar_UpdateTime = BodyBar_UpdateTime;
                    //------- Section 7
                    Details.Footer_HtmlCode = Footer_HtmlCode;
                    Details.Footer_UpdateTime = Footer_UpdateTime;
                    if (template.HtmlDesign(Details))
                    {
                        lblHtmlDesign_Result.Text = "<div class='alert alert-success'>All Code is Saved.</div>";
                    }
                    else
                    {
                        lblHtmlDesign_Result.Text = "<div class='alert alert-danger'>Some issus :" + template.ErrorMessege + "</div>";
                    }
                }
                else
                {
                    lblHtmlDesign_Result.Text = "<div class='alert alert-danger'>You Can't left any Sections Default Data and HtmlCodes. TryAgain! </div>";
                }

                

            }
            if(RBHtmlDesign_Save_SelectionSections.Checked)
            {
                lblHtmlDesign_Result.Text = "";
                if (chkHtmlDesign_Section1.Checked)
                {
                    if(HeaderImage_HtmlCode!="" && HeaderImage_DD_ImageLink != "" && HeaderImage_DD_AlternateText != "" && HeaderImage_DD_Link != "")
                    {
                        if (template.HtmlDesign(new HtmlDesign()
                        {
                            RegID = RegID,
                            Template_Id = Template_Id,
                            HeaderImage_HtmlCode = HeaderImage_HtmlCode,
                            HeaderImage_DD_ImageLink = HeaderImage_DD_ImageLink,
                            HeaderImage_DD_AlternateText = HeaderImage_DD_AlternateText,
                            HeaderImage_DD_Link = HeaderImage_DD_Link,
                            HeaderImage_UpdateTime= HeaderImage_UpdateTime,
                            HeaderSearch_HtmlCode = string.Empty,
                            HeaderSearch_UpdateTime = string.Empty,
                            HeaderNotification_HtmlCode = string.Empty,
                            HeaderNotification_DD_Link = string.Empty,
                            HeaderNotification_DD_Icon = string.Empty,
                            HeaderNotification_DD_Title = string.Empty,
                            HeaderNotification_DD_DetailsOrTime = string.Empty,
                            HeaderNotification_UpdateTime = string.Empty,
                            HeaderMessage_HtmlCode = string.Empty,
                            HeaderMessage_DD_Link = string.Empty,
                            HeaderMessage_DD_ImageLink = string.Empty,
                            HeaderMessage_DD_Title = string.Empty,
                            HeaderMessage_DD_DetailsOrTime = string.Empty,
                            HeaderMessage_UpdateTime = string.Empty,
                            HeaderProfile_HtmlCode1 = string.Empty,
                            HeaderProfile_HtmlCode2 = string.Empty,
                            HeaderProfile_DD1_ImageLink = string.Empty,
                            HeaderProfile_DD1_Name = string.Empty,
                            HeaderProfile_DD2_Link = string.Empty,
                            HeaderProfile_DD2_Name = string.Empty,
                            HeaderProfile_UpdateTime = string.Empty,
                            BodyBar_HtmlCode1 = string.Empty,
                            BodyBar_HtmlCode2 = string.Empty,
                            BodyBar_DD1_Link = string.Empty,
                            BodyBar_DD1_BarName = string.Empty,
                            BodyBar_DD2_Link = string.Empty,
                            BodyBar_DD2_BarName = string.Empty,
                            BodyBar_UpdateTime = string.Empty,
                            Footer_HtmlCode = string.Empty,
                            Footer_UpdateTime = string.Empty


                    }))
                        {
                            lblHtmlDesign_Result.Text += "<div class='alert alert-success'>Section 1 Code is Saved.</div></br>";
                        }
                        else
                        {
                            lblHtmlDesign_Result.Text += "<div class='alert alert-danger'>Section 1 issus :" + template.ErrorServerMessege + "</div>";
                        }
                    }
                    else
                    {
                        lblHtmlDesign_Result.Text += "<div class='alert alert-danger'>Fill All Froms (HtmlCode and Default Value) in Section 1.</div>";
                    }
                }
                if(chkHtmlDesign_Section2.Checked)
                {
                    if (HeaderSearch_HtmlCode != "")
                    {
                        if (template.HtmlDesign(new HtmlDesign()
                        {
                            RegID = RegID,
                            Template_Id = Template_Id,
                            HeaderSearch_HtmlCode = HeaderSearch_HtmlCode,
                            HeaderSearch_UpdateTime = HeaderSearch_UpdateTime,
                            HeaderImage_HtmlCode = string.Empty,
                            HeaderImage_DD_ImageLink = string.Empty,
                            HeaderImage_DD_AlternateText = string.Empty,
                            HeaderImage_DD_Link = string.Empty,
                            HeaderImage_UpdateTime = string.Empty,                            
                            HeaderNotification_HtmlCode = string.Empty,
                            HeaderNotification_DD_Link = string.Empty,
                            HeaderNotification_DD_Icon = string.Empty,
                            HeaderNotification_DD_Title = string.Empty,
                            HeaderNotification_DD_DetailsOrTime = string.Empty,
                            HeaderNotification_UpdateTime = string.Empty,
                            HeaderMessage_HtmlCode = string.Empty,
                            HeaderMessage_DD_Link = string.Empty,
                            HeaderMessage_DD_ImageLink = string.Empty,
                            HeaderMessage_DD_Title = string.Empty,
                            HeaderMessage_DD_DetailsOrTime = string.Empty,
                            HeaderMessage_UpdateTime = string.Empty,
                            HeaderProfile_HtmlCode1 = string.Empty,
                            HeaderProfile_HtmlCode2 = string.Empty,
                            HeaderProfile_DD1_ImageLink = string.Empty,
                            HeaderProfile_DD1_Name = string.Empty,
                            HeaderProfile_DD2_Link = string.Empty,
                            HeaderProfile_DD2_Name = string.Empty,
                            HeaderProfile_UpdateTime = string.Empty,
                            BodyBar_HtmlCode1 = string.Empty,
                            BodyBar_HtmlCode2 = string.Empty,
                            BodyBar_DD1_Link = string.Empty,
                            BodyBar_DD1_BarName = string.Empty,
                            BodyBar_DD2_Link = string.Empty,
                            BodyBar_DD2_BarName = string.Empty,
                            BodyBar_UpdateTime = string.Empty,
                            Footer_HtmlCode = string.Empty,
                            Footer_UpdateTime = string.Empty
                        }))
                        {
                            lblHtmlDesign_Result.Text += "<div class='alert alert-success'>Section 2 Code is Saved.</div></br>";
                        }
                        else
                        {
                            lblHtmlDesign_Result.Text += "<div class='alert alert-danger'>Section 2 issus :" + template.ErrorMessege + "</div>";
                        }
                    }
                    else
                    {
                        lblHtmlDesign_Result.Text += "<div class='alert alert-danger'>Fill Froms (HtmlCode) in Section 2.</div>";
                    }
                }
                if (chkHtmlDesign_Section3.Checked)
                {
                    if(HeaderNotification_HtmlCode!="" && HeaderNotification_DD_Link!=""&& HeaderNotification_DD_Icon!="" && HeaderNotification_DD_Title!=""&& HeaderNotification_DD_DetailsOrTime!="")
                    {
                        if (template.HtmlDesign(new HtmlDesign()
                        {
                            RegID = RegID,
                            Template_Id = Template_Id,
                            HeaderNotification_HtmlCode = HeaderNotification_HtmlCode,
                            HeaderNotification_DD_Link = HeaderNotification_DD_Link,
                            HeaderNotification_DD_Icon = HeaderNotification_DD_Icon,
                            HeaderNotification_DD_Title = HeaderNotification_DD_Title,
                            HeaderNotification_DD_DetailsOrTime = HeaderNotification_DD_DetailsOrTime,
                            HeaderNotification_UpdateTime = HeaderNotification_UpdateTime,
                            HeaderImage_HtmlCode = string.Empty,
                            HeaderImage_DD_ImageLink = string.Empty,
                            HeaderImage_DD_AlternateText = string.Empty,
                            HeaderImage_DD_Link = string.Empty,
                            HeaderImage_UpdateTime = string.Empty,
                            HeaderSearch_HtmlCode = string.Empty,
                            HeaderSearch_UpdateTime = string.Empty,
                            HeaderMessage_HtmlCode = string.Empty,
                            HeaderMessage_DD_Link = string.Empty,
                            HeaderMessage_DD_ImageLink = string.Empty,
                            HeaderMessage_DD_Title = string.Empty,
                            HeaderMessage_DD_DetailsOrTime = string.Empty,
                            HeaderMessage_UpdateTime = string.Empty,
                            HeaderProfile_HtmlCode1 = string.Empty,
                            HeaderProfile_HtmlCode2 = string.Empty,
                            HeaderProfile_DD1_ImageLink = string.Empty,
                            HeaderProfile_DD1_Name = string.Empty,
                            HeaderProfile_DD2_Link = string.Empty,
                            HeaderProfile_DD2_Name = string.Empty,
                            HeaderProfile_UpdateTime = string.Empty,
                            BodyBar_HtmlCode1 = string.Empty,
                            BodyBar_HtmlCode2 = string.Empty,
                            BodyBar_DD1_Link = string.Empty,
                            BodyBar_DD1_BarName = string.Empty,
                            BodyBar_DD2_Link = string.Empty,
                            BodyBar_DD2_BarName = string.Empty,
                            BodyBar_UpdateTime = string.Empty,
                            Footer_HtmlCode = string.Empty,
                            Footer_UpdateTime = string.Empty
                        }))
                        {
                            lblHtmlDesign_Result.Text += "<div class='alert alert-success'>Section 3 Code is Saved.</div></br>";
                        }
                        else
                        {
                            lblHtmlDesign_Result.Text += "<div class='alert alert-danger'>Section 3 issus :" + template.ErrorMessege + "</div>";
                        }
                    }
                    else
                    {
                        lblHtmlDesign_Result.Text += "<div class='alert alert-danger'>Fill All Froms (HtmlCode and Default Value) in Section 3.</div>";
                    }
                }
                if (chkHtmlDesign_Section4.Checked)
                {
                    if(HeaderMessage_HtmlCode!=""&& HeaderMessage_DD_Link!="" && HeaderMessage_DD_ImageLink!=""&& HeaderMessage_DD_Title!=""&& HeaderMessage_DD_DetailsOrTime!="")
                    {
                        if (template.HtmlDesign(new HtmlDesign()
                        {
                            RegID = RegID,
                            Template_Id = Template_Id,
                            HeaderMessage_HtmlCode = HeaderMessage_HtmlCode,
                            HeaderMessage_DD_Link = HeaderMessage_DD_Link,
                            HeaderMessage_DD_ImageLink = HeaderMessage_DD_ImageLink,
                            HeaderMessage_DD_Title = HeaderMessage_DD_Title,
                            HeaderMessage_DD_DetailsOrTime = HeaderMessage_DD_DetailsOrTime,
                            HeaderMessage_UpdateTime = HeaderMessage_UpdateTime,
                            HeaderImage_HtmlCode = string.Empty,
                            HeaderImage_DD_ImageLink = string.Empty,
                            HeaderImage_DD_AlternateText = string.Empty,
                            HeaderImage_DD_Link = string.Empty,
                            HeaderImage_UpdateTime = string.Empty,
                            HeaderSearch_HtmlCode = string.Empty,
                            HeaderSearch_UpdateTime = string.Empty,
                            HeaderNotification_HtmlCode = string.Empty,
                            HeaderNotification_DD_Link = string.Empty,
                            HeaderNotification_DD_Icon = string.Empty,
                            HeaderNotification_DD_Title = string.Empty,
                            HeaderNotification_DD_DetailsOrTime = string.Empty,
                            HeaderNotification_UpdateTime = string.Empty,
                            HeaderProfile_HtmlCode1 = string.Empty,
                            HeaderProfile_HtmlCode2 = string.Empty,
                            HeaderProfile_DD1_ImageLink = string.Empty,
                            HeaderProfile_DD1_Name = string.Empty,
                            HeaderProfile_DD2_Link = string.Empty,
                            HeaderProfile_DD2_Name = string.Empty,
                            HeaderProfile_UpdateTime = string.Empty,
                            BodyBar_HtmlCode1 = string.Empty,
                            BodyBar_HtmlCode2 = string.Empty,
                            BodyBar_DD1_Link = string.Empty,
                            BodyBar_DD1_BarName = string.Empty,
                            BodyBar_DD2_Link = string.Empty,
                            BodyBar_DD2_BarName = string.Empty,
                            BodyBar_UpdateTime = string.Empty,
                            Footer_HtmlCode = string.Empty,
                            Footer_UpdateTime = string.Empty
                        }))
                        {
                            lblHtmlDesign_Result.Text += "<div class='alert alert-success'>Section 4 Code is Saved.</div></br>";
                        }
                        else
                        {
                            lblHtmlDesign_Result.Text += "<div class='alert alert-danger'>Section 4 issus :" + template.ErrorMessege + "</div>";
                        }
                    }
                    else
                    {
                        lblHtmlDesign_Result.Text += "<div class='alert alert-danger'>Fill All Froms (HtmlCode and Default Value) in Section 4.</div>";
                    }
                    
                }
                if (chkHtmlDesign_Section5.Checked)
                {
                    if(HeaderProfile_HtmlCode1!=""&& HeaderProfile_HtmlCode2!=""&& HeaderProfile_DD1_ImageLink!=""
                        && HeaderProfile_DD1_Name!=""&& HeaderProfile_DD2_Link!=""&& HeaderProfile_DD2_Name!="")
                    {
                        if (template.HtmlDesign(new HtmlDesign()
                        {
                            RegID = RegID,
                            Template_Id = Template_Id,
                            HeaderProfile_HtmlCode1 = HeaderProfile_HtmlCode1,
                            HeaderProfile_HtmlCode2 = HeaderProfile_HtmlCode2,
                            HeaderProfile_DD1_ImageLink = HeaderProfile_DD1_ImageLink,
                            HeaderProfile_DD1_Name = HeaderProfile_DD1_Name,
                            HeaderProfile_DD2_Link = HeaderProfile_DD2_Link,
                            HeaderProfile_DD2_Name = HeaderProfile_DD2_Name,
                            HeaderProfile_UpdateTime = HeaderProfile_UpdateTime,
                            HeaderImage_HtmlCode = string.Empty,
                            HeaderImage_DD_ImageLink = string.Empty,
                            HeaderImage_DD_AlternateText = string.Empty,
                            HeaderImage_DD_Link = string.Empty,
                            HeaderImage_UpdateTime = string.Empty,
                            HeaderSearch_HtmlCode = string.Empty,
                            HeaderSearch_UpdateTime = string.Empty,
                            HeaderNotification_HtmlCode = string.Empty,
                            HeaderNotification_DD_Link = string.Empty,
                            HeaderNotification_DD_Icon = string.Empty,
                            HeaderNotification_DD_Title = string.Empty,
                            HeaderNotification_DD_DetailsOrTime = string.Empty,
                            HeaderNotification_UpdateTime = string.Empty,
                            HeaderMessage_HtmlCode = string.Empty,
                            HeaderMessage_DD_Link = string.Empty,
                            HeaderMessage_DD_ImageLink = string.Empty,
                            HeaderMessage_DD_Title = string.Empty,
                            HeaderMessage_DD_DetailsOrTime = string.Empty,
                            HeaderMessage_UpdateTime = string.Empty,
                            BodyBar_HtmlCode1 = string.Empty,
                            BodyBar_HtmlCode2 = string.Empty,
                            BodyBar_DD1_Link = string.Empty,
                            BodyBar_DD1_BarName = string.Empty,
                            BodyBar_DD2_Link = string.Empty,
                            BodyBar_DD2_BarName = string.Empty,
                            BodyBar_UpdateTime = string.Empty,
                            Footer_HtmlCode = string.Empty,
                            Footer_UpdateTime = string.Empty
                        }))
                        {
                            lblHtmlDesign_Result.Text += "<div class='alert alert-success'>Section 5 Code is Saved.</div></br>";
                        }
                        else
                        {
                            lblHtmlDesign_Result.Text += "<div class='alert alert-danger'>Section 5 issus :" + template.ErrorMessege + "</div>";
                        }
                    }
                    else
                    {
                        lblHtmlDesign_Result.Text += "<div class='alert alert-danger'>Fill All Froms (HtmlCode and Default Value) in Section 5.</div>";
                    }
                }
                if (chkHtmlDesign_Section6.Checked)
                {
                    if(BodyBar_HtmlCode1!=""&& BodyBar_HtmlCode2!=""&& BodyBar_DD1_Link!=""&& BodyBar_DD1_BarName!=""
                       && BodyBar_DD2_Link!=""&& BodyBar_DD2_BarName!="")
                    {
                        if (template.HtmlDesign(new HtmlDesign()
                        {
                            RegID = RegID,
                            Template_Id = Template_Id,
                            BodyBar_HtmlCode1 = BodyBar_HtmlCode1,
                            BodyBar_HtmlCode2 = BodyBar_HtmlCode2,
                            BodyBar_DD1_Link = BodyBar_DD1_Link,
                            BodyBar_DD1_BarName = BodyBar_DD1_BarName,
                            BodyBar_DD2_Link = BodyBar_DD2_Link,
                            BodyBar_DD2_BarName = BodyBar_DD2_BarName,
                            BodyBar_UpdateTime = BodyBar_UpdateTime,
                            HeaderImage_HtmlCode = string.Empty,
                            HeaderImage_DD_ImageLink = string.Empty,
                            HeaderImage_DD_AlternateText = string.Empty,
                            HeaderImage_DD_Link = string.Empty,
                            HeaderImage_UpdateTime = string.Empty,
                            HeaderSearch_HtmlCode = string.Empty,
                            HeaderSearch_UpdateTime = string.Empty,
                            HeaderNotification_HtmlCode = string.Empty,
                            HeaderNotification_DD_Link = string.Empty,
                            HeaderNotification_DD_Icon = string.Empty,
                            HeaderNotification_DD_Title = string.Empty,
                            HeaderNotification_DD_DetailsOrTime = string.Empty,
                            HeaderNotification_UpdateTime = string.Empty,
                            HeaderMessage_HtmlCode = string.Empty,
                            HeaderMessage_DD_Link = string.Empty,
                            HeaderMessage_DD_ImageLink = string.Empty,
                            HeaderMessage_DD_Title = string.Empty,
                            HeaderMessage_DD_DetailsOrTime = string.Empty,
                            HeaderMessage_UpdateTime = string.Empty,
                            HeaderProfile_HtmlCode1 = string.Empty,
                            HeaderProfile_HtmlCode2 = string.Empty,
                            HeaderProfile_DD1_ImageLink = string.Empty,
                            HeaderProfile_DD1_Name = string.Empty,
                            HeaderProfile_DD2_Link = string.Empty,
                            HeaderProfile_DD2_Name = string.Empty,
                            HeaderProfile_UpdateTime = string.Empty,
                            Footer_HtmlCode = string.Empty,
                            Footer_UpdateTime = string.Empty
                        }))
                        {
                            lblHtmlDesign_Result.Text += "<div class='alert alert-success'>Section 6 Code is Saved.</div></br>";
                        }
                        else
                        {
                            lblHtmlDesign_Result.Text += "<div class='alert alert-danger'>Section 6 issus :" + template.ErrorMessege + "</div>";
                        }
                    }
                    else
                    {
                        lblHtmlDesign_Result.Text += "<div class='alert alert-danger'>Fill All Froms (HtmlCode and Default Value) in Section 6.</div>";
                    }

                }
                if (chkHtmlDesign_Section7.Checked)
                {
                    if(Footer_HtmlCode!="")
                    {
                        if (template.HtmlDesign(new HtmlDesign()
                        {
                            RegID = RegID,
                            Template_Id = Template_Id,
                            Footer_HtmlCode = Footer_HtmlCode,
                            Footer_UpdateTime = Footer_UpdateTime,
                            HeaderImage_HtmlCode = string.Empty,
                            HeaderImage_DD_ImageLink = string.Empty,
                            HeaderImage_DD_AlternateText = string.Empty,
                            HeaderImage_DD_Link = string.Empty,
                            HeaderImage_UpdateTime = string.Empty,
                            HeaderSearch_HtmlCode = string.Empty,
                            HeaderSearch_UpdateTime = string.Empty,
                            HeaderNotification_HtmlCode = string.Empty,
                            HeaderNotification_DD_Link = string.Empty,
                            HeaderNotification_DD_Icon = string.Empty,
                            HeaderNotification_DD_Title = string.Empty,
                            HeaderNotification_DD_DetailsOrTime = string.Empty,
                            HeaderNotification_UpdateTime = string.Empty,
                            HeaderMessage_HtmlCode = string.Empty,
                            HeaderMessage_DD_Link = string.Empty,
                            HeaderMessage_DD_ImageLink = string.Empty,
                            HeaderMessage_DD_Title = string.Empty,
                            HeaderMessage_DD_DetailsOrTime = string.Empty,
                            HeaderMessage_UpdateTime = string.Empty,
                            HeaderProfile_HtmlCode1 = string.Empty,
                            HeaderProfile_HtmlCode2 = string.Empty,
                            HeaderProfile_DD1_ImageLink = string.Empty,
                            HeaderProfile_DD1_Name = string.Empty,
                            HeaderProfile_DD2_Link = string.Empty,
                            HeaderProfile_DD2_Name = string.Empty,
                            HeaderProfile_UpdateTime = string.Empty,
                            BodyBar_HtmlCode1 = string.Empty,
                            BodyBar_HtmlCode2 = string.Empty,
                            BodyBar_DD1_Link = string.Empty,
                            BodyBar_DD1_BarName = string.Empty,
                            BodyBar_DD2_Link = string.Empty,
                            BodyBar_DD2_BarName = string.Empty,
                            BodyBar_UpdateTime = string.Empty
                        }))
                        {
                            lblHtmlDesign_Result.Text += "<div class='alert alert-success'>Section 7 Code is Saved.</div></br>";
                        }
                        else
                        {
                            lblHtmlDesign_Result.Text += "<div class='alert alert-danger'>Section 7 issus :" + template.ErrorMessege + "</div>";
                        }
                    }
                    else
                    {
                        lblHtmlDesign_Result.Text += "<div class='alert alert-danger'>Fill All Froms (HtmlCode and Default Value) in Section 7.</div>";
                    }

                }

            }


        }






        #endregion

        protected void btnPreview_Click(object sender, EventArgs e)
        {
            Response.Redirect("Preview");
        }

        private void ShowLayoutData()
        {
            //DeleteCommand="DELETE FROM [Template_Layout] WHERE [Layout_ID] = @Layout_ID" 
            //SelectCommand = "SELECT * FROM [Template_Layout]"
            string Con_String = template.GetConnectionString();
            SqlDataSource1.ConnectionString = Con_String;
            SqlDataSource1.ProviderName = "System.Data.SqlClient";
            SqlDataSource1.SelectCommand = "SELECT * FROM [Template_Layout]";
            SqlDataSource1.DeleteCommand = "DELETE FROM [Template_Layout] WHERE [Layout_ID] = @Layout_ID";
            GridView1.DataBind();
            //SqlDataSource1.UpdateCommandType = SqlDataSourceCommandType.Text;
            //SqlDataSource1.DeleteParameters.Add(new Parameter("@ID","2"));
            SqlDataSource_Button.ConnectionString = Con_String;
            SqlDataSource_Button.ProviderName = "System.Data.SqlClient";
            SqlDataSource_Button.SelectCommand = "SELECT * FROM [Template_Button]";
            SqlDataSource_Button.DeleteCommand = "DELETE FROM [Template_Button] WHERE [Button_ID] = @Button_ID";
            GridView_Button.DataBind();

            SqlDataSource_lebelAlert.ConnectionString = Con_String;
            SqlDataSource_lebelAlert.ProviderName = "System.Data.SqlClient";
            SqlDataSource_lebelAlert.SelectCommand = "SELECT * FROM [Template_Alert]";
            SqlDataSource_lebelAlert.DeleteCommand = "DELETE FROM [Template_Alert] WHERE [Alert_ID] = @Alert_ID";
            GridView_LabelAlert.DataBind();

            SqlDataSource_DataTable.ConnectionString = Con_String;
            SqlDataSource_DataTable.ProviderName = "System.Data.SqlClient";
            SqlDataSource_DataTable.SelectCommand = "SELECT * FROM [Template_DataTable]";
            SqlDataSource_DataTable.DeleteCommand = "DELETE FROM [Template_DataTable] WHERE [DataTable_ID] = @DataTable_ID";
            GridView_DataTable.DataBind();

            SqlDataSource_TextBox.ConnectionString = Con_String;
            SqlDataSource_TextBox.ProviderName = "System.Data.SqlClient";
            SqlDataSource_TextBox.SelectCommand = "SELECT * FROM [Template_TextBox]";
            SqlDataSource_TextBox.DeleteCommand = "DELETE FROM [Template_TextBox] WHERE [TextBox_ID] = @TextBox_ID";
            GridView_TextBox.DataBind();

            SqlDataSource_RadioButton.ConnectionString = Con_String;
            SqlDataSource_RadioButton.ProviderName = "System.Data.SqlClient";
            SqlDataSource_RadioButton.SelectCommand = "SELECT * FROM [Template_RadioButtion]";
            SqlDataSource_RadioButton.DeleteCommand = "DELETE FROM [Template_RadioButtion] WHERE [RadioButton_ID] = @RadioButton_ID";
            GridView_RadioButton.DataBind();

            SqlDataSource_CheckBox.ConnectionString = Con_String;
            SqlDataSource_CheckBox.ProviderName = "System.Data.SqlClient";
            SqlDataSource_CheckBox.SelectCommand = "SELECT * FROM [Template_CheckBox]";
            SqlDataSource_CheckBox.DeleteCommand = "DELETE FROM [Template_CheckBox] WHERE [CheckBox_ID] = @CheckBox_ID";
            GridView_CheckBox.DataBind();

            SqlDataSource_DemoPage.ConnectionString = Con_String;
            SqlDataSource_DemoPage.ProviderName = "System.Data.SqlClient";
            SqlDataSource_DemoPage.SelectCommand = "SELECT * FROM [Template_DemoPage]";
            SqlDataSource_DemoPage.DeleteCommand = "DELETE FROM [Template_DemoPage] WHERE [DemoPage_ID] = @DemoPage_ID";
            GridView_DemoPage.DataBind();
        }
        #region Layout

        protected void btnCssJsSave_Click(object sender, EventArgs e)
        {
            string ID = ddlCssJs.SelectedValue.ToString();
            bool Match = false;
            foreach (Files file in CssJs)
            {
                if (ID == file.ID)
                {
                    Match = true;
                    break;
                }
            }
            if (!Match)
            {
                CssJs.Add(new Files() { FileName = template.FullPath(ID), ID = ID });
                showjsCss();
            }
            else
            {
                lblCssJs_Result.Text = "<div class='alert alert-danger'> Already insert. </div>";
            }
        }

        protected void btnDeleteCssJs_Click(object sender, EventArgs e)
        {
            CssJs.Clear();
            showjsCss();
            lblCssJs_Result.Text = "<div class='alert alert-success'>All Files is deleted</div>";
        }
        private void showLayoutImageShow()
        {
            ddlLayout_ImageShow.Items.Clear();
            ddlLayout_ImageShow.Items.Add(new ListItem("Select Image", "0"));
            foreach (Files f in template.ShowImages())
            {
                ddlLayout_ImageShow.Items.Add(new ListItem(f.FileName + " | (" + f.Path + ")", f.ID));
            }

            ddlDemoPage_ShowLayout.Items.Clear();
            foreach (Layout f in template.ShowLayoutData())
            {
                ddlDemoPage_ShowLayout.Items.Add(new ListItem(f.LayoutName,f.ID));
            }
            ddlDemoPage_DataTable.Items.Clear();
            foreach (DataTables f in template.ShowDataTable())
            {
                ddlDemoPage_DataTable.Items.Add(new ListItem(f.DataTableName, f.ID));
            }
            ddlDemoPage_Button.Items.Clear();
            foreach (Buttons f in template.ShowButtons())
            {
                ddlDemoPage_Button.Items.Add(new ListItem(f.ButtonName, f.ID));
            }
            ddlDemoPage_LabelAlert.Items.Clear();
            foreach (Alert f in template.ShowAlert())
            {
                ddlDemoPage_LabelAlert.Items.Add(new ListItem(f.AlertName, f.ID));
            }
            ddlDemoPage_TextBox.Items.Clear();
            foreach (TextBoxs f in template.ShowTextBoxs())
            {
                ddlDemoPage_TextBox.Items.Add(new ListItem(f.TextBoxName, f.ID));
            }
            ddlDemoPage_RadioButton.Items.Clear();
            foreach (RadioButtons f in template.ShowRadioButtons())
            {
                ddlDemoPage_RadioButton.Items.Add(new ListItem(f.RadioButtonName, f.ID));
            }
            ddlDemoPage_CheckBox.Items.Clear();
            foreach (CheckBoxs f in template.ShowCheckBoxs())
            {
                ddlDemoPage_CheckBox.Items.Add(new ListItem(f.CheckBoxName, f.ID));
            }
        }
        protected void ddlLayout_ImageShow_TextChanged(object sender, EventArgs e)
        {
            string ID = ddlLayout_ImageShow.SelectedValue.ToString();
            foreach (Files f in template.ShowImages())
            {
                if(f.ID==ID)
                {
                    imgLayout.ImageUrl = "~/"+f.Path;
                    break;
                }
            }

        }
        protected void btnLayout_Save_Click(object sender, EventArgs e)
        {
            if (txtLayout_HtmlCode.Text != "")
            {
                string CssJsID = "";
                string CssJsFile = "";
                foreach (Files f in CssJs)
                {
                    CssJsID += f.ID + ",";
                    if(Path.GetExtension(f.FileName.ToLower())==".css")
                        CssJsFile += "<link rel=\"stylesheet\" href=\"../../" + f.FileName + "\"/>";
                    if (Path.GetExtension(f.FileName.ToLower()) == ".js")
                        CssJsFile += "<script src=\"../../" + f.FileName + "\"></script>";
                }
                
                DateTimeZone dt = new DateTimeZone(((CMSmaster)this.Master).Offset);
                if (template.InsertLayout(new Layout()
                {
                    RegID = ((CMSmaster)this.Master).RegID,
                    HTML = txtLayout_HtmlCode.Text,
                    FileUpload_Id = ddlLayout_ImageShow.SelectedValue.ToString(),
                    FullPath = imgLayout.ImageUrl.Replace("~/",""),
                    Template_Id = TemplateID,
                    DateTime=dt.DateTimeResult(),
                    CssJs= CssJsFile,
                    CssJs_ID=CssJsID,
                    TotalCode=Convert.ToInt32(txtLayout_DD_Code.Text),
                    LayoutName=txtLayout_DD_Name.Text
                }))
                {
                    GridView1.DataBind();
                    CssJs.Clear();
                    lblCssJs_Result.Text = "";
                    lblLayout_Result.Text = "<div class='alert alert-success'> Layout Saved </div>";
                }
                else
                {
                    lblLayout_Result.Text = "<div class='alert alert-danger'> Some Problem issus -> " + template.ErrorServerMessege + " </div>";
                }
            }
            else
            {
                lblLayout_Result.Text = "<div class='alert alert-danger'> Html Code Must be Include. </div>";
            }
        }

        protected void btnLayout_Click(object sender, EventArgs e)
        {
            PanelShow(panel.Layout);
        }
        #endregion


       

       

        protected void btnDropDown_Click(object sender, EventArgs e)
        {
            PanelShow(panel.Droupdown);
        }

        protected void btnRadioButton_Click(object sender, EventArgs e)
        {
            PanelShow(panel.TextBox);
            pnlCbox.Visible = false;
            pnlRbox.Visible = true;
            pnlTbox.Visible = false;
            //Response.Write("RadioButton");
        }

        protected void btnCheckBox_Click(object sender, EventArgs e)
        {
            PanelShow(panel.TextBox);
            pnlCbox.Visible = true;
            pnlRbox.Visible = false;
            pnlTbox.Visible = false;
            //Response.Write("CheckBox");
        }

        #region Label Alert
        protected void btnLabel_Click(object sender, EventArgs e)
        {
            PanelShow(panel.Lablel);
        }
        protected void btnAlert_Click(object sender, EventArgs e)
        {
            //PanelShow(panel.Alert);
        }
        protected void btnLabelAlert_HtmlCode_Click(object sender, EventArgs e)
        {
            if (txtLabelAlert_HtmlCode.Text != "")
            {
                string CssJsID = "";
                string CssJsFile = "";
                foreach (Files f in CssJs)
                {
                    CssJsID += f.ID + ",";
                    if (Path.GetExtension(f.FileName.ToLower()) == ".css")
                        CssJsFile += "<link rel=\"stylesheet\" href=\"../../" + f.FileName + "\"/>";
                    if (Path.GetExtension(f.FileName.ToLower()) == ".js")
                        CssJsFile += "<script src=\"../../" + f.FileName + "\"></script>";
                }

                DateTimeZone dt = new DateTimeZone(((CMSmaster)this.Master).Offset);
                if (template.InsertAlert(new Alert()
                {
                    RegID = ((CMSmaster)this.Master).RegID,
                    HtmlCode = txtLabelAlert_HtmlCode.Text,
                    Template_Id = TemplateID,
                    DateTime = dt.DateTimeResult(),
                    CssJs = CssJsFile,
                    CssJsID = CssJsID,
                    DefaultData = txtLabelAlert_DD_Text.Text,
                    AlertName=txtLabelAlert_DD_LabelName.Text
                }))
                {
                    GridView_LabelAlert.DataBind();
                    CssJs.Clear();
                    lblLabelAlert_Result.Text = "";
                    lblLabelAlert_Result.Text = "<div class='alert alert-success'> Label Saved </div>";
                }
                else
                {
                    lblLabelAlert_Result.Text = "<div class='alert alert-danger'> Some Problem issus -> " + template.ErrorServerMessege + " </div>";
                }
            }
            else
            {
                lblLabelAlert_Result.Text = "<div class='alert alert-danger'> Html Code Must be Include. </div>";
            }
        }
        #endregion

        protected void btnDemoPage_Click(object sender, EventArgs e)
        {
            //PanelShow(panel.DempPage);
            PanelShow(panel.BarControl);
            chkDemoPage.Checked = true;
            pnlDemopage_.Visible = true;
        }

        #region DataTable
        protected void btnDataTable_Click(object sender, EventArgs e)
        {
            if (txtDataTable_HtmlCode1.Text != "" && txtDataTable_HtmlCode2.Text != "" && txtDataTable_HtmlCode3.Text != "")
            {
                string CssJsID = "";
                string CssJsFile = "";
                foreach (Files f in CssJs)
                {
                    CssJsID += f.ID + ",";
                    if (Path.GetExtension(f.FileName.ToLower()) == ".css")
                        CssJsFile += "<link rel=\"stylesheet\" href=\"../../" + f.FileName + "\"/>";
                    if (Path.GetExtension(f.FileName.ToLower()) == ".js")
                        CssJsFile += "<script src=\"../../" + f.FileName + "\"></script>";
                }

                DateTimeZone dt = new DateTimeZone(((CMSmaster)this.Master).Offset);
                if (template.InsertDataTable(new DataTables()
                {
                    RegID = ((CMSmaster)this.Master).RegID,
                    HtmlCode1 = txtDataTable_HtmlCode1.Text,
                    HtmlCode2 = txtDataTable_HtmlCode2.Text,
                    HtmlCode3 = txtDataTable_HtmlCode3.Text,
                    Template_Id = TemplateID,
                    DateTime = dt.DateTimeResult(),
                    CssJs = CssJsFile,
                    CssJsID = CssJsID,
                    ColoumData=txtDataTable_DD_ColoumData.Text,
                    RowData=txtDataTable_DD_RowData.Text,
                    DataTableName=txtDataTable_DD_DataTableName.Text
                }))
                {
                    GridView_DataTable.DataBind();
                    CssJs.Clear();
                    lblDataTable_Result.Text = "";
                    lblDataTable_Result.Text = "<div class='alert alert-success'> DataTable Saved </div>";
                }
                else
                {
                    lblDataTable_Result.Text = "<div class='alert alert-danger'> Some Problem issus -> " + template.ErrorServerMessege + " </div>";
                }
            }
            else
            {
                lblDataTable_Result.Text = "<div class='alert alert-danger'> Html Code Must be Include. </div>";
            }
        }
        protected void btnDataTables_Click(object sender, EventArgs e)
        {
            PanelShow(panel.DataTables);
        }

        #endregion

        #region TextBox
        protected void btnTextBox_Click(object sender, EventArgs e)
        {
            PanelShow(panel.TextBox);
            pnlCbox.Visible = false;
            pnlRbox.Visible = false;
            pnlTbox.Visible = true;
        }
        protected void btnTextBox_Save_Click(object sender, EventArgs e)
        {
            if (txtTextBox_HtmlCode.Text != "")
            {
                string CssJsID = "";
                string CssJsFile = "";
                foreach (Files f in CssJs)
                {
                    CssJsID += f.ID + ",";
                    if (Path.GetExtension(f.FileName.ToLower()) == ".css")
                        CssJsFile += "<link rel=\"stylesheet\" href=\"../../" + f.FileName + "\"/>";
                    if (Path.GetExtension(f.FileName.ToLower()) == ".js")
                        CssJsFile += "<script src=\"../../" + f.FileName + "\"></script>";
                }

                DateTimeZone dt = new DateTimeZone(((CMSmaster)this.Master).Offset);
                if (template.InsertTextBoxs(new TextBoxs()
                {
                    RegID = ((CMSmaster)this.Master).RegID,
                    HtmlCode = txtTextBox_HtmlCode.Text,
                    Template_Id = TemplateID,
                    DateTime = dt.DateTimeResult(),
                    CssJs = CssJsFile,
                    CssJsID = CssJsID,
                    PlaceHolder=txtTextBox_DD_Placeholder.Text,
                    Value=txtTextBox_DD_Value.Text,
                    TextBoxName=txtTextBox_DD_TextBoxName.Text
                }))
                {
                    GridView_TextBox.DataBind();
                    CssJs.Clear();
                    lblTextBox_Result.Text = "";
                    lblTextBox_Result.Text = "<div class='alert alert-success'> TextBox Saved </div>";
                }
                else
                {
                    lblTextBox_Result.Text = "<div class='alert alert-danger'> Some Problem issus -> " + template.ErrorServerMessege + " </div>";
                }
            }
            else
            {
                lblTextBox_Result.Text = "<div class='alert alert-danger'> Html Code Must be Include. </div>";
            }
        }
        #endregion

        #region Buttons
        protected void btnButton_Click(object sender, EventArgs e)
        {
            PanelShow(panel.Button);
        }
        protected void btnButtons_Save_Click(object sender, EventArgs e)
        {
            if (txtButtonHtmlCode.Text != "")
            {
                string CssJsID = "";
                string CssJsFile = "";
                foreach (Files f in CssJs)
                {
                    CssJsID += f.ID + ",";
                    if (Path.GetExtension(f.FileName.ToLower()) == ".css")
                        CssJsFile += "<link rel=\"stylesheet\" href=\"../../" + f.FileName + "\"/>";
                    if (Path.GetExtension(f.FileName.ToLower()) == ".js")
                        CssJsFile += "<script src=\"../../" + f.FileName + "\"></script>";
                }

                DateTimeZone dt = new DateTimeZone(((CMSmaster)this.Master).Offset);
                if (template.InsertButtons(new Buttons()
                {
                    RegID = ((CMSmaster)this.Master).RegID,
                    HtmlCode = txtButtonHtmlCode.Text,
                    Template_Id = TemplateID,
                    DateTime = dt.DateTimeResult(),
                    CssJs = CssJsFile,
                    CssJsID = CssJsID,
                    DefaultData1=txtButton_DD_Text.Text,
                    DefaultData2=txtButton_DD_Click.Text,
                    ButtonName=txtButton_DD_ButtonName.Text
                }))
                {
                    GridView_Button.DataBind();
                    CssJs.Clear();
                    lblButton_Result.Text = "";
                    lblButton_Result.Text = "<div class='alert alert-success'> Button Saved </div>";
                }
                else
                {
                    lblButton_Result.Text = "<div class='alert alert-danger'> Some Problem issus -> " + template.ErrorServerMessege + " </div>";
                }
            }
            else
            {
                lblButton_Result.Text = "<div class='alert alert-danger'> Html Code Must be Include. </div>";
            }
        }



        #endregion

        protected void btnRadioButton_Save_Click(object sender, EventArgs e)
        {
            if (txtRadioButton_HtmlCode.Text != "")
            {
                string CssJsID = "";
                string CssJsFile = "";
                foreach (Files f in CssJs)
                {
                    CssJsID += f.ID + ",";
                    if (Path.GetExtension(f.FileName.ToLower()) == ".css")
                        CssJsFile += "<link rel=\"stylesheet\" href=\"../../" + f.FileName + "\"/>";
                    if (Path.GetExtension(f.FileName.ToLower()) == ".js")
                        CssJsFile += "<script src=\"../../" + f.FileName + "\"></script>";
                }

                DateTimeZone dt = new DateTimeZone(((CMSmaster)this.Master).Offset);
                if (template.InsertRadioButton(new RadioButtons()
                {
                    RegID = ((CMSmaster)this.Master).RegID,
                    HtmlCode = txtRadioButton_HtmlCode.Text,
                    Template_Id = TemplateID,
                    DateTime = dt.DateTimeResult(),
                    CssJs = CssJsFile,
                    CssJsID = CssJsID,
                    Checked="",
                    GroupName=txtRadioButton_DD_GroupName.Text,
                    Text=txtRadioButton_DD_Text.Text,
                    RadioButtonName=txtRadioButton_DD_RadiobuttonName.Text
                }))
                {
                    GridView_RadioButton.DataBind();
                    CssJs.Clear();
                    lblRadioButton_Result.Text = "";
                    lblRadioButton_Result.Text = "<div class='alert alert-success'> RadioButton Saved </div>";
                }
                else
                {
                    lblRadioButton_Result.Text = "<div class='alert alert-danger'> Some Problem issus -> " + template.ErrorServerMessege + " </div>";
                }
            }
            else
            {
                lblRadioButton_Result.Text = "<div class='alert alert-danger'> Html Code Must be Include. </div>";
            }
        }

        protected void btnCheckBox_Save_Click(object sender, EventArgs e)
        {
            if (txtCheckBox_HtmlCode.Text != "")
            {
                string CssJsID = "";
                string CssJsFile = "";
                foreach (Files f in CssJs)
                {
                    CssJsID += f.ID + ",";
                    if (Path.GetExtension(f.FileName.ToLower()) == ".css")
                        CssJsFile += "<link rel=\"stylesheet\" href=\"../../" + f.FileName + "\"/>";
                    if (Path.GetExtension(f.FileName.ToLower()) == ".js")
                        CssJsFile += "<script src=\"../../" + f.FileName + "\"></script>";
                }

                DateTimeZone dt = new DateTimeZone(((CMSmaster)this.Master).Offset);
                if (template.InsertCheckBoxs(new CheckBoxs()
                {
                    RegID = ((CMSmaster)this.Master).RegID,
                    HtmlCode = txtCheckBox_HtmlCode.Text,
                    Template_Id = TemplateID,
                    DateTime = dt.DateTimeResult(),
                    CssJs = CssJsFile,
                    CssJsID = CssJsID,
                    Checked=txtCheckBox_DD_Check.Text,
                    Text = txtCheckBox_DD_Name.Text,
                    CheckBoxName=txtCheckBox_DD_CheckBoxName.Text
                }))
                {
                    GridView_CheckBox.DataBind();
                    CssJs.Clear();
                    lblCheckBox_Result.Text = "";
                    lblCheckBox_Result.Text = "<div class='alert alert-success'> RadioButton Saved </div>";
                }
                else
                {
                    lblCheckBox_Result.Text = "<div class='alert alert-danger'> Some Problem issus -> " + template.ErrorServerMessege + " </div>";
                }
            }
            else
            {
                lblCheckBox_Result.Text = "<div class='alert alert-danger'> Html Code Must be Include. </div>";
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            var Cookies = "_temp_id";
            HttpCookie myCookie = new HttpCookie(Cookies);
            myCookie.Expires = DateTime.Now.AddDays(-7d);
            Response.Cookies.Add(myCookie);
            Response.Redirect("~/CMS/Design");
        }

        protected void btnDemoPage_Save_Click(object sender, EventArgs e)
        {
            if(chkDemoPage_Button.Checked || chkDemoPage_CheckBox.Checked || chkDemoPage_DataTable.Checked || chkDemoPage_LabelAlert.Checked || chkDemoPage_RadioButton.Checked || chkDemoPage_TextBox.Checked)
            {
                DateTimeZone dt = new DateTimeZone(((CMSmaster)this.Master).Offset);
                if (template.InsertDemoPage(new DemoPage()
                {
                    RegID = ((CMSmaster)this.Master).RegID,
                    Template_Id = TemplateID,
                    DateTime = dt.DateTimeResult(),
                    Alert_ID = chkDemoPage_LabelAlert.Checked ? ddlDemoPage_LabelAlert.SelectedValue : "NULL",
                    Button_ID = chkDemoPage_Button.Checked ? ddlDemoPage_Button.SelectedValue : "NULL",
                    DataTable_ID = chkDemoPage_DataTable.Checked ? ddlDemoPage_DataTable.SelectedValue : "NULL",
                    CheckBox_ID = chkDemoPage_CheckBox.Checked ? ddlDemoPage_CheckBox.SelectedValue : "NULL",
                    Layout_ID = ddlDemoPage_ShowLayout.SelectedValue,
                    RadioButton_ID = chkDemoPage_RadioButton.Checked ? ddlDemoPage_RadioButton.SelectedValue : "NULL",
                    TextBox_ID = chkDemoPage_TextBox.Checked ? ddlDemoPage_TextBox.SelectedValue : "NULL"
                }))
                {
                    GridView_DemoPage.DataBind();
                    lblDemoPage_Result.Text = "";
                    lblDemoPage_Result.Text = "<div class='alert alert-success'> DempPage Saved </div>";
                }
                else
                {
                    lblDemoPage_Result.Text = "<div class='alert alert-danger'> Some Problem issus -> " + template.ErrorServerMessege + " </div>";
                }
            }
            else
            {
                lblDemoPage_Result.Text = "<div class='alert alert-danger'> Please check a content to DemoPage.</div>";
            }
            
        }
        static string CssPath;
        protected void btnUpload_Click(object sender, EventArgs e)
        {
            try
            {
                txtCssEditor.Text = "";
                string FilePath = "";
                foreach (Files f in template.GetCSS_Files())
                {
                    if (f.ID == ddlAllCss.SelectedValue.ToString())
                    {
                        FilePath = f.Path + f.FileName;
                        break;
                    }
                }
                CssPath = "File/" + TemplateID + "/" + FilePath;
                var fileName = Server.MapPath("~/" + CssPath);

                FileStream fs = File.OpenRead(fileName);
                var sr = new StreamReader(fs);

                string line;

                while ((line = sr.ReadLine()) != null)
                {
                    txtCssEditor.Text += line + "\n";
                }
                fs.Close();
            }
            catch(Exception er)
            {
                lblCssEditor_Result.Text = "<div class='alert alert-danger'> Error: " + er.Message+" </div>";
            }
        }
        
        protected void btnCssEditor_Save_Click(object sender, EventArgs e)
        {
            try { 
                //var fileName = Server.MapPath("~/" + CssPath);
                //FileStream fs = File.OpenRead(fileName);
                var text = txtCssEditor.Text;
                File.WriteAllText(Server.MapPath("~/"+ CssPath), text + "DERP");
                txtCssEditor.Text = "";
                lblCssEditor_Result.Text = "<div class='alert alert-success'> File Saved </div>";
            }
            catch(Exception er)
            {
                lblCssEditor_Result.Text = "<div class='alert alert-danger'> Error: " + er.Message+" </div>";
            }
}

        protected void btnCssEditor_Click(object sender, EventArgs e)
        {
            PanelShow(panel.BarControl);
            chkEditor.Checked = true;
            pnlEditor.Visible = true;

            chkDemoPage.Checked = false;
            pnlDemopage_.Visible = false;
        }

        protected void btnEditor_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/CMS/Template/Editor");
        }
    }






}
    public enum panel
    {
        FileUpload,
        HeaderControl,
        BarControl,
        Layout,
        Widget,
        DataTables,
        Dashboard,
        Chart,
        Icon,
        Button,
        Lablel,
        Droupdown,
        RadioButton,
        LinkButton,
        CheckBox,
        Uploader,
        Image,
        Alert,
        Process,
        DempPage,
        LoginPage,
        Invoice,
        Reporting,
        TextBox
    }

