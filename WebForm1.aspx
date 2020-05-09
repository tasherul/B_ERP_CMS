<%@ Page Language="C#" EnableSessionState="True" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="B_ERP_CMS.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <script src="Scripts/jquery-3.4.1.js"></script>
        <script src="Scripts/jquery-3.4.1.min.js"></script>
 <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script language="javascript" type="text/javascript">
    $(function () {
        $("#fuUpload").change(function () {
            if (typeof (FileReader) != "undefined") {
                var dvPreview = $("#dvPreview");
                dvPreview.html("");
                var regex = /^([a-zA-Z0-9\s_\\.\-:])+(.jpg|.jpeg|.gif|.png|.bmp)$/;
                $($(this)[0].files).each(function () {
                    var file = $(this);
                    if (regex.test(file[0].name.toLowerCase())) {
                        var reader = new FileReader();
                        reader.onload = function (e) {
                            var img = $("<img />");
                            img.attr("style", "height:100px;width: 100px");
                            img.attr("src", e.target.result);
                            dvPreview.append(img);
                        }
                        reader.readAsDataURL(file[0]);
                    } else {
                        alert(file[0].name + " is not a valid image file.");
                        dvPreview.html("");
                        return false;
                    }
                });
            } else {
                alert("This browser does not support HTML5 FileReader.");
            }
        });
    });
</script>
        <asp:FileUpload ID="fuUpload" runat="server" multiple="multiple" />
<asp:Button ID="btnUpload" OnClick="btnUpload_Click" Text="Upload" runat="server"  />
<hr />
<div id="dvPreview">
</div>
        <br />



        <asp:TextBox ID="TextBox1" Visible="false" TextMode="MultiLine" Height="800" Width="100%" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" Text="Save" />
        <asp:Button ID="Button2" OnClick="Button2_Click" runat="server" Text="Show" />
    </div>
    </form>
</body>
</html>
