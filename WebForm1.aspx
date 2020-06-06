<%@ Page Language="C#" EnableSessionState="True" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="B_ERP_CMS.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
    <div>     



        <asp:Image ID="Image1" runat="server" />        
        <a href="#" title="delete" class="delete" onclick="return confirm('Are you sure you want to delete this item')">Delete</a>
        <asp:TextBox ID="TextBox1" Visible="false" TextMode="MultiLine" Height="800" Width="100%" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" Text="Save" />
        <asp:Button ID="Button2" OnClick="Button2_Click" runat="server" Text="Show" />



         <asp:FileUpload ID="FileUpload1" runat="server" />
    <asp:Button ID="btnUpload" Text="Upload" runat="server" OnClick="btnUpload_Click1" />
    <hr />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" HeaderStyle-BackColor="#3AC0F2"
        HeaderStyle-ForeColor="White" RowStyle-BackColor="#A1DCF2">
        <Columns>
            <asp:BoundField DataField="FileName" HeaderText="File Name" />
            <asp:BoundField DataField="CompressedSize" HeaderText="Compressed Size (Bytes)" />
            <asp:BoundField DataField="UncompressedSize" HeaderText="Uncompressed Size (Bytes)" />
            <asp:BoundField DataField="IsDirectory" HeaderText="Directory" />
            <asp:BoundField DataField="Info" HeaderText="Info" />
        </Columns>
    </asp:GridView>
    </div>
    </form>
</body>
</html>
