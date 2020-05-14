<%@ Page Title="" Language="C#" MasterPageFile="~/CMS/CMSmaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="B_ERP_CMS.CMS.Template.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Template</title>
	<link rel="stylesheet" href="../../../assets/vendors/core/core.css">
	<link rel="stylesheet" href="../../../assets/fonts/feather-font/css/iconfont.css">
	<link rel="stylesheet" href="../../../assets/css/demo_5/style.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
	
    <div class="page-content">

        <nav class="page-breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="../CMS/">CMS</a></li>
                <li class="breadcrumb-item active">Template</li>
            </ol>
        </nav>

        <div class="row">
            <div class="col-lg-3 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Menu</h4>
                        <div class="cmxform">

                            <div class="form-group ">
                                <asp:Button ID="btnfileUpload" CssClass="form-control btn btn-danger" runat="server" Text="File Upload" />
                            </div>
							<div class="form-group ">
                                <asp:Button ID="Button2" CssClass="form-control btn btn-danger" runat="server" Text="Header Control" />
                            </div>
							<div class="form-group ">
                                <asp:Button ID="Button3" CssClass="form-control btn btn-danger" runat="server" Text="Bar Control" />
                            </div>
							<h4 class="card-title">Content Page</h4>
							<div class="form-group ">
                                <asp:Button ID="Button17" CssClass="form-control btn btn-success" runat="server" Text="Layout" />
                            </div>
							<div class="form-group ">
                                <asp:Button ID="Button18" CssClass="form-control btn btn-success" runat="server" Text="Widget" />
                            </div>
							<div class="form-group ">
                                <asp:Button ID="Button19" CssClass="form-control btn btn-success" runat="server" Text="Data Table" />
                            </div>
							<div class="form-group ">
                                <asp:Button ID="Button20" CssClass="form-control btn btn-success" runat="server" Text="Dashboard" />
                            </div>
							<div class="form-group ">
                                <asp:Button ID="Button21" CssClass="form-control btn btn-success" runat="server" Text="Chart" />
                            </div>													
							<h4 class="card-title">Items</h4>
							<div class="form-group ">
                                <asp:Button ID="Button23" CssClass="form-control btn btn-primary" runat="server" Text="Icon" />
                            </div>
							<div class="form-group ">
                                <asp:Button ID="Button4" CssClass="form-control btn btn-primary" runat="server" Text="Button" />
                            </div>
							<div class="form-group ">
                                <asp:Button ID="Button5" CssClass="form-control btn btn-primary" runat="server" Text="Label" />
                            </div>
							<div class="form-group ">
                                <asp:Button ID="Button6" CssClass="form-control btn btn-primary" runat="server" Text="Dropdown" />
                            </div>
							<div class="form-group ">
                                <asp:Button ID="Button7" CssClass="form-control btn btn-primary" runat="server" Text="Radio Button" />
                            </div>
							<div class="form-group ">
                                <asp:Button ID="Button8" CssClass="form-control btn btn-primary" runat="server" Text="Link Button" />
                            </div>
							<div class="form-group ">
                                <asp:Button ID="Button9" CssClass="form-control btn btn-primary" runat="server" Text="CheckBox" />
                            </div>
							<div class="form-group ">
                                <asp:Button ID="Button10" CssClass="form-control btn btn-primary" runat="server" Text="File Upload" />
                            </div>
							<div class="form-group ">
                                <asp:Button ID="Button11" CssClass="form-control btn btn-primary" runat="server" Text="Image" />
                            </div>
							<div class="form-group ">
                                <asp:Button ID="Button12" CssClass="form-control btn btn-primary" runat="server" Text="Alart" />
                            </div>
							<div class="form-group ">
                                <asp:Button ID="Button13" CssClass="form-control btn btn-primary" runat="server" Text="Process" />
                            </div>
							<h4 class="card-title">Page</h4>
							<div class="form-group ">
                                <asp:Button ID="Button22" CssClass="form-control btn btn-dark" runat="server" Text="Demo Page" />
                            </div>	
							<div class="form-group ">
                                <asp:Button ID="Button14" CssClass="form-control btn btn-dark" runat="server" Text="Login Page" />
                            </div>
							<div class="form-group ">
                                <asp:Button ID="Button15" CssClass="form-control btn btn-dark" runat="server" Text="Invoice" />
                            </div>
							<div class="form-group ">
                                <asp:Button ID="Button16" CssClass="form-control btn btn-dark" runat="server" Text="Reporting" />
                            </div>
                        </div>
                    </div>

                </div>
            </div>




            <div class="col-lg-6 grid-margin stretch-card" id="pnlFileUpload" runat="server">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">File Upload</h4>
                        <p class="card-description">Your trmplate file upload like <code>*.css *.js *.png *.ico etc</code></p>
                        <div class="form-group row">
                            <div class="col-lg-3">
                                <label class="col-form-label">File Upload</label>
                            </div>
                            <div class="col-lg-8">
                                <asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server" />
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-lg-3">
                                <label class="col-form-label">Make Path</label>
                            </div>
                            <div class="col-lg-8">
                                <input class="form-control" maxlength="20" name="defaultconfig-2" id="defaultconfig-2" type="text" placeholder="Type Something..">
                            </div>
                        </div>
                       


                    </div>
                </div>
            </div>

	<%--		 <div class="col-lg-6 grid-margin stretch-card" id="Div1" runat="server">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">File Upload</h4>
                        <p class="card-description">Your trmplate file upload like <code>*.css *.js *.png *.ico etc</code></p>
                        <div class="form-group row">
                            <div class="col-lg-3">
                                <label class="col-form-label">Default usage</label>
                            </div>
                            <div class="col-lg-8">
                                <input class="form-control" maxlength="25" name="defaultconfig" id="defaultconfig" type="text" placeholder="Type Something..">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-lg-3">
                                <label class="col-form-label">Few options</label>
                            </div>
                            <div class="col-lg-8">
                                <input class="form-control" maxlength="20" name="defaultconfig-2" id="defaultconfig-2" type="text" placeholder="Type Something..">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-lg-3">
                                <label class="col-form-label">All the options</label>
                            </div>
                            <div class="col-lg-8">
                                <input class="form-control" maxlength="10" name="defaultconfig-3" id="defaultconfig-3" type="text" placeholder="Type Something..">
                            </div>
                        </div>
                        <div class="form-group mb-0 row">
                            <div class="col-lg-3">
                                <label class="col-form-label">Text Area</label>
                            </div>
                            <div class="col-lg-8">
                                <textarea id="maxlength-textarea" class="form-control" maxlength="100" rows="8" placeholder="This textarea has a limit of 100 chars."></textarea>
                            </div>
                        </div>


                    </div>
                </div>
            </div>--%>



        </div>


        <%--	<div class="row">
					<div class="col-md-12 grid-margin">
						<div class="card">
							<div class="card-body">
								<h6 class="card-title">Input Mask</h6>
								<p class="card-description">Read the <a href="https://github.com/RobinHerbots/Inputmask" target="_blank"> Official Inputmask Documentation </a>for a full list of instructions and other options.</p>
								<form class="forms-sample">
									<div class="form-group row">
										<div class="col">
											<label>Date:</label>
											<input class="form-control mb-4 mb-md-0" data-inputmask="'alias': 'datetime'" data-inputmask-inputformat="dd/mm/yyyy"/>
										</div>
										<div class="col-md-6">
											<label>Time (12 hour):</label>
											<input class="form-control" data-inputmask="'alias': 'datetime'" data-inputmask-inputformat="hh:mm tt" />
										</div>
									</div>
									<div class="form-group row">
										<div class="col-md-6">
											<label>Date time:</label>
											<input class="form-control mb-4 mb-md-0" data-inputmask="'alias': 'datetime'" data-inputmask-inputformat="dd/mm/yyyy HH:MM:ss" />
										</div>
										<div class="col-md-6">
											<label>Date with custom placeholder:</label>
											<input class="form-control" data-inputmask="'alias': 'datetime'" data-inputmask-placeholder="*" data-inputmask-inputformat="dd/mm/yyyy" />
										</div>
									</div>
									<div class="form-group row">
										<div class="col-md-6">
											<label>Phone:</label>
											<input class="form-control mb-4 mb-md-0" data-inputmask-alias="(+99) 9999-9999"/>
										</div>
										<div class="col-md-6">
											<label>Credit card:</label>
											<input class="form-control" data-inputmask-alias="9999-9999-9999-9999"/>
										</div>
									</div>
									<div class="form-group row">
										<div class="col-md-6">
											<label>Currency:</label>
											<input class="form-control mb-4 mb-md-0" data-inputmask="'alias': 'currency'"/>
										</div>
										<div class="col-md-6">
											<label>Serial key:</label>
											<input class="form-control" data-inputmask-alias="****-****-****-****"/>
										</div>
									</div>
									<div class="form-group row">
										<div class="col-md-6">
											<label>Email:</label>
											<input class="form-control mb-4 mb-md-0" data-inputmask="'alias': 'email'"/>
										</div>
										<div class="col-md-6">
											<label>Ip address:</label>
											<input class="form-control" data-inputmask="'alias': 'ip'"/>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-6 grid-margin stretch-card">
						<div class="card">
							<div class="card-body">
								<h4 class="card-title">Select 2</h4>
								<p class="card-description">Read the <a href="https://select2.org/" target="_blank"> Official Select2 Documentation </a>for a full list of instructions and other options.</p>
								<div class="form-group">
									<label>Single select box using select 2</label>
									<select class="js-example-basic-single w-100">
										<option value="TX">Texas</option>
										<option value="NY">New York</option>
										<option value="FL">Florida</option>
										<option value="KN">Kansas</option>
										<option value="HW">Hawaii</option>
									</select>
								</div>
								<div class="form-group">
									<label>Multiple select using select 2</label>
									<select class="js-example-basic-multiple w-100" multiple="multiple">
										<option value="TX">Texas</option>
										<option value="WY">Wyoming</option>
										<option value="NY">New York</option>
										<option value="FL">Florida</option>
										<option value="KN">Kansas</option>
										<option value="HW">Hawaii</option>
									</select>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6 grid-margin stretch-card">
						<div class="card">
							<div class="card-body">
								<h4 class="card-title">Typeahead</h4>
								<p class="card-description">Read the <a href="../../../../../../github.com/twitter/typeahead.html" target="_blank"> Official Typeahead.js Documentation </a>for a full list of instructions and other options.</p>
								<div class="form-group row pt-0">
									<div class="col">
										<label>Basic</label>
										<div id="the-basics">
											<input class="typeahead" type="text" placeholder="States of USA">
										</div>
									</div>
									<div class="col">
										<label>Bloodhound</label>
										<div id="bloodhound">
											<input class="typeahead" type="text" placeholder="States of USA">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-6 grid-margin stretch-card">
						<div class="card">
							<div class="card-body">
								<h6 class="card-title">Tags input</h6>
								<p class="card-description">Read the <a href="https://www.npmjs.com/package/jquery-tags-input" target="_blank"> Official jQuery-tags-input Documentation </a>for a full list of instructions and other options.</p>
								<p class="mb-2">Type something to add a new tag</p>
								<div>
									<input name="tags" id="tags" value="New York,Texas,Florida,New Mexico" />
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6 grid-margin stretch-card">
						<div class="card">
							<div class="card-body">
								<h6 class="card-title">Bootstrap color picker</h6>
								<p class="card-description">Read the <a href="https://farbelous.io/bootstrap-colorpicker/" target="_blank"> Official Bootstrap-colorpicker Documentation </a>for a full list of instructions and other options.</p>
								<div id="cp1" class="input-group mb-2" title="Using input value">
									<input type="text" class="form-control input-lg" value="#DD0F20FF"/>
									<span class="input-group-append">
										<span class="input-group-text colorpicker-input-addon"><i></i></span>
									</span>
								</div>
								<div id="cp2" class="input-group mb-2" data-color="rgb(241, 138, 49)"
											title="Using data-color attribute in the colorpicker element">
									<input type="text" class="form-control input-lg"/>
									<span class="input-group-append">
										<span class="input-group-text colorpicker-input-addon"><i></i></span>
									</span>
								</div>
								<div id="cp3" class="input-group" title="Using data-color attribute in the input">
									<input type="text" class="form-control input-lg" data-color="hsl(56, 93%, 63%)"/>
									<span class="input-group-append">
										<span class="input-group-text colorpicker-input-addon"><i></i></span>
									</span>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-6 grid-margin stretch-card">
						<div class="card">
							<div class="card-body">
								<h6 class="card-title">Date picker</h6>
								<p class="card-description">Read the <a href="https://bootstrap-datepicker.readthedocs.io/en/latest/" target="_blank"> Official Bootstrap-datepicker Documentation </a>for a full list of instructions and other options.</p>
								<div class="input-group date datepicker" id="datePickerExample">
									<input type="text" class="form-control"><span class="input-group-addon"><i data-feather="calendar"></i></span>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6 grid-margin stretch-card">
						<div class="card">
							<div class="card-body">
								<h6 class="card-title">Time picker</h6>
								<p class="card-description">Read the <a href="https://tempusdominus.github.io/bootstrap-4/" target="_blank"> Official Tempus Dominus Documentation </a>for a full list of instructions and other options.</p>
								<div class="input-group date timepicker" id="datetimepickerExample" data-target-input="nearest">
									<input type="text" class="form-control datetimepicker-input" data-target="#datetimepickerExample"/>
									<div class="input-group-append" data-target="#datetimepickerExample" data-toggle="datetimepicker">
										<div class="input-group-text"><i data-feather="clock"></i></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-6 stretch-card grid-margin grid-margin-md-0">
						<div class="card">
							<div class="card-body">
								<h6 class="card-title">Dropzone</h6>
								<p class="card-description">Read the <a href="https://www.dropzonejs.com/" target="_blank"> Official Dropzone.js Documentation </a>for a full list of instructions and other options.</p>
								<form action="https://www.nobleui.com/file-upload" class="dropzone" id="exampleDropzone"></form>
							</div>
						</div>
					</div>
					<div class="col-md-6 stretch-card">
						<div class="card">
							<div class="card-body">
								<h6 class="card-title">Dropify</h6>
								<p class="card-description">Read the <a href="https://github.com/JeremyFagis/dropify" target="_blank"> Official Dropify Documentation </a>for a full list of instructions and other options.</p>
								<input type="file" id="myDropify" class="border"/>
							</div>
						</div>
					</div>
				</div>--%>
    </div>
	<script src="../../../assets/vendors/core/core.js"></script>
	<!-- endinject -->
	<!-- plugin js for this page -->
	<!-- end plugin js for this page -->
	<!-- inject:js -->
	<script src="../../../assets/vendors/feather-icons/feather.min.js"></script>
	<script src="../../../assets/js/template.js"></script>
	<!-- endinject -->
	<!-- custom js for this page -->
	<script src="../../../assets/js/file-upload.js"></script>
</asp:Content>
