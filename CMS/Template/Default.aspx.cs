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

namespace B_ERP_CMS.CMS.Template
{
    public partial class Default : System.Web.UI.Page
    {
        ECMS.Design.Template template = new ECMS.Design.Template();
        string G_Key = "design_Go";
        Decrypt _dec = new Decrypt();
        string TemplateID="";
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
                    }


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
                            Response.Redirect("~/500");
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
            if (Name == panel.DataTable)
                pnlDataTable.Visible = true;
            if (Name == panel.Dashboard)
                pnlDashboard.Visible = true;
            if (Name == panel.Chart)
                pnlChart.Visible = true;
            if (Name == panel.Icon)
                pnlIcon.Visible = true;
            if (Name == panel.Button)
                pnlButton.Visible = true;
            if (Name == panel.Lablel)
                pnlLablel.Visible = true;
            if (Name == panel.Droupdown)
                pnlDroupdown.Visible = true;
            if (Name == panel.RadioButton)
                pnlRadioButton.Visible = true;
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
                pnlDempPage.Visible = true;
            if (Name == panel.LoginPage)
                pnlLoginPage.Visible = true;
            if (Name == panel.Invoice)
                pnlInvoice.Visible = true;
            if (Name == panel.Reporting)
                pnlReporting.Visible = true;


        }
        private void AllHide()
        {
            pnlAlert.Visible = false;
            pnlBarControl.Visible = false;
            pnlButton.Visible = false;
            pnlChart.Visible = false;
            pnlCheckBox.Visible = false;
            pnlDashboard.Visible = false;
            pnlDataTable.Visible = false;
            pnlDempPage.Visible = false;
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
            pnlRadioButton.Visible = false;
            pnlReporting.Visible = false;
            pnlUploader.Visible = false;
            pnlWidget.Visible = false;

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
                output += string.Format(@"<div class='file pad-0'><a href='?fu_id={2}'><i data-feather='trash'></i></a> <a title='{0}' href='#' target='_blank' class='file-icon-name'><i data-feather='file'></i> {1}</a></div>", file.Path,file.FileName,file.FileUpload_Id);
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
                            string ServerSavePath = Server.MapPath("~/" + FirstPath+ GetPath(z.FileName));



                            if (template.AvaiableStorage())
                            { 
                                z.Extract(ServerSavePath, ExtractExistingFileAction.DoNotOverwrite);
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


        protected void btnHeaderControl_Click(object sender, EventArgs e)
        {
            PanelShow(panel.HeaderControl);
        }


    }
    public enum panel
    {
        FileUpload,
        HeaderControl,
        BarControl,
        Layout,
        Widget,
        DataTable,
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
        Reporting
    }
}