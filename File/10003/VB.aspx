<%@ Page Language="VB" AutoEventWireup="false" CodeFile="VB.aspx.vb" Inherits="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        body
        {
            font-family: Arial;
            font-size: 10pt;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <asp:Button ID="btnUpload" Text="Upload" runat="server" OnClick="Upload" />
    <hr />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" HeaderStyle-BackColor="#3AC0F2"
        HeaderStyle-ForeColor="White" RowStyle-BackColor="#A1DCF2">
        <Columns>
            <asp:BoundField DataField="FileName" HeaderText="File Name" />
            <asp:BoundField DataField="CompressedSize" HeaderText="Compressed Size (Bytes)" />
            <asp:BoundField DataField="UncompressedSize" HeaderText="Uncompressed Size (Bytes)" />
        </Columns>
    </asp:GridView>
    </form>
</body>
</html>
