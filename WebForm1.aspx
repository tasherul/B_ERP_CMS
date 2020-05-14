<%@ Page Language="C#" EnableSessionState="True" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="B_ERP_CMS.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
    <div>     
<asp:Button ID="btnUpload" OnClick="btnUpload_Click" Text="Upload" runat="server"  />


        <asp:Image ID="Image1" runat="server" />
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <a href="#" title="delete" class="delete" onclick="return confirm('Are you sure you want to delete this item')">Delete</a>
        <asp:TextBox ID="TextBox1" Visible="false" TextMode="MultiLine" Height="800" Width="100%" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" Text="Save" />
        <asp:Button ID="Button2" OnClick="Button2_Click" runat="server" Text="Show" />
    </div>
    </form>
</body>
</html>
