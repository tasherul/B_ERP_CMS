<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="B_ERP_CMS.login" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<meta http-equiv="X-UA-Compatible" content="ie=edge"/>
	<title>Login</title>
	
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
                                    <div class="col-md-4 pr-md-0">
                                        <img src="../image/LoginBackground.jpg" height="100%" width="100%" />
                                    </div>
                                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                   
                                    <div class="col-md-8 pl-md-0">
                                        <div class="auth-form-wrapper px-4 py-5">
                                          <a href="#" class="noble-ui-logo d-block mb-2">B<span>EMS</span></a>
                                            <h5 class="text-muted font-weight-normal mb-4">Welcome! Log in to your developer account.</h5>
                                            <div class="forms-sample">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Username or Email address<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="[Requid]" ForeColor="Red"></asp:RequiredFieldValidator></label>
                                                    <asp:TextBox ID="txtEmail"  CssClass="form-control" runat="server"></asp:TextBox>
                                                </div>
                                                <div class="form-group">
                                                    <label for="exampleInputPassword1">Password<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="[Requid]" ForeColor="Red"></asp:RequiredFieldValidator></label>
                                                    <asp:TextBox ID="txtPassword" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
                                                </div>
                                                <div class="form-check form-check-flat form-check-primary">
                                                    <label class="form-check-label">
                                                        <input type="checkbox" runat="server" id="htmlchkRememberme" class="form-check-input" />
                                                        Remember me
                                                    </label>
                                                </div>
                                                <asp:Label ID="lblResult" runat="server"></asp:Label>
                                                <div class="mt-3">
                                                    <asp:Button ID="btnSubmit" OnClick="btnSubmit_Click" CssClass="btn btn-primary mr-2 mb-2 mb-md-0" runat="server" Text="Login" />
                                                </div>
                                                <a href="../create_account" class="d-block mt-3 text-muted">Not a user? Sign up</a>
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
                
      
    </form>
</body>
    <script src="../../../assets/vendors/core/core.js"></script>
	<script src="../../../assets/vendors/feather-icons/feather.min.js"></script>
	<script src="../../../assets/js/template.js"></script>
</html>
