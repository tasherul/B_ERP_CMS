<%@ Page Title="" Language="C#" MasterPageFile="~/CMS/CMSmaster.Master" AutoEventWireup="true" CodeBehind="Design.aspx.cs" Inherits="B_ERP_CMS.CMS.Design" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<title>Template Design</title>
    <link rel="stylesheet" href="../../../assets/vendors/core/core.css">
	<link rel="stylesheet" href="../../../assets/vendors/select2/select2.min.css">
	<link rel="stylesheet" href="../../../assets/vendors/jquery-tags-input/jquery.tagsinput.min.css">
	<link rel="stylesheet" href="../../../assets/vendors/dropzone/dropzone.min.css">
	<link rel="stylesheet" href="../../../assets/vendors/dropify/dist/dropify.min.css">
	<link rel="stylesheet" href="../../../assets/vendors/bootstrap-colorpicker/bootstrap-colorpicker.min.css">
	<link rel="stylesheet" href="../../../assets/vendors/bootstrap-datepicker/bootstrap-datepicker.min.css">
	<link rel="stylesheet" href="../../../assets/vendors/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="../../../assets/vendors/tempusdominus-bootstrap-4/tempusdominus-bootstrap-4.min.css">
	<link rel="stylesheet" href="../../../assets/fonts/feather-font/css/iconfont.css">
	<link rel="stylesheet" href="../../../assets/css/demo_5/style.css">
    <link rel="stylesheet" href="../../../assets/vendors/simplemde/simplemde.min.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">

    
    <div class="page-content">

        <div class="row" >
     
            <div class="col-lg-6 grid-margin stretch-card" id="pnlForm" runat="server">
                <div class="card">
                    <div class="card-body">
                        
                        <asp:Label ID="lblResult" runat="server"></asp:Label>
                        <%--<div class=" alert alert-danger">Result</div>--%>
                        <h4 class="card-title">Template Details</h4>
                        <p class="card-description">Read the Official<a href="#">#Documentation</a>for a full list of instructions and other options.</p>

                        <div class="form-group">
                            <label>Title</label>
                            <asp:TextBox ID="txtTitle" MaxLength="100" placeholder="title" CssClass="form-control" runat="server"></asp:TextBox>
                            <div class="text-right"><code><sub>your template title</sub></code></div>
                        </div>
                        <div class="form-group">
                            <label for="email">Discription</label>
                            <asp:TextBox ID="txtDiscription" TextMode="MultiLine" class="form-control" runat="server" rows="20" maxlength="1000" placeholder="Type discription in your template.."></asp:TextBox>
                            <div class="text-right"><code><sub>your template discription...</sub></code></div>
                        </div>
                        <div class="form-group row">
                            <div class="col-lg-2">
                                <label class="col-form-label">Catagory</label>
                            </div>
                            <div class="col-lg-8">
                                <asp:DropDownList ID="ddlCategory" CssClass="form-control" runat="server"></asp:DropDownList>
                                <div class="text-right"><code><sub>your template catagory please selected.</sub></code></div>
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-lg-2">
                                <label class="col-form-label">Price :</label>
                            </div>
                            <div class="col-lg-3">
                                <asp:TextBox ID="txtPrice"  data-inputmask="'alias': 'currency'" CssClass="form-control mb-4 mb-md-0" runat="server"></asp:TextBox>

                            </div>
                            <div class="text-right"><code><sub>if you want to sell this template so give your price. this price will</sub><br />
                                <sup>see buyer and buy it. if you not and make it free type <strong>(-1)</strong> </sup></code></div>
                        </div>
                        
                        <div class="form-check">
                            <label class="form-check-label">
                                 <input type="checkbox" onclick="checkFluency()"  id="chkYoutubeEnable" />
                                Youtube Video Link
                            </label>
                        </div>
                        <div id="pnlYoutube" class="form-group">
                            <asp:TextBox ID="txtYoutuleLink" placeholder="your youtube url" CssClass="form-control" runat="server"></asp:TextBox>
                            <div class="text-right"><code><sub>example: https://youtube.com/watch?=123456 </sub></code></div>
                        </div>

     
                        <div class="form-check">
                            <label class="form-check-label">
                                <input type="checkbox" id="chkSEO" runat="server" style="cursor: pointer;" class="form-check-input">
                                SEO 
                            </label>
                            <code><sub>Using SEO code in Template Design and if you wand to lern please check #Documentation </sub></code>
                        </div>

                        <div class="form-check">
                            <label class="form-check-label">
                                <input type="checkbox" id="chkVersionUpdate" runat="server" style="cursor: pointer;" class="form-check-input">
                                Version Upgrade
                            </label>
                            <code><sub>Automatic Software Upgread in show in template</sub></code>
                        </div>
                        <div class="form-check">
                            <label class="form-check-label">
                                <input type="checkbox" id="chkSpeedOptimization" runat="server" style="cursor: pointer;" class="form-check-input">
                                Speed Optimization
                            </label>
                            <code><sub>Must be fast and speed *.js *.css in template. Speed Optimization is nedd to template.<sub></code>
                        </div>
                        <div class="form-check">
                            <label class="form-check-label">
                                <input type="checkbox" id="chkTesting" runat="server" style="cursor: pointer;" class="form-check-input">
                                Testing
                            </label>
                            <code><sub>Publish testing and apps testing is check. </sub></code>
                        </div>
                        <div class="form-check">
                            <label class="form-check-label">
                                <input type="checkbox" id="chkSupport" runat="server" style="cursor: pointer;" class="form-check-input">
                                Support 24/7
                            </label>
                            <code><sub>Buyer Support in 24/7 in Business day.</sub></code>
                        </div>
                        <div class="form-check">
                            <label class="form-check-label">
                                <input type="checkbox" id="chkPublicMode" runat="server" checked style="cursor: pointer;" class="form-check-input">
                                Public Template
                            </label>
                            <code><sub>This mode will show and view your template in public.</sub></code>
                        </div>
                        <div class="form-group row">
                            <div class="col-lg-3">
                                <label class="col-form-label">Template image</label>
                            </div>
                            <div class="col-lg-9">
                                <asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server" />
                            </div>
                           <div class="col-lg-3"> <asp:Image ID="Image1" Width="100%" runat="server" /> </div>
                            <p class="card-description text-justify">Upload your template image. This image will show the main view from. The image will be <code>*.jpg *.jpeg *.png </code>fromats and Maximam image size is <code>2mb.</code>You must check your storage it will be limited access. The regulation you can insert <code>* 500 x 333</code> or <code>* 787 x 479</code> or <code>* 639 x 426</code>.</p>
                        </div>
                        

                        <div class="form-group">
                            <label>Tag</label>
                            <asp:TextBox ID="txttags" placeholder="example: template, management template, crm template" CssClass="form-control" runat="server"></asp:TextBox>
                            <div class="text-right"><code><sub>this tag will perfom to your template scarch in first result.</sub></code></div>
                        </div>

                        <div class="form-check">
                            <button type="button" class="btn btn-danger btn-icon">
                                <i data-feather="save"></i>
                            </button>
                            <asp:Button ID="btnUpdate" CssClass="btn btn-success" OnClick="btnUpdate_Click" runat="server" Text="Update Template Details" />
                            <asp:Button ID="btnTemplate" OnClick="btnTemplate_Click" CssClass="btn btn-success" runat="server" Text="Make Template Done! (your template image upload process strat)" />
                        </div>



                    </div>
                </div>
            </div>

            <div class="col-lg-6 grid-margin">
                <div class="card">
                    <div class="card">
                        <asp:PlaceHolder ID="pnlTemplate" runat="server"></asp:PlaceHolder>
                        
                        <hr />
                        
                    </div>

                </div>
            </div>

           <%-- <div class="col-lg-6 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Bootstrap MaxLength</h4>
                        <p class="card-description">Read the <a href="https://github.com/mimo84/bootstrap-maxlength" target="_blank">Official Bootstrap MaxLength Documentation </a>for a full list of instructions and other options.</p>
                        <div class="form-group row">
                            <div class="col-lg-3">
                                <label class="col-form-label">Default usage</label>
                            </div>
                            <div class="col-lg-8">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-lg-4">
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

        
 <script>
     var pnlYoutube = document.getElementById('pnlYoutube');
     pnlYoutube.hidden = true;
     var pnlPersonalDB = document.getElementById('pnlPersonalDB');
     pnlPersonalDB.hidden = true;
     function checkFluency() {
         var checkbox = document.getElementById('chkYoutubeEnable'); 
         
         if (checkbox.checked != true) {
             pnlYoutube.hidden = true; $("#TextBox1").val("something off");
         }
         else {
             pnlYoutube.hidden = false; $("#TextBox1").val("something on");
         }
     }
     function checkPersonalDB() {
         var checkbox = document.getElementById('chkPersonalDB');

         if (checkbox.checked != true) {
             pnlPersonalDB.hidden = true;
         }
         else { pnlPersonalDB.hidden = false; }
     }
     

 </script>
        


    </div>
	

		<script src="../../../assets/vendors/core/core.js"></script>
	<!-- endinject -->
	<!-- plugin js for this page -->
	<script src="../../../assets/vendors/jquery-validation/jquery.validate.min.js"></script>
	<script src="../../../assets/vendors/bootstrap-maxlength/bootstrap-maxlength.min.js"></script>
	<script src="../../../assets/vendors/inputmask/jquery.inputmask.bundle.min.js"></script>
	<script src="../../../assets/vendors/select2/select2.min.js"></script>
	<script src="../../../assets/vendors/typeahead.js/typeahead.bundle.min.js"></script>
	<script src="../../../assets/vendors/jquery-tags-input/jquery.tagsinput.min.js"></script>
	<script src="../../../assets/vendors/dropzone/dropzone.min.js"></script>
	<script src="../../../assets/vendors/dropify/dist/dropify.min.js"></script>
	<script src="../../../assets/vendors/bootstrap-colorpicker/bootstrap-colorpicker.min.js"></script>
	<script src="../../../assets/vendors/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
	<script src="../../../assets/vendors/moment/moment.min.js"></script>
	<script src="../../../assets/vendors/tempusdominus-bootstrap-4/tempusdominus-bootstrap-4.js"></script>
	<!-- end plugin js for this page -->
	<!-- inject:js -->
	<script src="../../../assets/vendors/feather-icons/feather.min.js"></script>
	<script src="../../../assets/js/template.js"></script>
	<!-- endinject -->
	<!-- custom js for this page -->
	<script src="../../../assets/js/form-validation.js"></script>
	<script src="../../../assets/js/bootstrap-maxlength.js"></script>
	<script src="../../../assets/js/inputmask.js"></script>
	<script src="../../../assets/js/select2.js"></script>
	<script src="../../../assets/js/typeahead.js"></script>
	<script src="../../../assets/js/tags-input.js"></script>
	<script src="../../../assets/js/dropzone.js"></script>
	<script src="../../../assets/js/dropify.js"></script>
	<script src="../../../assets/js/bootstrap-colorpicker.js"></script>
	<script src="../../../assets/js/datepicker.js"></script>
	<script src="../../../assets/js/timepicker.js"></script>
    <script src="../../../assets/js/simplemde.js"></script>
    <script src="../../../assets/vendors/simplemde/simplemde.min.js"></script>


</asp:Content>
