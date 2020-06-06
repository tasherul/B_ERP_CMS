Imports System.IO
Imports Ionic.Zip
Imports System.Collections.Generic

Partial Class VB
    Inherits System.Web.UI.Page
   
    Protected Sub Upload(sender As Object, e As EventArgs)
        Dim extractPath As String = Server.MapPath("~/Files/")
        Using zip As ZipFile = ZipFile.Read(FileUpload1.PostedFile.InputStream)
            zip.ExtractAll(extractPath, ExtractExistingFileAction.DoNotOverwrite)
            GridView1.DataSource = zip.Entries
            GridView1.DataBind()
        End Using
    End Sub
End Class
