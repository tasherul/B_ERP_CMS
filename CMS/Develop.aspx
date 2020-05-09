<%@ Page Title="" Language="C#" MasterPageFile="~/CMS/CMSmaster.Master" AutoEventWireup="true" CodeBehind="Develop.aspx.cs" Inherits="B_ERP_CMS.CMS.Develop" %>
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

        <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalCenterTitle">Modal title</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">

                        <div class="row">
                            <div class="col-md-2 text-center"></div>
                            <div class="col-md-3 text-center">
                                <img src="../image/mssql.png" width="70" height="50" /><br />
                                <asp:RadioButton ID="RBmsSQL" Checked="true" Text="MSSQL" Font-Bold="true" GroupName="_sql" runat="server" />
                               
                            </div>
                            <div class="col-md-2 text-center"></div>
                            <div class="col-md-3 text-center">
                                <img src="../image/mysql.png" width="80" height="50" /><br />
                                <asp:RadioButton ID="RBmySQL" Text="MYSQL" Font-Bold="true" GroupName="_sql" runat="server" />
                                
                            </div>
                            <div class="col-md-2 text-center"></div>
                        </div>


                        <div class=" row">
                            <div class="col-md-4">
                                <label class="col-form-label">Title</label>
                            </div>
                            <div class="col-md-8">
                                <input class="form-control" type="text" placeholder="Type Something..">
                                <div class="text-right"><code><sup>your template catagory please selected.</sup></code></div>
                            </div>
                        </div>
                        <div class=" row">
                            <div class="col-md-4">
                                <label class="col-form-label">DataBase Name</label>
                            </div>
                            <div class="col-md-8">
                                <input class="form-control" type="text" placeholder="Type Something..">
                                  <div class="text-right"><code><sup>your template catagory please selected.</sup></code></div>
                            </div>
                        </div>
                        <div class=" row">
                            <div class="col-lg-4">
                                <label class="col-form-label">Data Source</label>
                            </div>
                            <div class="col-lg-5">
                                <input class="form-control" type="text" placeholder="Type Something..">
                                                                
                            </div>
                            <div class="col-lg-3">
                                <input class="form-control" type="text" placeholder="port">
                            </div>
                            <div class="col-lg-4"></div>
                            <div class="col-lg-8"><div class="text-right"><code><sup>your template catagory please selected.</sup></code></div></div>
                        </div>
                        <div class=" row">
                            <div class="col-lg-4">
                                <label class="col-form-label">User ID</label>
                            </div>
                            <div class="col-lg-8">
                                <input class="form-control" type="text" placeholder="Type Something..">
                                <div class="text-right"><code><sup>your template catagory please selected.</sup></code></div>
                            </div>
                        </div>
                        <div class=" row">
                            <div class="col-lg-4">
                                <label class="col-form-label">Password</label>
                            </div>
                            <div class="col-lg-8">
                                <input class="form-control" type="text" placeholder="Type Something..">
                                <div class="text-right"><code><sup>your template catagory please selected.</sup></code></div>
                            </div>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>
                    </div>
                </div>
            </div>
        </div>
        

        <div class="row">
            <div class="col-lg-6 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Form Validation</h4>
                        <p class="card-description">Read the Official<a href="#">#Documentation</a>for a full list of instructions and other options.</p>

                        <div class="form-group">
                            <label>Title</label>
                            <asp:TextBox ID="txtTitle" placeholder="title" CssClass="form-control" runat="server"></asp:TextBox>
                            <div class="text-right"><code><sub>your template title</sub></code></div>
                        </div>
                        <div class="form-group">
                            <label for="email">Discription</label>
                            <textarea class="form-control" runat="server" rows="20" maxlength="100" name="defaultconfig" id="defaultconfig" placeholder="Type discription in your template.."></textarea>
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
                                <asp:TextBox ID="txtPrice" data-inputmask="'alias': 'currency'" CssClass="form-control mb-4 mb-md-0" runat="server"></asp:TextBox>

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
                            <input id="name" class="form-control" name="name" type="text">
                            <div class="text-right"><code><sub>example: https://youtube.com/watch?=123456 </sub></code></div>
                        </div>

                        <div class="form-check">
                            <label class="form-check-label">
                                <input type="checkbox" onclick="checkPersonalDB()" id="chkPersonalDB" class="form-check-input">
                                Personal Database
                            </label>
                        </div>

                        <div class="form-group row" id="pnlPersonalDB">
                            <div class="col-lg-3">
                                <label class="col-form-label">Database Type: </label>
                            </div>
                            <div class="col-lg-6">
                                <asp:DropDownList ID="ddlUserDatabase" CssClass="form-control" runat="server"></asp:DropDownList>
                            </div>
                            <div class="col-lg-3">
                                <button type="button" data-toggle="modal" data-target="#exampleModalCenter" class="btn  btn-danger btn-icon-text">
                                    <i class="btn-icon-prepend" data-feather="file-plus"></i>
                                    Add
                                </button>
                            </div>
                        </div>



                        <div class="form-check">
                            <label class="form-check-label">
                                <input type="checkbox" runat="server" style="cursor: pointer;" class="form-check-input">
                                SEO 
                            </label>
                            <code><sub>Using SEO code in Template Design and if you wand to lern please check #Documentation </sub></code>
                        </div>

                        <div class="form-check">
                            <label class="form-check-label">
                                <input type="checkbox" runat="server" style="cursor: pointer;" class="form-check-input">
                                Version Upgrade
                            </label>
                            <code><sub>Automatic Software Upgread in show in template</sub></code>
                        </div>
                        <div class="form-check">
                            <label class="form-check-label">
                                <input type="checkbox" runat="server" style="cursor: pointer;" class="form-check-input">
                                Speed Optimization
                            </label>
                            <code><sub>Must be fast and speed *.js *.css in template. Speed Optimization is nedd to template.<sub></code>
                        </div>
                        <div class="form-check">
                            <label class="form-check-label">
                                <input type="checkbox" runat="server" style="cursor: pointer;" class="form-check-input">
                                Testing
                            </label>
                            <code><sub>Publish testing and apps testing is check. </sub></code>
                        </div>
                        <div class="form-check">
                            <label class="form-check-label">
                                <input type="checkbox" runat="server" style="cursor: pointer;" class="form-check-input">
                                Support 24/7
                            </label>
                            <code><sub>Buyer Support in 24/7 in Business day.</sub></code>
                        </div>




                        <p class="mb-2">Type something to add a new tag for your template.</p>
                        <div>
                            <input name="tags" id="tags" value="how to," />
                        </div>
                      <%--  <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>


                                <div class="form-check">
                                    <div class="row">
                                        <div class="col-md-9">
                                            <asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server" />
                                        </div>
                                        <div class="col-md-3 text-right">
                                            <i data-feather="save" style="color: #E91E63"></i>
                                            <asp:Button ID="btnAdd" OnClick="btnAdd_Click" CssClass="btn btn-danger " runat="server" Text="Add" />
                                        </div>
                                    </div>
                                </div>

                                <div class="form-check">
                                    <div class="row">
                                        <div class=" col-md-3" style="border: 1px solid #0094ff;">
                                            <asp:Image ID="Image1" Width="100%" Height="130" ImageUrl="../image/No-image-available.png" runat="server" />
                                        </div>
                                        <div class=" col-md-3" style="border: 1px solid #0094ff;">
                                            <asp:Image ID="Image2" Width="100%" Height="130" ImageUrl="../image/No-image-available.png" runat="server" />
                                        </div>
                                        <div class=" col-md-3" style="border: 1px solid #0094ff;">
                                            <asp:Image ID="Image3" Width="100%" Height="130" ImageUrl="../image/No-image-available.png" runat="server" />
                                        </div>
                                        <div class=" col-md-3" style="border: 1px solid #0094ff;">
                                            <asp:Image ID="Image4" Width="100%" Height="130" ImageUrl="../image/No-image-available.png" runat="server" />
                                        </div>
                                    </div>
                                </div>

                            </ContentTemplate>
                        </asp:UpdatePanel>--%>


                        <div class="form-check">
                            <button type="button" class="btn btn-danger btn-icon">
                                <i data-feather="save"></i>
                            </button>
                            <asp:Button ID="btnTemplate" CssClass="btn btn-success" runat="server" Text="Make Template Done! (your template image upload process strat)" />
                        </div>



                    </div>
                </div>
            </div>
            <div class="col-lg-6 grid-margin stretch-card">
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
            </div>
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
