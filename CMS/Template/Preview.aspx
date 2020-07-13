<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Preview.aspx.cs" Inherits="B_ERP_CMS.CMS.Template.Preview" %>

<%@ Register Src="~/CMS/Template/htmlCode.ascx" TagPrefix="uc1" TagName="htmlCode" %>


<!DOCTYPE html>

<html lang="en">
<head>


    <title>Preview</title>
    <link rel="shortcut icon" href="../../File/10003/assets/images/favicon.ico"><!-- App css -->
    <asp:PlaceHolder ID="pnlHeader" runat="server"></asp:PlaceHolder>
</head>
<body>
    <form id="form" runat="server">
        <uc1:htmlCode runat="server" ID="htmlCode" />
    </form>
    <asp:PlaceHolder ID="pnlJS" runat="server"></asp:PlaceHolder>
</body>
</html>
