<%@ Page Language="C#" EnableSessionState="True" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="B_ERP_CMS.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
    <div>
       
      <script src="https://cdn.tiny.cloud/1/cvona4h6638s3h691gios6q55yzs5a71p3711f11gqmp97jr/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
 
        <textarea>
    Welcome to TinyMCE!
  </textarea>
  <script>
      tinymce.init({
          selector: 'textarea',
          plugins: 'a11ychecker advcode casechange formatpainter linkchecker autolink lists checklist media mediaembed pageembed permanentpen powerpaste table advtable tinycomments tinymcespellchecker',
          toolbar: 'a11ycheck addcomment showcomments casechange checklist code formatpainter pageembed permanentpen table',
          toolbar_mode: 'floating',
          tinycomments_mode: 'embedded',
          tinycomments_author: 'Author name',
      });
  </script>

        <asp:TextBox ID="TextBox1" Visible="false" TextMode="MultiLine" Height="800" Width="100%" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" Text="Save" />
        <asp:Button ID="Button2" OnClick="Button2_Click" runat="server" Text="Show" />
    </div>
    </form>
</body>
</html>
