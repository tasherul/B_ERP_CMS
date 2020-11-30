<%@ Page Title="" Language="C#" MasterPageFile="~/CMS/CMSmaster.Master" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="B_ERP_CMS.CMS.Development.Settings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
            <title>Settings</title>
	<link rel="stylesheet" href="../../../assets/vendors/core/core.css">
	<link rel="stylesheet" href="../../../assets/fonts/feather-font/css/iconfont.css">
	<link rel="stylesheet" href="../../../assets/css/demo_5/style.css">
		<link rel="stylesheet" href="../../../assets/vendors/prismjs/themes/prism.css">
	 <script src="Scripts/jquery-3.4.1.min.js"></script>
    	<link rel="stylesheet" href="../../../assets/vendors/simplemde/simplemde.min.css">
    	<link rel="stylesheet" href="../../../assets/vendors/bootstrap-colorpicker/bootstrap-colorpicker.min.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
	<div class="page-content">

        <nav class="page-breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="../CMS/">CMS</a></li>
                <li class="breadcrumb-item">Development</li>
                <li class="breadcrumb-item active">Settings</li>
            </ol>
        </nav>

        <div class="row">
            <div class="col-lg-3 grid-margin stretch-card" id="pnlBar" runat="server">
                <div class="card">
                    <div class="card-body">                      
                        
                        <h4 class="card-title">Menu</h4>
                        <div class="cmxform">

                            <div class="form-group ">
								<a class="form-control btn btn-danger" href="../../CMS/Development/">Back</a>
                            </div>


							</div>
						</div>
					

                </div>
            </div>

            <div class="col-lg-9 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">

                        <div class="form-group row">
                            <div class="col-lg-4">
                                <label class="col-form-label">Full Name:</label>
                            </div>
                            <div class="col-lg-8">
                                <asp:TextBox ID="txtFullName" placeholder="full name" CssClass="form-control mb-4 mb-md-0" runat="server"></asp:TextBox>
                            </div>                          
                        </div>

                        <div class="form-group row">
                            <div class="col-lg-4">
                                <label class="col-form-label">Application Name:</label>
                            </div>
                            <div class="col-lg-8">
                                <asp:TextBox ID="txtApplicationName" placeholder="app;ocation name" CssClass="form-control mb-4 mb-md-0" runat="server"></asp:TextBox>
                            </div>                          
                        </div>

                        <div class="form-group row">
                            <div class="col-lg-4">
                                <label class="col-form-label">User Name:</label>
                            </div>
                            <div class="col-lg-8">
                                <asp:TextBox ID="txtUserName" placeholder="user name" CssClass="form-control mb-4 mb-md-0" runat="server"></asp:TextBox>
                            </div>                          
                        </div>

                        <div class="form-group row">
                            <div class="col-lg-4">
                                <label class="col-form-label">Password:</label>
                            </div>
                            <div class="col-lg-8">
                                <asp:TextBox ID="txtPassword" placeholder="password" CssClass="form-control mb-4 mb-md-0" runat="server"></asp:TextBox>
                            </div>                          
                        </div>

                        <div class="form-group row">
                            <div class="col-lg-6">
                                 <label class="col-form-label">Profile Pic:</label>
                                <br />
                                <asp:Image ID="img_Profile_pic" Width="150" Height="150" runat="server" />
                                <asp:FileUpload ID="FileUpload1_prodile_pic" runat="server" />
                            </div>
                            <div class="col-lg-6">
                                <label class="col-form-label">Logo:</label>
                                <br />
                                <asp:Image ID="img_logo" Width="150" Height="150" runat="server" />
                                <asp:FileUpload ID="FileUpload2_logo" runat="server" />
                            </div>                          
                        </div>

                        <div class="form-group row">
                            <div class="col-lg-4">
                                <asp:Button ID="btnSave" OnClick="btnSave_Click" CssClass="btn btn-success" runat="server" Text="Save Apps Settings" />
                            </div>                                               
                        </div>


                    </div>
                </div>
            </div>

            </div>
        </div>
    
</asp:Content>
