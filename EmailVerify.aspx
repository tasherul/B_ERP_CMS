<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmailVerify.aspx.cs" Inherits="B_ERP_CMS.EmailVerify" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <title>Email Verification</title>
    	
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
                                          <a href="#" class="noble-ui-logo d-block mb-2 ">B-ERP<span>CMS</span></a>
                                            <h5 class="text-muted font-weight-normal mb-4">Please Verify Your Email.</h5>
                                            <div class="forms-sample">
                                                <div class="form-group">
                                                    <div class="row">                                                        
                                                        <div class="col-md-3">                                                            
                                                           <asp:Button ID="btnResend" OnClick="btnResend_Click" Visible="false" CssClass="btn btn-primary mr-2 mb-2 mb-md-0" runat="server" Text="Resend Mail" />
                                                        </div>                                                        
                                                    </div>
                                                   
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
