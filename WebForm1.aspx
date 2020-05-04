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
      <button id="btn" onclick="startTimer();" class="dropbtn">Dropdown</button>
  <div>Time left = <span id="timer">0:05</span></div>
        <script>
            function startTimer() {
                var btn = document.getElementById('btn');
                btn.visible = "false";
                var presentTime = document.getElementById('timer').innerHTML;
                var timeArray = presentTime.split(/[:]+/);
                var m = timeArray[0];
                var s = checkSecond((timeArray[1] - 1));
                if (s == 59) { m = m - 1 }
                if (m < 0) { btn.visible = "true"; }
                else {
                    document.getElementById('timer').innerHTML = m + ":" + s;
                }
                console.log(m)
                setTimeout(startTimer, 1000);
            }

            function checkSecond(sec) {
                if (sec < 10 && sec >= 0) { sec = "0" + sec }; // add zero in front of numbers < 10
                if (sec < 0) { sec = "59" };
                return sec;
            }
        </script>


        <asp:TextBox ID="TextBox1" Visible="false" TextMode="MultiLine" Height="800" Width="100%" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" Text="Save" />
        <asp:Button ID="Button2" OnClick="Button2_Click" runat="server" Text="Show" />
    </div>
    </form>
</body>
</html>
