<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OTP.aspx.cs" Inherits="B_ERP_CMS.OTP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Confirm OTP</title>
    	
	<link rel="stylesheet" href="../../../assets/vendors/core/core.css"/>
	<link rel="stylesheet" href="../../../assets/fonts/feather-font/css/iconfont.css"/>
     <link rel="stylesheet" href="../../../assets/vendors/flag-icon-css/css/flag-icon.min.css"/>
      <link rel="stylesheet" href="../../../assets/vendors/mdi/css/materialdesignicons.min.css"/>
	    <link rel="stylesheet" href="../../../assets/css/demo_1/style.css"/>
  <!-- End layout styles -->
  <link rel="shortcut icon" href="../../../assets/images/favicon.png" />
</head>
<body>
    <form id="form1" runat="server">
       
        
        <div class="main-wrapper">
            <div class="page-wrapper full-page">
                <div class="page-content d-flex align-items-center justify-content-center">
                    <div class="row w-100 mx-0 auth-page">
                        <div class="col-md-8 col-xl-6 mx-auto">
                            <div class="card">
                                <div class="row">
                                    <div class="col-md-2 pr-md-0">
                                        
                                    </div>
                                   
                                    <div class="col-md-8 pl-md-0">
                                        <div class="auth-form-wrapper px-4 py-5">
                                          <a href="#" class="noble-ui-logo d-block mb-2">B-ERP<span>CMS</span></a>
                                            <h5 class="text-muted font-weight-normal mb-4">Please Confirm! type your OTP Code.</h5>
                                            <h6 class="text-muted font-weight-normal mb-1"><sup> Mobile Number: +88********20 </sup></h6>
                                            <div class="forms-sample">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1"></label>
                                                    <div class="row">
                                                        <style type="text/css">
                                                            .borderNul{
                                                                border-top:0;
                                                                border-left:0;
                                                                border-right:0;
                                                                border-bottom:2px solid #0094ff;
                                                                width:100%;   
                                                                text-align:center;
                                                            }
                                                            .borderNul:hover
                                                            {
                                                                border-top:0;
                                                                border-left:0;
                                                                border-right:0;
                                                                border-bottom:2px solid #65befe;                                                               
                                                            }
                                                            
                                                        </style>
                                                        <div class="col-md-1"></div>
                                                        <div class="col-md-2"><asp:TextBox ID="TextBox5" MaxLength="1" Font-Bold="true" Font-Size="Large"  CssClass=" borderNul" runat="server"></asp:TextBox></div>
                                                        <div class="col-md-2"><asp:TextBox ID="TextBox1" MaxLength="1" Font-Bold="true" Font-Size="Large" CssClass=" borderNul" runat="server"></asp:TextBox></div>
                                                        <div class="col-md-2"><asp:TextBox ID="TextBox3" MaxLength="1" Font-Bold="true" Font-Size="Large" CssClass=" borderNul" runat="server"></asp:TextBox></div>
                                                        <div class="col-md-2"><asp:TextBox ID="TextBox4" MaxLength="1" Font-Bold="true" Font-Size="Large" CssClass=" borderNul" runat="server"></asp:TextBox></div>
                                                        <div class="col-md-2"><asp:TextBox ID="TextBox2" MaxLength="1" Font-Bold="true" Font-Size="Large" CssClass=" borderNul" runat="server"></asp:TextBox></div>
                                                        <div class="col-md-1"></div>
                                                    </div>
                                                </div>                                               
                                              <br />
                                                <div class="form-group">
                                                    <div class="row">
                                                        <div class="col-md-4">
                                                           <asp:Button ID="btnSubmit" OnClick="btnSubmit_Click" CssClass="btn btn-primary mr-2 mb-2 mb-md-0" runat="server" Text="Resend" />
                                                        </div>
                                                         <div class="col-md-8 form-control" style="border:0;">
                                                               <span id="timer"></span>
                                                         </div>
                                                    </div>
                                                   

                                                                                                    
                                                    <script>

                                                        //function startTimer(duration) {
                                                        //    var timer = duration, minutes, seconds;                                                           
                                                            
                                                        //        setInterval(function () {
                                                        //            minutes = parseInt(timer / 60, 10)
                                                        //            seconds = parseInt(timer % 60, 10);

                                                        //            minutes = minutes < 10 ? "0" + minutes : minutes;
                                                        //            seconds = seconds < 10 ? "0" + seconds : seconds;
                                                        //            display = $("#time");
                                                        //            display.text(minutes + ":" + seconds);

                                                        //            if (--timer < 0) {
                                                        //                timer = duration;
                                                        //                display.text("Expired");
                                                        //                b = false;
                                                        //            }

                                                        //        }, 1000);
                                                        //    }
                                                            
                                                        //}

                                                        

                                                        document.getElementById('timer').innerHTML =
                                                            000 + ":" + 20;
                                                        
                                                        

                                                        function startTimer() {
                                                            var presentTime = document.getElementById('timer').innerHTML;
                                                            
                                                            var timeArray = presentTime.split(/[:]+/);
                                                            var m = timeArray[0];
                                                            var s = checkSecond((timeArray[1] - 1));
                                                            if (s == 59) { m = m - 1 }
                                                            if (m < 0) { alert('timer completed') }

                                                            document.getElementById('timer').innerHTML =
                                                                m + ":" + s;
                                                            console.log(m)
                                                            setTimeout(startTimer, 1000);
                                                        }

                                                        function checkSecond(sec) {
                                                            if (sec < 10 && sec >= 0) { sec = "0" + sec }; // add zero in front of numbers < 10
                                                            if (sec < 0) { sec = "59" };
                                                            return sec;
                                                        }


                                                   </script>
                                                </div>

                                                <asp:Label ID="lblResult" runat="server"></asp:Label>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
                
      
                
      <script src="Scripts/jquery-3.4.1.min.js"></script>   
    </form>
</body>

</html>
