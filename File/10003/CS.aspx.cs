using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using Ionic.Zip;
using System.Collections.Generic;

public partial class CS : System.Web.UI.Page
{
    protected void Upload(object sender, EventArgs e)
    {
        string extractPath = Server.MapPath("~/Files/");
        using (ZipFile zip = ZipFile.Read(FileUpload1.PostedFile.InputStream))
        {
            zip.ExtractAll(extractPath, ExtractExistingFileAction.DoNotOverwrite);
            GridView1.DataSource = zip.Entries;
            GridView1.DataBind();
        }
    }
}