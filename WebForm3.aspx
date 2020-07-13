<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="B_ERP_CMS.WebForm3" %>

<%@ Register Src="~/CMS/Template/htmlCode.ascx" TagPrefix="uc1" TagName="htmlCode" %>


<!DOCTYPE html>
<html lang="en">
<head>

    <title>Amezia - Responsive Bootstrap 4 Admin Dashboard</title>
    <link rel="shortcut icon" href="../../File/10003/assets/images/favicon.ico"><!-- App css -->
    <link rel="stylesheet" href="../../File/10003/assets/css/bootstrap.min.css"  />
<link rel="stylesheet" href="../../File/10003/assets/css/icons.css"  />
<link rel="stylesheet" href="../../File/10003/assets/css/style.css"  />

   
 <asp:PlaceHolder ID="pnlHeader" runat="server"></asp:PlaceHolder>
</head>
<body>
    <form id="form" runat="server">
   
        <uc1:htmlCode runat="server" id="htmlCode" />
        <%--<div id="contant" runat="server"></div>--%>
      </form>


 <asp:PlaceHolder ID="pnlJS" runat="server"></asp:PlaceHolder>
<%--    <script src="File/10003/assets/js/jquery.min.js"></script>
    <script src="../../File/10003/assets/js/app.js" type="text/javascript" ></script>
<script src="../../File/10003/assets/js/bootstrap.bundle.min.js" type="text/javascript" ></script>
<script src="../../File/10003/assets/js/jquery.min.js" type="text/javascript" ></script>
<script src="../../File/10003/assets/js/jquery.slimscroll.min.js" type="text/javascript" ></script>
<script src="../../File/10003/assets/js/waves.min.js" type="text/javascript" ></script>--%>
    
</body>
</html>