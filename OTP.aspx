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
                                <div class="row" >
                                    <div class="col-md-2 pr-md-0">
                                        
                                    </div>
                                   
                                    <div class="col-md-8 pl-md-0">
                                        <div class="auth-form-wrapper px-4 py-5">
                                          <a href="#" class="noble-ui-logo d-block mb-2">B-ERP<span>CMS</span></a>
                                            <h5 class="text-muted font-weight-normal mb-4">Please Confirm! type your OTP Code.</h5>
                                            <h6 class="text-muted font-weight-normal mb-1"><sup> Mobile Number: <asp:Label ID="lblMobileNumber" runat="server"></asp:Label> </sup></h6>
                                            <div class="forms-sample">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1"></label>
                                                    <div class="row" >
                                                        <style type="text/css">
                                                            .borderNul{
                                                                border-top:0;
                                                                border-left:0;
                                                                border-right:2px solid #0094ff;
                                                                border-bottom:2px solid #0094ff;
                                                                width:100%;   
                                                                text-align:center;
                                                                 box-shadow: 3px 3px 2px 1px rgba(0, 0, 255, .2);
                                                            }
                                                            .borderNul:hover
                                                            {
                                                                border-top:0;
                                                                border-left:0;
                                                                border-right:2px solid #5abaff;
                                                                border-bottom:2px solid #65befe;                                                               
                                                            }
                                                            #timer{
                                                                font-size:large;
                                                                
                                                            }
                                                        </style>
                                                        <div class="col-md-1"></div>
                                                        <div class="col-md-2"><asp:TextBox ID="txt1" MaxLength="1" Font-Bold="true" Font-Size="Large"  CssClass=" borderNul" runat="server"></asp:TextBox></div>
                                                        <div class="col-md-2"><asp:TextBox ID="txt2" MaxLength="1" Font-Bold="true" Font-Size="Large" CssClass=" borderNul" runat="server"></asp:TextBox></div>
                                                        <div class="col-md-2"><asp:TextBox ID="txt3" MaxLength="1" Font-Bold="true" Font-Size="Large" CssClass=" borderNul" runat="server"></asp:TextBox></div>
                                                        <div class="col-md-2"><asp:TextBox ID="txt4" MaxLength="1" Font-Bold="true" Font-Size="Large" CssClass=" borderNul" runat="server"></asp:TextBox></div>
                                                        <div class="col-md-2"><asp:TextBox ID="txt5" MaxLength="1" Font-Bold="true" Font-Size="Large" CssClass=" borderNul" runat="server"></asp:TextBox></div>
                                                        <div class="col-md-1"></div>
                                                    </div>
                                                </div>                                               
                                              <br />
                                                <div class="form-group">
                                                    <div class="row">
                                                        <div class="col-md-3">
                                                             <asp:Button ID="btnOK" OnClick="btnOK_Click" CssClass="btn btn btn-outline-success mr-2 mb-2 mb-md-0" runat="server" Text="Submit" />
                                                        </div>
                                                        <div class="col-md-3">                                                            
                                                           <asp:Button ID="btnSubmit" OnClick="btnSubmit_Click" CssClass="btn btn-primary mr-2 mb-2 mb-md-0" runat="server" Text="Resend" />
                                                        </div>
                                                         <div class="col-md-6 form-control" style="border:0;">
                                                               <span runat="server" id="timer"></span>
                                                         </div>
                                                    </div>
                                                   

                                                                                                    
                                                    <script>                                                      
                                                        

                                                        

                                                            
                                                                //document.addEventListener("keydown", function (event) {
                                                                //    if ('${event.keyCode}' != '8') {
                                                                //        txt2.focus();
                                                                //    }
                                                                //});
                                                        

                                                        //function txtf5() {
                                                        //    txt5.onkeydown = function () {
                                                        //        var key = event.keyCode || event.charCode;
                                                        //        if (key == 8 || key == 46) { txt5.value = ""; var a = txt4.value; txt4.select(); txt4.value = a; }
                                                        //    };
                                                        //}
                                                       

                                                        function countdown(minutes) {
                                                            var btn = document.getElementById("btnSubmit");
                                                            var counter = document.getElementById("timer");
                                                            btn.disabled = true;           
                                                            counter.disabled = true;     
                                                            var seconds = 60;
                                                            var mins = minutes
                                                            function tick() {
                                                                //This script expects an element with an ID = "counter". You can change that to what ever you want. 
                                                                counter.disabled = false;     

                                                                var current_minutes = mins - 1
                                                                seconds--;
                                                                counter.disabled = true;
                                                                counter.innerHTML = "Expired in "+ current_minutes.toString() + ":" + (seconds < 10 ? "0" : "") + String(seconds);
                                                                if (seconds > 0) {
                                                                    setTimeout(tick, 1000);
                                                                } else {
                                                                    if (mins > 1) {
                                                                        countdown(mins - 1);
                                                                    }
                                                                }
                                                                if (counter.innerHTML == "0:00") {
                                                                    counter.innerHTML = "";
                                                                    btn.disabled = false;
                                                                }
                                                            }
                                                            tick();
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
