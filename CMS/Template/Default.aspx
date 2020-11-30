<%@ Page Title="" Language="C#" MasterPageFile="~/CMS/CMSmaster.Master" ValidateRequest="false" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="B_ERP_CMS.CMS.Template.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Template</title>
	<link rel="stylesheet" href="../../../assets/vendors/core/core.css">
	<link rel="stylesheet" href="../../../assets/fonts/feather-font/css/iconfont.css">
	<link rel="stylesheet" href="../../../assets/css/demo_5/style.css">
		<link rel="stylesheet" href="../../../assets/vendors/prismjs/themes/prism.css">
	 <script src="Scripts/jquery-3.4.1.min.js"></script>
    	<link rel="stylesheet" href="../../../assets/vendors/simplemde/simplemde.min.css">
    	<link rel="stylesheet" href="../../../assets/vendors/bootstrap-colorpicker/bootstrap-colorpicker.min.css">
    <style>
			 .bodycss{
				 border-top:0;
				 border-left:0;
				 border-right:0;
				 border-bottom:2px dotted #669900;
			 }
			 .red{
				 color:#990055;
				 font-size:medium;
			 }
			 .green{
				 color:#669900;
				 font-size:medium;
			 }
			 .ass{
				 color:#999999;
				 font-size:medium;
			 }
			 .htmltext
			 {
				 font-size:medium;
				 border:0;
				 background-color:#efefef;
                 color:#1e77d7;
                 padding:10px;
                 font-weight:bold;
			 }
             .padding
             {
                 float:right;
                 margin-left:1.9%;
             }
									</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">


    <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">

                <div class="modal-header">
                    <h5 class="modal-title h4" id="myLargeModalLabel">Add Class or Script</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-md-8">
                                    <asp:DropDownList ID="ddlCssJs" CssClass="form-control" runat="server"></asp:DropDownList>
                                </div>
                                <div class="col-md-4">
                                    <asp:Button ID="btnCssJsSave" OnClick="btnCssJsSave_Click" CssClass="form-control btn btn-success" runat="server" Text="Add Script/Class" />
                                    <asp:Button ID="btnDeleteCssJs" OnClick="btnDeleteCssJs_Click" CssClass="form-control btn btn-danger" runat="server" Text="Delete All Files" />
                                </div>
                            </div>
                            <asp:Label ID="lblCssJs_Result" runat="server"></asp:Label>

                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>

            </div>
        </div>
    </div>

    <div class="page-content">

        <nav class="page-breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="../CMS/">CMS</a></li>
                <li class="breadcrumb-item active">Template</li>
            </ol>
        </nav>

        <div class="row">
            <div class="col-lg-3 grid-margin stretch-card" id="pnlBar" runat="server">
                <div class="card">
                    <div class="card-body">
                        <div class="form-group ">
                                <asp:Button ID="btnBack" OnClick="btnBack_Click" CssClass="form-control btn btn-outline-warning" runat="server" Text="<- Back" />
                            </div>
                        <div class="form-group ">
                            <asp:Button ID="btnPreview" OnClick="btnPreview_Click" CssClass="form-control btn btn-outline-success" runat="server" Text="Preview ->" />
                        </div>

                        <h4 class="card-title">Menu</h4>
                        <div class="cmxform">

                            <div class="form-group ">
                                <asp:Button ID="btnfileUpload" CssClass="form-control btn btn-danger" runat="server" OnClick="btnfileUpload_Click" Text="File Upload" />
                            </div>
							<div class="form-group ">
                                <asp:Button ID="btnHeaderControl" CssClass="form-control btn btn-danger" OnClick="btnHeaderControl_Click" runat="server" Text="Main Control" />
                            </div>
							<div class="form-group ">
                                <asp:Button ID="btnHtmlDesign" OnClick="btnHtmlDesign_Click"  CssClass="form-control btn btn-danger" runat="server" Text="Html Design" />
                            </div>
                            <div class="form-group ">
                                <asp:Button ID="btnCssEditor" OnClick="btnCssEditor_Click"  CssClass="form-control btn btn-warning" runat="server" Text="Css Editor" />
                            </div>
                            <div class="form-group ">
                                <asp:Button ID="btnEditor" OnClick="btnEditor_Click" CssClass="form-control btn btn-warning" runat="server" Text="Html Editor" />
                            </div>
							<h4 class="card-title">Content Page</h4>
							<div class="form-group ">
                                <asp:Button ID="btnLayout" OnClick="btnLayout_Click" CssClass="form-control btn btn-success" runat="server" Text="Layout" />
                            </div>
							<div class="form-group ">
                                <asp:Button ID="Button18" Visible="false" CssClass="form-control btn btn-success" runat="server" Text="Widget" />
                            </div>
							<div class="form-group ">
                                <asp:Button ID="btnDataTables" OnClick="btnDataTables_Click"  CssClass="form-control btn btn-success" runat="server" Text="Data Table" />
                            </div>
							<div class="form-group ">
                                <asp:Button ID="Button20" Visible="false" CssClass="form-control btn btn-success" runat="server" Text="Dashboard" />
                            </div>
							<div class="form-group ">
                                <asp:Button ID="Button21" Visible="false" CssClass="form-control btn btn-success" runat="server" Text="Chart" />
                            </div>													
							<h4 class="card-title">Items</h4>
							<div class="form-group ">
                                <asp:Button ID="Button23" Visible="false" CssClass="form-control btn btn-primary" runat="server" Text="Icon" />
                            </div>
							<div class="form-group ">
                                <asp:Button ID="btnButton" OnClick="btnButton_Click" CssClass="form-control btn btn-primary" runat="server" Text="Button" />
                            </div>
							<div class="form-group ">
                                <asp:Button ID="btnLabel" OnClick="btnLabel_Click" CssClass="form-control btn btn-primary" runat="server" Text="Label/ Alert" />
                            </div>
							<div class="form-group ">
                                <asp:Button ID="btnDropDown" Visible="false" OnClick="btnDropDown_Click" CssClass="form-control btn btn-primary" runat="server" Text="Dropdown" />
                            </div>
                            <div class="form-group ">
                                <asp:Button ID="btnTextBox" OnClick="btnTextBox_Click"  CssClass="form-control btn btn-primary" runat="server" Text="TextBox" />
                            </div>
							<div class="form-group ">
                                <asp:Button ID="btnRadioButton" OnClick="btnRadioButton_Click" CssClass="form-control btn btn-primary" runat="server" Text="Radio Button" />
                            </div>
							<div class="form-group ">
                                <asp:Button ID="Button8" Visible="false" CssClass="form-control btn btn-primary" runat="server" Text="Link Button" />
                            </div>
							<div class="form-group ">
                                <asp:Button ID="btnCheckBox" OnClick="btnCheckBox_Click" CssClass="form-control btn btn-primary" runat="server" Text="CheckBox" />
                            </div>
							<div class="form-group ">
                                <asp:Button ID="Button10" Visible="false" CssClass="form-control btn btn-primary" runat="server" Text="Uploader" />
                            </div>
							<div class="form-group ">
                                <asp:Button ID="Button11" Visible="false" CssClass="form-control btn btn-primary" runat="server" Text="Image" />
                            </div>
							<div class="form-group ">
                                <asp:Button ID="btnAlert" Visible="false" OnClick="btnAlert_Click" CssClass="form-control btn btn-primary" runat="server" Text="Alert" />
                            </div>
							<div class="form-group ">
                                <asp:Button ID="Button13" Visible="false" CssClass="form-control btn btn-primary" runat="server" Text="Process" />
                            </div>
							<%--<h4 class="card-title">Page</h4>--%>
							<div class="form-group ">
                                <asp:Button ID="btnDemoPage" Visible="false" OnClick="btnDemoPage_Click" CssClass="form-control btn btn-dark" runat="server" Text="Demo Page" />
                            </div>	
							<div class="form-group ">
                                <asp:Button ID="Button14" Visible="false" CssClass="form-control btn btn-dark" runat="server" Text="Login Page" />
                            </div>
							<div class="form-group ">
                                <asp:Button ID="Button15" Visible="false" CssClass="form-control btn btn-dark" runat="server" Text="Invoice" />
                            </div>
							<div class="form-group ">
                                <asp:Button ID="Button16" Visible="false" CssClass="form-control btn btn-dark" runat="server" Text="Reporting" />
                            </div>
                        </div>
                    </div>

                </div>
            </div>

            <div class="col-lg-9 grid-margin stretch-card" id="pnlFileUpload" runat="server">
                <div class="row">

                    <div class="col-lg-8 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">File Upload</h4>
                                <p class="card-description">Your trmplate file upload like <code>*.css *.js *.png *.ico etc</code></p>
                                <div class="form-group row">
                                    <div class="col-lg-4">
                                        <label class="col-form-label">File Upload :</label>
                                    </div>
                                    <div class="col-lg-8">
                                        <asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server" />
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-lg-4">
                                        <label class="col-form-label">Path: <code>File/<asp:Label ID="lblPath" runat="server"></asp:Label>/</code></label>
                                    </div>
                                    <div class="col-lg-8">
                                        <asp:TextBox ID="txtPath" CssClass="form-control" placeholder="path example: assets/css/demo1/" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <asp:Label ID="lblResult" runat="server"></asp:Label>
                                <asp:Button ID="btnSubmit" OnClick="btnSubmit_Click" CssClass="btn btn-danger mr-2" runat="server" Text="Submit" />

								<br /><br /><br />
								<p class="card-description">Upload only <code>*.zip</code> file. Zip file will Extract All Files and Folders.</p>
								<div class="form-group row">
                                    <div class="col-lg-4">
                                        <label class="col-form-label">Zip File Upload :</label>
                                    </div>
                                    <div class="col-lg-8">
                                        <asp:FileUpload ID="FileUpload2" CssClass="form-control" runat="server" />
                                    </div>
                                </div>
                                <asp:Button ID="btnZipUpload" CssClass="btn btn-danger mr-2" OnClick="btnZipUpload_Click" runat="server" Text="Zip File Upload" />
								<asp:Label ID="lblFileuploadResult" runat="server"></asp:Label>

                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">File</h4>
                                <style>
                                    .delete a {
                                        width: 20px;
                                        height: 20px;
                                        transition-duration: 0.5s;
                                        transition-timing-function: linear;
                                    }

                                    .delete:hover a {
                                        color: red;
                                    }

                                    .folder {
                                        cursor: pointer;
                                    }

                                        .folder svg {
                                            color: #e8ce00;
                                            width: 17px;
                                            height: 17px;
                                        }

                                    .pad-0 {
                                        padding-left: 0px;
                                        width: 100%;
                                    }

                                    .pad-1 {
                                        padding-left: 24px;
                                        width: 100%;
                                    }

                                    .pad-2 {
                                        padding-left: 48px;
                                        width: 100%;
                                    }

                                    .pad-3 {
                                        padding-left: 72px;
                                        width: 100%;
                                    }

                                    .pad-4 {
                                        padding-left: 96px;
                                        width: 100%;
                                    }

                                    .pad-5 {
                                        padding-left: 120px;
                                        width: 100%;
                                    }

                                    .pad-6 {
                                        padding-left: 144px;
                                        width: 100%;
                                    }

                                    .pad-7 {
                                        padding-left: 168px;
                                        width: 100%;
                                    }

                                    .pad-8 {
                                        padding-left: 192px;
                                        width: 100%;
                                    }

                                    .pad-9 {
                                        padding-left: 216px;
                                        width: 100%;
                                    }

                                    .pad-10 {
                                        padding-left: 240px;
                                        width: 100%;
                                    }

                                    .file a :hover {
                                        color: #ff7171;
                                    }

                                    .file svg {
                                        width: 17px;
                                        height: 17px;
                                    }

                                    .file-icon-name {
                                        color: #000000;
                                    }

                                        .file-icon-name svg {
                                            color: #0f2b24;
                                        }
                                </style>
                                <div class="row">
                                    <asp:PlaceHolder ID="pnlFile_and_Folder" runat="server"></asp:PlaceHolder>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

			<div id="pnlHeaderControl" class="col-lg-9 grid-margin stretch-card" runat="server">				
                    
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Main Controls</h4>
                                <p class="card-description">
									<code>{0}</code> is a Header Design<br />
									<code>{1}</code> &nbsp;is a Bar Design<br />
									<code>{2}</code> is a Body Design<br />
									<code>{3}</code> is a Footer Design

                                </p>

                                <div class="form-group row">     
									

                                  

								<span style="color:#990055; font-size:medium; margin-bottom:10px;">	&lt;body <span style="color:#669900;">class</span><span style="color:#999999;">=" </span> <asp:TextBox ID="txtBodyCss" placeholder="if you need any body class please type your class." CssClass="bodycss" Width="400" runat="server"></asp:TextBox><span style="color:#999999;">"</span> &gt;</span>
                           

                                    <asp:TextBox CssClass="htmltext" ID="txthtml" Visible="true" TextMode="MultiLine" Width="100%" Height="500" runat="server">																			 									  																		 									   

                                    
                                    </asp:TextBox>
									<br /><br /><br /><br />
                                    <asp:Button ID="btnMainSave" CssClass="btn btn-success" OnClick="btnMainSave_Click" runat="server" Text="Save Main Html" />
                                    <asp:Button ID="btnDeleteCssJsFiles" OnClick="btnDeleteCssJsFiles_Click" CssClass="btn btn-danger" runat="server" Text="Delete All Css Js Files" />

                                </div>			
                               
								<br />
								<a style="color:#990055; font-size:medium;">&lt;&sol;body&gt;</a>

								<div class="row">
									<div class="col-md-8">
										 <asp:DropDownList ID="ddlJs" CssClass="form-control"  runat="server"></asp:DropDownList>
									</div>
									<div class="col-md-4">
										 <asp:Button ID="btnJs" CssClass="form-control" OnClick="btnJs_Click" runat="server" Text="Add JS" />
									</div>
								</div>
								<br />
								<div class="row">
									<div class="col-md-8">
										 <asp:DropDownList ID="ddlCss" CssClass="form-control"  runat="server"></asp:DropDownList>
									</div>
									<div class="col-md-4"> 
										 <asp:Button ID="btnCSS" CssClass="form-control" OnClick="btnCSS_Click" runat="server" Text="Add Css" />
									</div>
								</div>
								<%-- 
									     <link rel="stylesheet" href="../../../assets/vendors/prismjs/themes/prism.css"/>
										 <script src="Scripts/jquery-3.4.1.min.js"></script>
									--%>

                                <asp:Label ID="lblHeaderReasult" runat="server"></asp:Label>
                                <asp:Label ID="lblJs" runat="server" Text="No Js File"></asp:Label>
								<asp:Label ID="lblCss" runat="server" Text="No Css File"></asp:Label>


<%--
	<span style='color:#990055; font-size:medium; margin-bottom:10px;'>	&lt;link 
	<span style='color:#669900;'>rel</span><span style='color:#999999;'>=&#34;</span><span style='color:#767dff'>stylesheet</span><span style='color:#999999;'>&#34;</span> 
	<span style='color:#669900;'>href</span><span style='color:#999999;'>=&#34;</span><span style='color:#767dff'>assets/vendors/prismjs/themes/prism.css</span><span style='color:#999999;'>&#34;</span>&sol;&gt;</span>
	<br />
	<span style='color:#990055; font-size:medium; margin-bottom:10px;'>	&lt;script
	<span style='color:#669900;'>src</span><span style='color:#999999;'>=&#34;</span><span style='color:#767dff'>Scripts/jquery-3.4.1.min.js</span><span style='color:#999999;'>&#34;</span>&gt;&lt;&sol;script&gt;</span>--%>

                            </div>
                        </div>
                               

			</div>

			<div id="pnlBarControl" class="col-lg-9 grid-margin stretch-card" runat="server">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Html Design</h4>



                        <p class="card-description">
                            <asp:CheckBox ID="chkHtmlDesign_Section1" OnCheckedChanged="chkHtmlDesign_Section1_CheckedChanged" AutoPostBack="true" runat="server" Text="&nbsp;Section 1: " />
                            <code>Header (image Section)</code>
                        </p>
                        <div id="pnlHtmlDesign_Section1" runat="server">
                            <figure class="highlight">
                                <pre><code class="language-markup"><script type="script/prism-html-markup"><a href="{2}" class="Class1 Class2">
    <image src="{0}" AlternateText="{1}" class="Class1 Class2" />
	<!-- example: src="File/123/asset/image/logo.jpg" -->
 </a></script></code></pre>
                            </figure>
                            <div class="form-group row">
                                <asp:TextBox CssClass="htmltext" ID="txtHtmlDesign_Section1_HTMLCode" placeholder="your content type here. please follow the coding is {0} {1} {2}...{n}. your need to check this code becouse this code is so important to making application." TextMode="MultiLine" Width="100%" Height="150" runat="server"></asp:TextBox>
                            </div>
                            <p class="card-description"><strong>Default Data</strong></p>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label class="control-label"><code><strong>{0}</strong></code>Image/Logo Src Link <code>in server</code></label>
                                        <asp:TextBox ID="txtHtmlDesign_Section1_DD_ImageSrcLink" CssClass="form-control" placeholder="example: File/123/asset/image/logo.jpg" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <!-- Col -->
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label class="control-label"><code><strong>{1}</strong></code>Alternate Text This Image/ Logo</label>
                                        <asp:TextBox ID="txtHtmlDesign_Section1_DD_AlternatText" CssClass="form-control" placeholder="example: imageName or image seo text" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <!-- Col -->
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label class="control-label"><code><strong>{2}</strong></code>HiperLink</label>
                                        <asp:TextBox ID="txtHtmlDesign_Section1_DD_HiperLink" CssClass="form-control" placeholder="example: http://example.com" runat="server"></asp:TextBox>

                                    </div>
                                </div>
                                <!-- Col -->
                            </div>
                            <hr />
                        </div>


                        <p class="card-description">
                            <asp:CheckBox ID="chkHtmlDesign_Section2" OnCheckedChanged="chkHtmlDesign_Section2_CheckedChanged" AutoPostBack="true" runat="server" Text="&nbsp;Section 2: " />
                            <code>Header (Scarch Section)</code>
                        </p>
                        <div id="pnlHtmlDesign_Section2" runat="server">
                            <figure class="highlight">
                                <pre><code class="language-markup"><script type="script/prism-html-markup"><div class="Class-1">
	  <input class="Class-1" type="search" placeholder="Search here..">
	  <button class="Class-1"> Search</button>
	 </div>
	</script></code></pre>
                            </figure>
                            <div class="form-group row">
                                <asp:TextBox CssClass="htmltext" ID="txtHtmlDesign_Section2_HTMLCode" placeholder="your content type here. please follow the coding is {0} {1} {2}...{n}. your need to check this code becouse this code is so important to making application." TextMode="MultiLine" Width="100%" Height="150" runat="server"></asp:TextBox>
                            </div>
                            <hr />
                        </div>




                        <p class="card-description">
                            <asp:CheckBox ID="chkHtmlDesign_Section3" OnCheckedChanged="chkHtmlDesign_Section3_CheckedChanged" AutoPostBack="true" runat="server" Text="&nbsp;Section 3: " />
                            <code>Header (Notification Section)</code>
                        </p>
                        <div id="pnlHtmlDesign_Section3" runat="server">
                            <figure class="highlight">
                                <pre><code class="language-markup"><script type="script/prism-html-markup"><a href="{0}" class="Class1 Class2">
  <div class="Class1 Class2">{1}</div>
  <!-- example: Code:{1} FontAwesome Icon <i class="Class1 Class2"></i> -->
  <p class="Class1 Class2">{2}<small class="Class1">{3}</small></p> </a>
<!-- example: Code:{2} Title | Code:{3} Details or Time -->
	</script></code></pre>
                            </figure>
                            <div class="form-group row">
                                  <asp:TextBox CssClass="htmltext" ID="txtHtmlDesign_Section3_HTMLCode2" placeholder="your content type here. your need to check this code becouse this code is so important to making application." TextMode="MultiLine" Width="100%" Height="150" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group row">
                                <asp:TextBox CssClass="htmltext" ID="txtHtmlDesign_Section3_HTMLCode" placeholder="your content type here. please follow the coding is {0} {1} {2}...{n}. your need to check this code becouse this code is so important to making application." TextMode="MultiLine" Width="100%" Height="150" runat="server"></asp:TextBox>
                            </div>
                            <p class="card-description"><strong>Default Data</strong></p>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label class="control-label"><code><strong>{0}</strong></code>Link</label>
                                        <asp:TextBox ID="txtHtmlDesign_Section3_DD_Link" CssClass="form-control" placeholder="example: http://example.com" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <!-- Col -->
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label class="control-label"><code><strong>{1}</strong></code>Icon <code>in server</code></label>
                                        <asp:TextBox ID="txtHtmlDesign_Section3_DD_Icon" CssClass="form-control" placeholder="example:(class code) <i class='fa fa-icon'></i>" runat="server"></asp:TextBox>

                                    </div>
                                </div>
                                <!-- Col -->
                            </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label class="control-label"><code><strong>{2}</strong></code>Title</label>
                                        <asp:TextBox ID="txtHtmlDesign_Section3_DD_Title" CssClass="form-control" placeholder="example: Type Title upto 100 charter" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <!-- Col -->
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label class="control-label"><code><strong>{3}</strong></code>Short Details or Times</label>
                                        <asp:TextBox ID="txtHtmlDesign_Section3_DD_DetailsOrTime" CssClass="form-control" placeholder="example: Typr Date time or any short details." runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <!-- Col -->
                            </div>
                            <hr />
                        </div>
                            <%--<add name="dbm2" connectionString="Data Source=209.151.194.144,8494;Initial Catalog=dbmanagement;Integrated Security=True;User ID=dbmanagement_users; Password=bnswzqrjyahvfmtxi2ck;"

                        --%><p class="card-description">
                            <asp:CheckBox ID="chkHtmlDesign_Section4" OnCheckedChanged="chkHtmlDesign_Section4_CheckedChanged" AutoPostBack="true" runat="server" Text="&nbsp;Section 4: " />
                            <code>Header (Message Section)</code>
                        </p>
                        <div id="pnlHtmlDesign_Section4" runat="server">
                            <figure class="highlight">
                                <pre><code class="language-markup"><script type="script/prism-html-markup"><a href="{0}" class="Class1 Class2">
 <div class="Class1 Class2"><image src="{1}" AlternateText="{2}" class="Class1 Class2" /></div>
 <!-- example: src="File/123/asset/image/logo.jpg" -->
 <p class="Class1 Class2">{2}<small class="Class1">{3}</small></p> </a>
<!-- example: Code:{2} Title | Code:{3} Message or Time --></script></code></pre>
                            </figure>
                             <div class="form-group row">
                                  <asp:TextBox CssClass="htmltext" ID="txtHtmlDesign_Section4_HtmlCode2" placeholder="your content type here. your need to check this code becouse this code is so important to making application." TextMode="MultiLine" Width="100%" Height="150" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group row">
                                <asp:TextBox CssClass="htmltext" ID="txtHtmlDesign_Section4_HtmlCode" TextMode="MultiLine" Width="100%" Height="150" runat="server"></asp:TextBox>
                            </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label class="control-label"><code><strong>{0}</strong></code>Link</label>
                                        <asp:TextBox ID="txtHtmlDesign_Section4_DD_Link" CssClass="form-control" placeholder="example: http://example.com" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <!-- Col -->
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label class="control-label"><code><strong>{1}</strong></code>Image Link <code>in server</code></label>
                                        <asp:TextBox ID="txtHtmlDesign_Section4_DD_ImageLink" CssClass="form-control" placeholder="example: File/123/asset/image/logo.jpg." runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <!-- Col -->
                            </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label class="control-label"><code><strong>{2}</strong></code>Title</label>
                                        <asp:TextBox ID="txtHtmlDesign_Section4_DD_Title" CssClass="form-control" placeholder="example: Short Title upto 100 charter" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <!-- Col -->
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label class="control-label"><code><strong>{3}</strong></code>Short Details or Times</label>
                                        <asp:TextBox ID="txtHtmlDesign_Section4_DD_DetailsOrTime" CssClass="form-control" placeholder="example: short Details or Time" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <!-- Col -->
                            </div>
                            <hr />
                        </div>


                        <p class="card-description">
                            <asp:CheckBox ID="chkHtmlDesign_Section5" OnCheckedChanged="chkHtmlDesign_Section5_CheckedChanged" AutoPostBack="true" runat="server" Text="&nbsp;Section 5: " />
                            <code>Header (Profile Section)</code>
                        </p>
                        <div id="pnlHtmlDesign_Section5" runat="server">
                            <figure class="highlight">
                                <pre><code class="language-markup"><script type="script/prism-html-markup"><!-- Section 1 Submition -->
	<a class="Class-1" addintional-data>
	 <image src="{0}" alt="{1}" class="Class-2">
	 <!-- example: src="File/123/asset/image/logo.jpg" -->
	<span class="Class-3">{1}</span></a>

	<div class="Class-1">
	 {2}
	</div>
	<!-- Section 2 Loop Show -->
		<a class="Class-1" href="{0}"><i class="Class-1"></i>{1}</a>  


																	   </script></code></pre>
                            </figure>
                            <div class="form-group row">
                                Section 1:
								<asp:TextBox CssClass="htmltext" ID="txtHtmlDesign_Section5_HtmlCode1" TextMode="MultiLine" Width="100%" Height="150" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group row">
                                Section 2:
								<asp:TextBox CssClass="htmltext" ID="txtHtmlDesign_Section5_HtmlCode2" TextMode="MultiLine" Width="100%" Height="150" runat="server"></asp:TextBox>
                            </div>
                            <p class="card-description"><strong>Default Data</strong></p>
                            <div class="row">
                                <!-- Col -->
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label class="control-label"><code><strong>{0}</strong></code>Section 1: Image Link <code>in server</code></label>
                                        <asp:TextBox ID="txtHtmlDesign_Section5_Section1_DD_ImageLink" CssClass="form-control" placeholder="example File/123/asset/image/logo.jpg" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label class="control-label"><code><strong>{1}</strong></code>Section 1: Name</label>
                                        <asp:TextBox ID="txtHtmlDesign_Section5_Section1_DD_Name" CssClass="form-control" placeholder="example: your full name" runat="server"></asp:TextBox>
                                    </div>
                                </div>                                
                                <!-- Col -->
                            </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label class="control-label"><code><strong>{0}</strong></code>Section 2: Link</label>
                                        <asp:TextBox ID="txtHtmlDesign_Section5_Section2_DD_Link" CssClass="form-control" placeholder="example: http://example.com" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <!-- Col -->
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label class="control-label"><code><strong>{1}</strong></code>Section 2: Name</label>
                                        <asp:TextBox ID="txtHtmlDesign_Section5_Section2_DD_Name" CssClass="form-control" placeholder="example: your full name" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <!-- Col -->
                            </div>
                            <hr />
                        </div>

                        <p class="card-description">
                            <asp:CheckBox ID="chkHtmlDesign_Section6" OnCheckedChanged="chkHtmlDesign_Section6_CheckedChanged" AutoPostBack="true" runat="server" Text="&nbsp;Section 6: " />
                            <code>Body (Bar Section)</code>
                        </p>
                        <div id="pnlHtmlDesign_Section6" runat="server">
                            <figure class="highlight">
                                <pre><code class="language-markup"><script type="script/prism-html-markup"><!-- Section 1 Submition -->
        <li class="Class-1"><a href="{0}"><i class="Class-1"></i>{1}</a>
        <ul class="Class-1">
            {2}                                  
        </ul>

	        <!-- Section 2 Loop Show -->
         <li><a href="{0}">{1}</a></li>
         <li><a href="{0}">{1}</a></li></script></code></pre>
                            </figure>
                            <p class="card-description"><strong>Default Data</strong></p>
                            <div class="form-group row">
                                Section 1:
								        <asp:TextBox CssClass="htmltext" ID="txtHtmlDesign_Section6_HtmlCode1" TextMode="MultiLine" Width="100%" Height="150" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group row">
                                Section 2:
								        <asp:TextBox CssClass="htmltext" ID="txtHtmlDesign_Section6_HtmlCode2" TextMode="MultiLine" Width="100%" Height="150" runat="server"></asp:TextBox>
                            </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label class="control-label"><code><strong>{0}</strong></code>Section 1: Link</label>
                                        <asp:TextBox ID="txtHtmlDesign_Section6_section1_DD_Link" placeholder="example: http://example.com" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <!-- Col -->
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label class="control-label"><code><strong>{1}</strong></code>Section 1: BarName</label>
                                        <asp:TextBox ID="txtHtmlDesign_Section6_section1_DD_BarName" placeholder="example: dashboard" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <!-- Col -->
                            </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label class="control-label"><code><strong>{0}</strong></code>Section 2: Link</label>
                                        <asp:TextBox ID="txtHtmlDesign_Section6_section2_DD_Link" placeholder="example: http://example.com" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <!-- Col -->
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label class="control-label"><code><strong>{1}</strong></code>Section 2: Bar Name</label>
                                        <asp:TextBox ID="txtHtmlDesign_Section6_section2_DD_BarName" placeholder="example: dashboard 1" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <!-- Col -->
                            </div>
                        </div>


                        <p class="card-description">
                            <asp:CheckBox ID="chkHtmlDesign_Section7" OnCheckedChanged="chkHtmlDesign_Section7_CheckedChanged" AutoPostBack="true" runat="server" Text="&nbsp;Section 7: " />
                            <code>Footer Section</code>
                        </p>
                        <div id="pnlHtmlDesign_Section7" runat="server">
                            <figure class="highlight">
                                <pre><code class="language-markup"><script type="script/prism-html-markup"><footer class="footer text-center text-sm-left">
 &copy; 2020 B_CMS_ERP <span class="Class 1"> Name or link </span>
</footer></script></code></pre>
                            </figure>
                            <div class="form-group row">
                                <asp:TextBox CssClass="htmltext" ID="txtHtmlDesign_Section7_HtmlCode" placeholder="your content type here. please follow the coding is {0} {1} {2}...{n}. your need to check this code becouse this code is so important to making application." TextMode="MultiLine" Width="100%" Height="150" runat="server"></asp:TextBox>
                            </div>
                            <hr />
                        </div>

                        <hr /><hr />
                        <p class="card-description">
                            <asp:RadioButton  GroupName="a" ID="RBHtmlDesign_Save_AllSection" Text="&nbsp;Save All Section's" runat="server" /><br />
                            <asp:RadioButton  GroupName="a"  ID="RBHtmlDesign_Save_SelectionSections"  Text="&nbsp;Save Selection Section's" runat="server" /><br />                        </p>
                        <asp:Button ID="btnHtmlDesign_Save" OnClick="btnHtmlDesign_Save_Click" CssClass="btn btn-danger" runat="server" Text="Save" />
                        <asp:Label ID="lblHtmlDesign_Result" runat="server"></asp:Label>
                        <br />
                        <hr />

                        <p class="card-description">
                            <asp:CheckBox ID="chkDemoPage" OnCheckedChanged="chkDemoPage_CheckedChanged" AutoPostBack="true" runat="server" Text="&nbsp;DemoPage: " />
                            <code>Page Control</code>
                        </p>
                        <div id="pnlDemopage_" runat="server">
                            <p>Discription</p>

                            <div class="form-group row">
                                <asp:DropDownList ID="ddlDemoPage_ShowLayout" runat="server"></asp:DropDownList>
                            </div>
                            <div class="form-group row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="control-label">Check</label><br />
                                        <asp:CheckBox ID="chkDemoPage_DataTable" runat="server" Text="&nbsp;DataTable" />
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <label class="control-label">Select Demo Page Contant</label>
                                        <asp:DropDownList ID="ddlDemoPage_DataTable" runat="server"></asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="control-label">Check</label><br />
                                        <asp:CheckBox ID="chkDemoPage_Button" runat="server" Text="&nbsp;Button" />
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <label class="control-label">Select Button</label>
                                        <asp:DropDownList ID="ddlDemoPage_Button" runat="server"></asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="control-label">Check</label><br />
                                        <asp:CheckBox ID="chkDemoPage_LabelAlert" runat="server" Text="&nbsp;Label/Alert" />
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <label class="control-label">Select Label/ Alert</label>
                                        <asp:DropDownList ID="ddlDemoPage_LabelAlert" runat="server"></asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="control-label">Check</label><br />
                                        <asp:CheckBox ID="chkDemoPage_TextBox" runat="server" Text="&nbsp;TextBox" />
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <label class="control-label">Select TextBox</label>
                                        <asp:DropDownList ID="ddlDemoPage_TextBox" runat="server"></asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="control-label">Check</label><br />
                                        <asp:CheckBox ID="chkDemoPage_RadioButton" runat="server" Text="&nbsp;RadioButton" />
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <label class="control-label">Select RadioButton</label>
                                        <asp:DropDownList ID="ddlDemoPage_RadioButton" runat="server"></asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="control-label">Check</label><br />
                                        <asp:CheckBox ID="chkDemoPage_CheckBox" runat="server" Text="&nbsp;CheckBox" />
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <label class="control-label">Select CheckBox</label>
                                        <asp:DropDownList ID="ddlDemoPage_CheckBox" runat="server"></asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                            <asp:Button ID="btnDemoPage_Save" OnClick="btnDemoPage_Save_Click" CssClass="btn btn-success" runat="server" Text="Save" />
                            <asp:Label ID="lblDemoPage_Result" runat="server"></asp:Label>
                            <asp:GridView ID="GridView_DemoPage" Width="100%" runat="server" AutoGenerateColumns="False" DataKeyNames="DemoPage_ID" DataSourceID="SqlDataSource_DemoPage" CellPadding="4" ForeColor="#333333" GridLines="None">
                                <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True"></asp:CommandField>
                                    <asp:BoundField DataField="DemoPage_ID" Visible="false" HeaderText="DemoPage_ID" ReadOnly="True" InsertVisible="False" SortExpression="DemoPage_ID"></asp:BoundField>
                                    <asp:BoundField DataField="RegID" Visible="false" HeaderText="RegID" SortExpression="RegID"></asp:BoundField>
                                    <asp:BoundField DataField="Template_Id" Visible="false" HeaderText="Template_Id" SortExpression="Template_Id"></asp:BoundField>
                                    <asp:BoundField DataField="Alert_ID" HeaderText="Alert_ID" SortExpression="Alert_ID"></asp:BoundField>
                                    <asp:BoundField DataField="Button_ID" HeaderText="Button_ID" SortExpression="Button_ID"></asp:BoundField>
                                    <asp:BoundField DataField="CheckBox_ID" HeaderText="CheckBox_ID" SortExpression="CheckBox_ID"></asp:BoundField>
                                    <asp:BoundField DataField="DataTable_ID" HeaderText="DataTable_ID" SortExpression="DataTable_ID"></asp:BoundField>
                                    <asp:BoundField DataField="Layout_ID" HeaderText="Layout_ID" SortExpression="Layout_ID"></asp:BoundField>
                                    <asp:BoundField DataField="RadioButton_ID" HeaderText="RadioButton_ID" SortExpression="RadioButton_ID"></asp:BoundField>
                                    <asp:BoundField DataField="TextBox_ID" HeaderText="TextBox_ID" SortExpression="TextBox_ID"></asp:BoundField>
                                    <asp:BoundField DataField="DateTime" Visible="false" HeaderText="DateTime" SortExpression="DateTime"></asp:BoundField>
                                </Columns>
                                <EditRowStyle BackColor="#7C6F57"></EditRowStyle>

                                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White"></FooterStyle>

                                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White"></HeaderStyle>

                                <PagerStyle HorizontalAlign="Center" BackColor="#666666" ForeColor="White"></PagerStyle>

                                <RowStyle BackColor="#E3EAEB"></RowStyle>

                                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

                                <SortedAscendingCellStyle BackColor="#F8FAFA"></SortedAscendingCellStyle>

                                <SortedAscendingHeaderStyle BackColor="#246B61"></SortedAscendingHeaderStyle>

                                <SortedDescendingCellStyle BackColor="#D4DFE1"></SortedDescendingCellStyle>

                                <SortedDescendingHeaderStyle BackColor="#15524A"></SortedDescendingHeaderStyle>
                            </asp:GridView>
                            <asp:SqlDataSource runat="server" ID="SqlDataSource_DemoPage">
                                <DeleteParameters>
                                    <asp:Parameter Name="DemoPage_ID" Type="Int64"></asp:Parameter>
                                </DeleteParameters>


                            </asp:SqlDataSource>
                            <hr />
                        </div>
                        <br />

                        <p class="card-description">
                            <asp:CheckBox ID="chkEditor" OnCheckedChanged="chkEditor_CheckedChanged" AutoPostBack="true" runat="server" Text="&nbsp;Editor: " />
                            <code>Page Control</code>
                        </p>
                        <div id="pnlEditor" runat="server">
                              <div class="form-group row">
                                <div class="col-md-6"><div id="cp1" class="input-group mb-2" title="Using input value">
									<input type="text" class="form-control input-lg" value="#000000"/>
									<span class="input-group-append">
										<span class="input-group-text colorpicker-input-addon"><i></i></span>
									</span>
								</div></div>
                                <div class="col-md-6"><div id="cp2" class="input-group mb-2" data-color="rgb(255, 255, 255)"
											title="Using data-color attribute in the colorpicker element">
									<input type="text" class="form-control input-lg"/>
									<span class="input-group-append">
										<span class="input-group-text colorpicker-input-addon"><i></i></span>
									</span>
								</div></div>
                                

								
                            </div>
                            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                <ContentTemplate>


                                    <div class="form-group row">
                                        <div class="col-md-8">
                                            <div class="form-group">
                                                <label class="control-label">Css File</label><br />
                                                <asp:DropDownList ID="ddlAllCss" CssClass="form-control" runat="server"></asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label class="control-label">Upload</label>
                                                <asp:Button ID="btnUpload" OnClick="btnUpload_Click" CssClass=" form-control btn btn-info" runat="server" Text="Edit Css" />
                                            </div>
                                        </div>
                                    </div>
                          
                                    <div class="form-group row">
                                        <asp:TextBox ID="txtCssEditor" TextMode="MultiLine" CssClass=" htmltext ace-editor w-100" Height="500" runat="server"></asp:TextBox>


                                    </div>
                                    <asp:Button ID="btnCssEditor_Save" OnClick="btnCssEditor_Save_Click" CssClass="btn btn-success" runat="server" Text="Save" />
                                    <asp:Button ID="btnCssEditor_Clear" runat="server" CssClass="btn btn-danger" Text="Clear" />
                                    <asp:Label ID="lblCssEditor_Result" runat="server"></asp:Label>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                            <hr />


                        </div>


                    </div>
                </div>


			</div>

			<div id="pnlDataTable" class="col-lg-9 grid-margin stretch-card" runat="server">
              
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">DataTable</h4>

                        <p class="card-description">
                            DataTable
                           
                        </p>
                        <div>
                            <figure class="highlight">
                                <pre><code class="language-markup"><script type="script/prism-html-markup"><!-- Section 1 --><div class="table-responsive">
<table id="datatable" class="table table-bordered">
<thead>
<tr>
{0}
</tr>
</thead>  
                <!-- Section 2 -->
<tbody>
<tr>
{1}
</tr>
</tbody>
</table>
</div>
</script></code></pre>
                            </figure>
                            <div class="form-group row">
                                <asp:TextBox CssClass="htmltext" ID="txtDataTable_HtmlCode1" placeholder="your content type here. please follow the coding is {0} {1} {2}...{n}. your need to check this code becouse this code is so important to making application." TextMode="MultiLine" Width="100%" Height="150" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group row">
                                <asp:TextBox CssClass="htmltext" ID="txtDataTable_HtmlCode2" placeholder="your content type here. please follow the coding is {0} {1} {2}...{n}. your need to check this code becouse this code is so important to making application." TextMode="MultiLine" Width="49%" Height="150" runat="server"></asp:TextBox>
                                <asp:TextBox CssClass="htmltext padding" ID="txtDataTable_HtmlCode3" placeholder="your content type here. please follow the coding is {0} {1} {2}...{n}. your need to check this code becouse this code is so important to making application." TextMode="MultiLine" Width="49%" Height="150" runat="server"></asp:TextBox>
                            </div>
                            <p class="card-description"><strong>Default Data</strong></p>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label class="control-label"><code><strong>{0}</strong></code>Table Row Data</label>
                                        <asp:TextBox ID="txtDataTable_DD_RowData" CssClass="form-control" placeholder="example: imageName or image seo text" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <!-- Col -->
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label class="control-label"><code><strong>{1}</strong></code>Table Coloum Data</label>
                                        <asp:TextBox ID="txtDataTable_DD_ColoumData" CssClass="form-control" placeholder="example: imageName or image seo text" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <!-- Col -->
                            </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label class="control-label">DataTable Name</label>
                                        <asp:TextBox ID="txtDataTable_DD_DataTableName" CssClass="form-control" placeholder="example: DataTable Name" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                           <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bd-example-modal-lg">Add Css/Js File</button>
                            <asp:Button ID="btnDataTable_Save" OnClick="btnDataTable_Click" runat="server" Text="Save" CssClass="btn btn-success" />
                            <asp:Label ID="lblDataTable_Result" runat="server"></asp:Label>
                            <asp:GridView ID="GridView_DataTable" Width="100%" runat="server" AutoGenerateColumns="False" DataKeyNames="DataTable_ID" DataSourceID="SqlDataSource_DataTable" CellPadding="4" ForeColor="#333333" GridLines="None">
                                <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True"></asp:CommandField>
                                    <asp:BoundField DataField="DataTable_ID" Visible="false" HeaderText="DataTable_ID" ReadOnly="True" InsertVisible="False" SortExpression="DataTable_ID"></asp:BoundField>
                                    <asp:BoundField DataField="RegID" Visible="false" HeaderText="RegID" SortExpression="RegID"></asp:BoundField>
                                    <asp:BoundField DataField="Template_Id" Visible="false" HeaderText="Template_Id" SortExpression="Template_Id"></asp:BoundField>
                                    <asp:TemplateField HeaderText="HtmlCode1" SortExpression="HtmlCode1">

                                        <ItemTemplate>
                                            <figure class="highlight">
                                                <pre><code class="language-markup"><script type="script/prism-html-markup"><%# Eval("HtmlCode1") %>
<!-- loop Data Section -->
<%# Eval("HtmlCode2") %>
<%# Eval("HtmlCode3") %></script></code></pre>
                                            </figure>
                                            <%# Eval("RowData") %> | <%# Eval("ColoumData") %>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:BoundField DataField="HtmlCode2" Visible="false" HeaderText="HtmlCode2" SortExpression="HtmlCode2"></asp:BoundField>
                                    <asp:BoundField DataField="HtmlCode3" Visible="false" HeaderText="HtmlCode3" SortExpression="HtmlCode3"></asp:BoundField>
                                    <asp:BoundField DataField="RowData" Visible="false" HeaderText="RowData" SortExpression="RowData"></asp:BoundField>
                                    <asp:BoundField DataField="ColoumData" Visible="false" HeaderText="ColoumData" SortExpression="ColoumData"></asp:BoundField>
                                    <asp:BoundField DataField="CssJs" Visible="false" HeaderText="CssJs" SortExpression="CssJs"></asp:BoundField>
                                    <asp:BoundField DataField="CssJsID" Visible="false" HeaderText="CssJsID" SortExpression="CssJsID"></asp:BoundField>
                                    <asp:BoundField DataField="DateTime" Visible="false" HeaderText="DateTime" SortExpression="DateTime"></asp:BoundField>
                                </Columns>
                                <EditRowStyle BackColor="#7C6F57"></EditRowStyle>

                                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White"></FooterStyle>

                                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White"></HeaderStyle>

                                <PagerStyle HorizontalAlign="Center" BackColor="#666666" ForeColor="White"></PagerStyle>

                                <RowStyle BackColor="#E3EAEB"></RowStyle>

                                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

                                <SortedAscendingCellStyle BackColor="#F8FAFA"></SortedAscendingCellStyle>

                                <SortedAscendingHeaderStyle BackColor="#246B61"></SortedAscendingHeaderStyle>

                                <SortedDescendingCellStyle BackColor="#D4DFE1"></SortedDescendingCellStyle>

                                <SortedDescendingHeaderStyle BackColor="#15524A"></SortedDescendingHeaderStyle>
                            </asp:GridView>

                            <asp:SqlDataSource runat="server" ID="SqlDataSource_DataTable">
                                <DeleteParameters>
                                    <asp:Parameter Name="DataTable_ID" Type="Int64"></asp:Parameter>
                                </DeleteParameters>
                            </asp:SqlDataSource>
                        </div>

                    </div>
                </div>


			</div>

            <div id="pnlbutton" class="col-lg-9 grid-margin stretch-card" runat="server">  
               <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Button</h4>

                        <p class="card-description">
                            Button
                        </p>
                        <div>
                            <figure class="highlight">
                                <pre><code class="language-markup"><script type="script/prism-html-markup"><button type="button" class="button class" {1} >{0}</button>
</script></code></pre>
                            </figure>
                            <div class="form-group row">
                                <asp:TextBox CssClass="htmltext" ID="txtButtonHtmlCode" placeholder="your content type here. please follow the coding is {0} {1} {2}...{n}. your need to check this code becouse this code is so important to making application." TextMode="MultiLine" Width="100%" Height="150" runat="server"></asp:TextBox>
                            </div>
                            <p class="card-description"><strong>Default Data</strong></p>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label class="control-label"><code><strong>{0}</strong></code>Text/ Name</label>
                                        <asp:TextBox ID="txtButton_DD_Text" CssClass="form-control" placeholder="example: button text" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <!-- Col -->
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label class="control-label"><code><strong>{1}</strong></code>Click Option</label>
                                        <asp:TextBox ID="txtButton_DD_Click" CssClass="form-control" placeholder="example: click event" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <!-- Col -->
                            </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label class="control-label">Button Name</label>
                                        <asp:TextBox ID="txtButton_DD_ButtonName" CssClass="form-control" placeholder="example: Button Name" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <p class="card-description"><strong>Default Data</strong></p>    
                             <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bd-example-modal-lg">Add Css/Js File</button>
                            <asp:Button ID="btnButtons_Save" OnClick="btnButtons_Save_Click" runat="server" Text="Save" CssClass="btn btn-success" />
                            <asp:Label ID="lblButton_Result" runat="server"></asp:Label>



                            <asp:GridView Width="100%" ID="GridView_Button" runat="server" AutoGenerateColumns="False" DataKeyNames="Button_ID" DataSourceID="SqlDataSource_Button" CellPadding="4" ForeColor="#333333" GridLines="None">
                                <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True"></asp:CommandField>
                                    <asp:BoundField DataField="Button_ID" Visible="false" HeaderText="Button_ID" ReadOnly="True" InsertVisible="False" SortExpression="Button_ID"></asp:BoundField>
                                    <asp:BoundField DataField="RegID" Visible="false" HeaderText="RegID" SortExpression="RegID"></asp:BoundField>
                                    <asp:BoundField DataField="Template_Id" Visible="false" HeaderText="Template_Id" SortExpression="Template_Id"></asp:BoundField>
                                    <asp:TemplateField HeaderText="HtmlCode" SortExpression="HtmlCode">
                                        <ItemTemplate>
                                            <figure class="highlight">
                                                <pre><code class="language-markup"><script type="script/prism-html-markup"><%# Eval("HtmlCode") %></script></code></pre>

                                            </figure>
                                            <asp:Label runat="server" Text='<%# Bind("DefaultData1") %>' ID="Label1"></asp:Label> |   <asp:Label runat="server" Text='<%# Bind("DefaultData2") %>' ID="Label2"></asp:Label>
                                         
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:BoundField DataField="DefaultData1" Visible="false" HeaderText="DefaultData1" SortExpression="DefaultData1"></asp:BoundField>
                                    <asp:BoundField DataField="DefaultData2" Visible="false" HeaderText="DefaultData2" SortExpression="DefaultData2"></asp:BoundField>
                                    <asp:BoundField DataField="CssJs" Visible="false" HeaderText="CssJs" SortExpression="CssJs"></asp:BoundField>
                                    <asp:BoundField DataField="CssJsID" Visible="false" HeaderText="CssJsID" SortExpression="CssJsID"></asp:BoundField>
                                    <asp:BoundField DataField="DateTime" Visible="false" HeaderText="DateTime" SortExpression="DateTime"></asp:BoundField>
                                </Columns>
                                <EditRowStyle BackColor="#7C6F57"></EditRowStyle>

                                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White"></FooterStyle>

                                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White"></HeaderStyle>

                                <PagerStyle HorizontalAlign="Center" BackColor="#666666" ForeColor="White"></PagerStyle>

                                <RowStyle BackColor="#E3EAEB"></RowStyle>

                                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

                                <SortedAscendingCellStyle BackColor="#F8FAFA"></SortedAscendingCellStyle>

                                <SortedAscendingHeaderStyle BackColor="#246B61"></SortedAscendingHeaderStyle>

                                <SortedDescendingCellStyle BackColor="#D4DFE1"></SortedDescendingCellStyle>

                                <SortedDescendingHeaderStyle BackColor="#15524A"></SortedDescendingHeaderStyle>
                            </asp:GridView>

                            <asp:SqlDataSource runat="server" ID="SqlDataSource_Button" >
                                <DeleteParameters>
                                    <asp:Parameter Name="Button_ID" Type="Int64"></asp:Parameter>
                                </DeleteParameters>
                                
                            </asp:SqlDataSource>
                        </div>

                    </div>
                </div>

            </div>

            <div id="pnlLablel" class="col-lg-9 grid-margin stretch-card" runat="server">
                 
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Label</h4>
                        <p class="card-description">
                            Label / Alert 
                        </p>
                       
                            <figure class="highlight">
                                <pre><code class="language-markup"><script type="script/prism-html-markup"><div class="class" role="alert">{0}</div>
</script></code></pre>
                            </figure>
                            <div class="form-group row">
                                <asp:TextBox CssClass="htmltext" ID="txtLabelAlert_HtmlCode" placeholder="your content type here. please follow the coding is {0} {1} {2}...{n}. your need to check this code becouse this code is so important to making application." TextMode="MultiLine" Width="100%" Height="150" runat="server"></asp:TextBox>
                            </div>
                        <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label class="control-label"><code><strong>{0}</strong></code>Text/ Name</label>
                                        <asp:TextBox ID="txtLabelAlert_DD_Text" CssClass="form-control" placeholder="example: label text" runat="server"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label class="control-label">Label Name</label>
                                        <asp:TextBox ID="txtLabelAlert_DD_LabelName" CssClass="form-control" placeholder="example: Label Name" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                      
                            </div>

                            <p class="card-description"><strong>Default Data</strong></p>  
                             <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bd-example-modal-lg">Add Css/Js File</button>
                            <asp:Button ID="btnLabelAlert_HtmlCode" OnClick="btnLabelAlert_HtmlCode_Click" runat="server" Text="Save" CssClass="btn btn-success" />
                            <asp:Label ID="lblLabelAlert_Result" runat="server"></asp:Label>

                        <asp:GridView ID="GridView_LabelAlert" runat="server" AutoGenerateColumns="False" DataKeyNames="Alert_ID" DataSourceID="SqlDataSource_lebelAlert" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True"></asp:CommandField>
                                <asp:BoundField DataField="Alert_ID" Visible="false" HeaderText="Alert_ID" ReadOnly="True" InsertVisible="False" SortExpression="Alert_ID"></asp:BoundField>
                                <asp:BoundField DataField="RegID" Visible="false" HeaderText="RegID" SortExpression="RegID"></asp:BoundField>
                                <asp:BoundField DataField="Template_Id" Visible="false" HeaderText="Template_Id" SortExpression="Template_Id"></asp:BoundField>
                                <asp:TemplateField HeaderText="HtmlCode" SortExpression="HtmlCode">
                                    <ItemTemplate>
                                        <figure class="highlight">
                                                <pre><code class="language-markup"><script type="script/prism-html-markup"><%# Eval("HtmlCode") %></script></code></pre>

                                            </figure>
                                        <%# Eval("DefaultData") %>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:BoundField DataField="DefaultData" Visible="false" HeaderText="DefaultData" SortExpression="DefaultData"></asp:BoundField>
                                <asp:BoundField DataField="CssJs" Visible="false" HeaderText="CssJs" SortExpression="CssJs"></asp:BoundField>
                                <asp:BoundField DataField="CssJsID" Visible="false" HeaderText="CssJsID" SortExpression="CssJsID"></asp:BoundField>
                                <asp:BoundField DataField="DateTime" Visible="false" HeaderText="DateTime" SortExpression="DateTime"></asp:BoundField>
                            </Columns>
                            <EditRowStyle BackColor="#7C6F57"></EditRowStyle>

                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White"></FooterStyle>

                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White"></HeaderStyle>

                            <PagerStyle HorizontalAlign="Center" BackColor="#666666" ForeColor="White"></PagerStyle>

                            <RowStyle BackColor="#E3EAEB"></RowStyle>

                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

                            <SortedAscendingCellStyle BackColor="#F8FAFA"></SortedAscendingCellStyle>

                            <SortedAscendingHeaderStyle BackColor="#246B61"></SortedAscendingHeaderStyle>

                            <SortedDescendingCellStyle BackColor="#D4DFE1"></SortedDescendingCellStyle>

                            <SortedDescendingHeaderStyle BackColor="#15524A"></SortedDescendingHeaderStyle>
                        </asp:GridView>



                        <asp:SqlDataSource runat="server" ID="SqlDataSource_lebelAlert">
                            <DeleteParameters>
                                <asp:Parameter Name="Alert_ID" Type="Int64"></asp:Parameter>
                            </DeleteParameters>
                          
                       
                        </asp:SqlDataSource>
                    </div>
                </div>
                

			</div>

            <div id="pnlTextBoxs" class="col-lg-9 grid-margin stretch-card" runat="server">
               <%--<div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Check box</h4>

                        <p class="card-description">
                            TextBox Design
                           
                        </p>

                        <figure class="highlight">
                            <pre><code class="language-markup"><script type="script/prism-html-markup"><input type="text" id="{2}" value="{1}" class="form-control" placeholder="{0}" /></script></code></pre>
                        </figure>
                        <div class="form-group row">
                            <asp:TextBox CssClass="htmltext" ID="TextBox4" placeholder="your content type here. please follow the coding is {0} {1} {2}...{n}. your need to check this code becouse this code is so important to making application." TextMode="MultiLine" Width="100%" Height="150" runat="server"></asp:TextBox>
                        </div>
                        <p class="card-description"><strong>Default Data</strong></p>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label class="control-label"><code><strong>{0}</strong></code>Placeholder</label>
                                    <asp:TextBox ID="TextBox6" CssClass="form-control" placeholder="example: text box" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <!-- Col -->
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label class="control-label"><code><strong>{1}</strong></code>Name / Value</label>
                                    <asp:TextBox ID="TextBox7" CssClass="form-control" placeholder="example: value" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <!-- Col -->
                        </div>
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bd-example-modal-lg">Add Css/Js File</button>
                        <asp:Button ID="Button3" OnClick="btnTextBox_Save_Click" runat="server" Text="Save" CssClass="btn btn-success" />

                    </div>
                </div>--%>
                <div class="card">
                    <div class="card-body">

                        <div id="pnlTbox" runat="server">
                            <h3 class="card-title">TextBox</h3>

                            <p class="card-description">
                                TextBox Design
                           
                            </p>

                            <figure class="highlight">
                                <pre><code class="language-markup"><script type="script/prism-html-markup"><input type="text" id="{2}" value="{1}" class="form-control" placeholder="{0}" /></script></code></pre>
                            </figure>
                            <div class="form-group row">
                                <asp:TextBox CssClass="htmltext" ID="txtTextBox_HtmlCode" placeholder="your content type here. please follow the coding is {0} {1} {2}...{n}. your need to check this code becouse this code is so important to making application." TextMode="MultiLine" Width="100%" Height="150" runat="server"></asp:TextBox>
                            </div>
                            <p class="card-description"><strong>Default Data</strong></p>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label class="control-label"><code><strong>{0}</strong></code>Placeholder</label>
                                        <asp:TextBox ID="txtTextBox_DD_Placeholder" CssClass="form-control" placeholder="example: text box" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <!-- Col -->
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label class="control-label"><code><strong>{1}</strong></code>Name / Value</label>
                                        <asp:TextBox ID="txtTextBox_DD_Value" CssClass="form-control" placeholder="example: value" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <!-- Col -->
                            </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label class="control-label">TextBox Name</label>
                                        <asp:TextBox ID="txtTextBox_DD_TextBoxName" CssClass="form-control" placeholder="example: TextBox Name" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bd-example-modal-lg">Add Css/Js File</button>
                            <asp:Button ID="btnTextBox_Save" OnClick="btnTextBox_Save_Click" runat="server" Text="Save" CssClass="btn btn-success" />
                            <asp:Label ID="lblTextBox_Result" runat="server"></asp:Label>
                            <asp:GridView ID="GridView_TextBox" Width="100%" runat="server" AutoGenerateColumns="False" DataKeyNames="TextBox_ID" DataSourceID="SqlDataSource_TextBox" CellPadding="4" ForeColor="#333333" GridLines="None">
                                <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True"></asp:CommandField>
                                    <asp:BoundField DataField="TextBox_ID" Visible="false" HeaderText="TextBox_ID" ReadOnly="True" InsertVisible="False" SortExpression="TextBox_ID"></asp:BoundField>
                                    <asp:BoundField DataField="RegID" Visible="false" HeaderText="RegID" SortExpression="RegID"></asp:BoundField>
                                    <asp:BoundField DataField="Template_Id" Visible="false" HeaderText="Template_Id" SortExpression="Template_Id"></asp:BoundField>
                                    <asp:TemplateField HeaderText="HtmlCode" SortExpression="HtmlCode">
                                        <ItemTemplate>
                                            <figure class="highlight">
                                                <pre><code class="language-markup"><script type="script/prism-html-markup"><%# Eval("HtmlCode") %></script></code></pre>
                                            </figure>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:BoundField DataField="PlaceHolder" Visible="false" HeaderText="PlaceHolder" SortExpression="PlaceHolder"></asp:BoundField>
                                    <asp:BoundField DataField="Value" Visible="false" HeaderText="Value" SortExpression="Value"></asp:BoundField>
                                    <asp:BoundField DataField="CssJs" Visible="false" HeaderText="CssJs" SortExpression="CssJs"></asp:BoundField>
                                    <asp:BoundField DataField="CssJsID" Visible="false" HeaderText="CssJsID" SortExpression="CssJsID"></asp:BoundField>
                                    <asp:BoundField DataField="DateTime" Visible="false" HeaderText="DateTime" SortExpression="DateTime"></asp:BoundField>
                                </Columns>
                                <EditRowStyle BackColor="#7C6F57"></EditRowStyle>

                                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White"></FooterStyle>

                                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White"></HeaderStyle>

                                <PagerStyle HorizontalAlign="Center" BackColor="#666666" ForeColor="White"></PagerStyle>

                                <RowStyle BackColor="#E3EAEB"></RowStyle>

                                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

                                <SortedAscendingCellStyle BackColor="#F8FAFA"></SortedAscendingCellStyle>

                                <SortedAscendingHeaderStyle BackColor="#246B61"></SortedAscendingHeaderStyle>

                                <SortedDescendingCellStyle BackColor="#D4DFE1"></SortedDescendingCellStyle>

                                <SortedDescendingHeaderStyle BackColor="#15524A"></SortedDescendingHeaderStyle>
                            </asp:GridView>


                            <asp:SqlDataSource runat="server" ID="SqlDataSource_TextBox">
                                <DeleteParameters>
                                    <asp:Parameter Name="TextBox_ID" Type="Int64"></asp:Parameter>
                                </DeleteParameters>

                            </asp:SqlDataSource>

                        </div>
                      
                        <div id="pnlRbox" runat="server">
                            <h3 class="card-title">Radiobutton</h3>

                        <p class="card-description">
                            Radiobutton Design
                           
                        </p>

                        <figure class="highlight">
                            <pre><code class="language-markup"><script type="script/prism-html-markup"><input type="radio" id="{2}" {3} name="{0}" class="class 1" /> <label class="class 2" >{1}</label></script></code></pre>
                        </figure>
                        <div class="form-group row">
                            <asp:TextBox CssClass="htmltext" ID="txtRadioButton_HtmlCode" placeholder="your content type here. please follow the coding is {0} {1} {2}...{n}. your need to check this code becouse this code is so important to making application." TextMode="MultiLine" Width="100%" Height="150" runat="server"></asp:TextBox>
                        </div>
                        <p class="card-description"><strong>Default Data</strong></p>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label class="control-label"><code><strong>{0}</strong></code>Group Name</label>
                                    <asp:TextBox ID="txtRadioButton_DD_GroupName" CssClass="form-control" placeholder="example: group name" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <!-- Col -->
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label class="control-label"><code><strong>{1}</strong></code>Name</label>
                                    <asp:TextBox ID="txtRadioButton_DD_Text" CssClass="form-control" placeholder="example: name / text" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <!-- Col -->
                        </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label class="control-label">RadioButton Name</label>
                                        <asp:TextBox ID="txtRadioButton_DD_RadiobuttonName" CssClass="form-control" placeholder="example: RadioButton Name" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bd-example-modal-lg">Add Css/Js File</button>
                        <asp:Button ID="btnRadioButton_Save" OnClick="btnRadioButton_Save_Click" runat="server" Text="Save" CssClass="btn btn-success" />
                        <asp:Label ID="lblRadioButton_Result" runat="server"></asp:Label>
                            <asp:GridView Width="100%" ID="GridView_RadioButton" runat="server" AutoGenerateColumns="False" DataKeyNames="RadioButton_ID" DataSourceID="SqlDataSource_RadioButton" CellPadding="4" ForeColor="#333333" GridLines="None">
                                <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True"></asp:CommandField>
                                    <asp:BoundField Visible="false" DataField="RadioButton_ID" HeaderText="RadioButton_ID" ReadOnly="True" InsertVisible="False" SortExpression="RadioButton_ID"></asp:BoundField>
                                    <asp:BoundField Visible="false" DataField="RegID" HeaderText="RegID" SortExpression="RegID"></asp:BoundField>
                                    <asp:BoundField Visible="false" DataField="Template_Id" HeaderText="Template_Id" SortExpression="Template_Id"></asp:BoundField>
                                    <asp:TemplateField HeaderText="HtmlCode" SortExpression="HtmlCode">
                                        <ItemTemplate>
                                            <figure class="highlight">
                                                <pre><code class="language-markup"><script type="script/prism-html-markup"><%# Eval("HtmlCode") %></script></code></pre>
                                            </figure>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:BoundField Visible="false" DataField="GroupName" HeaderText="GroupName" SortExpression="GroupName"></asp:BoundField>
                                    <asp:BoundField Visible="false" DataField="Checked" HeaderText="Checked" SortExpression="Checked"></asp:BoundField>
                                    <asp:BoundField Visible="false" DataField="Text" HeaderText="Text" SortExpression="Text"></asp:BoundField>
                                    <asp:BoundField Visible="false" DataField="CssJs" HeaderText="CssJs" SortExpression="CssJs"></asp:BoundField>
                                    <asp:BoundField Visible="false" DataField="CssJsID" HeaderText="CssJsID" SortExpression="CssJsID"></asp:BoundField>
                                    <asp:BoundField Visible="false" DataField="DateTime" HeaderText="DateTime" SortExpression="DateTime"></asp:BoundField>
                                </Columns>
                                <EditRowStyle BackColor="#7C6F57"></EditRowStyle>

                                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White"></FooterStyle>

                                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White"></HeaderStyle>

                                <PagerStyle HorizontalAlign="Center" BackColor="#666666" ForeColor="White"></PagerStyle>

                                <RowStyle BackColor="#E3EAEB"></RowStyle>

                                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

                                <SortedAscendingCellStyle BackColor="#F8FAFA"></SortedAscendingCellStyle>

                                <SortedAscendingHeaderStyle BackColor="#246B61"></SortedAscendingHeaderStyle>

                                <SortedDescendingCellStyle BackColor="#D4DFE1"></SortedDescendingCellStyle>

                                <SortedDescendingHeaderStyle BackColor="#15524A"></SortedDescendingHeaderStyle>
                            </asp:GridView>


                            <asp:SqlDataSource runat="server" ID="SqlDataSource_RadioButton" >
                                <DeleteParameters>
                                    <asp:Parameter Name="RadioButton_ID" Type="Int64"></asp:Parameter>
                                </DeleteParameters>
                              
                            </asp:SqlDataSource>
                        </div>
                       
                        <div id="pnlCbox" runat="server">
                            <h3 class="card-title">ChckBox</h3>

                        <p class="card-description">
                            ChckBox Design
                           
                        </p>

                        <figure class="highlight">
                            <pre><code class="language-markup"><script type="script/prism-html-markup"><input type="checkbox" class="class 1" {3} checked="{1}" id="{2}" /><label class="Class">{0}</label></script></code></pre>
                        </figure>
                        <div class="form-group row">
                            <asp:TextBox CssClass="htmltext" ID="txtCheckBox_HtmlCode" placeholder="your content type here. please follow the coding is {0} {1} {2}...{n}. your need to check this code becouse this code is so important to making application." TextMode="MultiLine" Width="100%" Height="150" runat="server"></asp:TextBox>
                        </div>
                        <p class="card-description"><strong>Default Data</strong></p>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label class="control-label"><code><strong>{0}</strong></code>Name</label>
                                    <asp:TextBox ID="txtCheckBox_DD_Name" CssClass="form-control" placeholder="example: name" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <!-- Col -->
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label class="control-label"><code><strong>{1}</strong></code>Check</label>
                                    <asp:TextBox ID="txtCheckBox_DD_Check" CssClass="form-control" placeholder="example: true/false" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <!-- Col -->
                        </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label class="control-label">CheckBox Name</label>
                                        <asp:TextBox ID="txtCheckBox_DD_CheckBoxName" CssClass="form-control" placeholder="example: CheckBox Name" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bd-example-modal-lg">Add Css/Js File</button>
                        <asp:Button ID="btnCheckBox_Save" OnClick="btnCheckBox_Save_Click" runat="server" Text="Save" CssClass="btn btn-success" />
                        <asp:Label ID="lblCheckBox_Result" runat="server"></asp:Label>
                            <asp:GridView Width="100%" ID="GridView_CheckBox" runat="server" AutoGenerateColumns="False" DataKeyNames="CheckBox_ID" DataSourceID="SqlDataSource_CheckBox" CellPadding="4" ForeColor="#333333" GridLines="None">
                                <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True"></asp:CommandField>
                                    <asp:BoundField DataField="CheckBox_ID" Visible="false" HeaderText="CheckBox_ID" ReadOnly="True" InsertVisible="False" SortExpression="CheckBox_ID"></asp:BoundField>
                                    <asp:BoundField DataField="RegID" Visible="false" HeaderText="RegID" SortExpression="RegID"></asp:BoundField>
                                    <asp:BoundField DataField="Template_Id" Visible="false" HeaderText="Template_Id" SortExpression="Template_Id"></asp:BoundField>
                                    <asp:TemplateField HeaderText="HtmlCode" SortExpression="HtmlCode">
                                        <ItemTemplate>
                                            <figure class="highlight">
                                                <pre><code class="language-markup"><script type="script/prism-html-markup"><%# Eval("HtmlCode") %></script></code></pre>
                                            </figure>
                                            Text= <%# Eval("Text") %> |Checked=<%# Eval("Checked") %>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:BoundField Visible="false" DataField="Text" HeaderText="Text" SortExpression="Text"></asp:BoundField>
                                    <asp:BoundField Visible="false" DataField="Checked" HeaderText="Checked" SortExpression="Checked"></asp:BoundField>
                                    <asp:BoundField Visible="false" DataField="CssJs" HeaderText="CssJs" SortExpression="CssJs"></asp:BoundField>
                                    <asp:BoundField Visible="false" DataField="CssJsID" HeaderText="CssJsID" SortExpression="CssJsID"></asp:BoundField>
                                    <asp:BoundField Visible="false" DataField="DateTime" HeaderText="DateTime" SortExpression="DateTime"></asp:BoundField>
                                </Columns>
                                <EditRowStyle BackColor="#7C6F57"></EditRowStyle>

                                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White"></FooterStyle>

                                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White"></HeaderStyle>

                                <PagerStyle HorizontalAlign="Center" BackColor="#666666" ForeColor="White"></PagerStyle>

                                <RowStyle BackColor="#E3EAEB"></RowStyle>

                                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

                                <SortedAscendingCellStyle BackColor="#F8FAFA"></SortedAscendingCellStyle>

                                <SortedAscendingHeaderStyle BackColor="#246B61"></SortedAscendingHeaderStyle>

                                <SortedDescendingCellStyle BackColor="#D4DFE1"></SortedDescendingCellStyle>

                                <SortedDescendingHeaderStyle BackColor="#15524A"></SortedDescendingHeaderStyle>
                            </asp:GridView>
                            <asp:SqlDataSource runat="server" ID="SqlDataSource_CheckBox">
                                <DeleteParameters>
                                    <asp:Parameter Name="CheckBox_ID" Type="Int64"></asp:Parameter>
                                </DeleteParameters>

                            </asp:SqlDataSource>
                        </div>

                    </div>

  
                </div>
			</div>

			<div id="pnlLayout" class="col-lg-9 grid-margin stretch-card" runat="server">        
				
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Layout</h4>

                        <p class="card-description">
                            Layout
                        
                        </p>
                        <div id="Div1" runat="server">
                            <figure class="highlight">
                                <pre><code class="language-markup"><script type="script/prism-html-markup"><div class="row">
<div class="col-md-6">
 </div>
<div class="col-md-6">
 </div></script></code></pre>
                        
                            </figure>
                            <div class="form-group row">
                                <asp:TextBox CssClass="htmltext" ID="txtLayout_HtmlCode" placeholder="your content type here. please follow the coding is {0} {1} {2}...{n}. your need to check this code becouse this code is so important to making application." TextMode="MultiLine" Width="100%" Height="150" runat="server"></asp:TextBox>
                            </div>
                            <p class="card-description"><strong>Default Data</strong></p>
                            <div class="row">                                
                                <!-- Col -->
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label class="control-label">>Select Image</label>
                                        <asp:DropDownList ID="ddlLayout_ImageShow" OnTextChanged="ddlLayout_ImageShow_TextChanged" AutoPostBack="true" CssClass="form-control" runat="server"></asp:DropDownList>
                                    </div>
                                </div>
                               <div class="col-sm-2">
                                    <div class="form-group">
                                        <label class="control-label">How many code</label>
                                        <asp:TextBox ID="txtLayout_DD_Code" TextMode="Number" CssClass="form-control" placeholder="example: 1 2 3 " runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="control-label">LayoutName</label>
                                        <asp:TextBox ID="txtLayout_DD_Name"  CssClass="form-control" placeholder="example: name " runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <!-- Col -->
                            </div>
                            <asp:Image ID="imgLayout" Width="100" Height="100" runat="server" />
                            <hr />
                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bd-example-modal-lg">Add Css/Js File</button>
                            <asp:Button ID="btnLayout_Save" OnClick="btnLayout_Save_Click" runat="server" Text="Save" CssClass="btn btn-success" />
                            <asp:Label ID="lblLayout_Result" runat="server"></asp:Label>
                            <asp:GridView ID="GridView1" Width="100%" runat="server" AutoGenerateColumns="False" DataKeyNames="Layout_ID" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                                <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
                                <Columns>
                                    <asp:TemplateField ShowHeader="False">
                                        <ItemTemplate>
                                            <asp:LinkButton runat="server" Text="Delete" CommandName="Delete" CausesValidation="False" ID="LinkButton1"></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:BoundField DataField="Layout_ID" Visible="false" HeaderText="Layout_ID" ReadOnly="True" InsertVisible="False" SortExpression="Layout_ID"></asp:BoundField>
                                    <asp:BoundField DataField="RegID" Visible="false" HeaderText="RegID" SortExpression="RegID"></asp:BoundField>
                                    <asp:BoundField DataField="Template_Id" Visible="false" HeaderText="Template_Id" SortExpression="Template_Id"></asp:BoundField>
                                    <asp:BoundField DataField="FileUpload_Id" Visible="false" HeaderText="FileUpload_Id" SortExpression="FileUpload_Id"></asp:BoundField>
                                    <asp:TemplateField HeaderText="Image" SortExpression="FullPath">
                                        <ItemTemplate>
                                            <asp:Image ID="Image1" ImageUrl='<%# Eval("FullPath","../../{0}") %>' Width="100" Height="100" runat="server" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="HTML Coding" SortExpression="HTML">
                                        <ItemTemplate>
                                            <figure class="highlight">
                                                <pre><code class="language-markup"><script type="script/prism-html-markup"><%# Eval("HTML") %></script></code></pre>

                                            </figure>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="DateTime" Visible="false" HeaderText="DateTime" SortExpression="DateTime"></asp:BoundField>
                                    <asp:BoundField DataField="CssJs_ID" Visible="false" HeaderText="CssJs_ID" SortExpression="CssJs_ID"></asp:BoundField>
                                    <asp:BoundField DataField="CssJs" Visible="false" HeaderText="CssJs" SortExpression="CssJs"></asp:BoundField>
                                </Columns>
                                <EditRowStyle BackColor="#7C6F57"></EditRowStyle>

                                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White"></FooterStyle>

                                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White"></HeaderStyle>

                                <PagerStyle HorizontalAlign="Center" BackColor="#666666" ForeColor="White"></PagerStyle>

                                <RowStyle BackColor="#E3EAEB"></RowStyle>

                                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

                                <SortedAscendingCellStyle BackColor="#F8FAFA"></SortedAscendingCellStyle>

                                <SortedAscendingHeaderStyle BackColor="#246B61"></SortedAscendingHeaderStyle>

                                <SortedDescendingCellStyle BackColor="#D4DFE1"></SortedDescendingCellStyle>

                                <SortedDescendingHeaderStyle BackColor="#15524A"></SortedDescendingHeaderStyle>
                            </asp:GridView>

                            <asp:SqlDataSource runat="server" ID="SqlDataSource1">

                                <DeleteParameters>
                                    <asp:Parameter Name="Layout_ID" Type="Int64"></asp:Parameter>
                                </DeleteParameters>
                                
                            </asp:SqlDataSource>


                        </div>

                    </div>
                </div>
			</div>

			<div id="pnlCheckBox" class="col-lg-9 grid-margin stretch-card" runat="server">
               
                 
                

			</div>
           
			<div id="pnlRadioButtons" class="col-md-12 grid-margin stretch-card" runat="server">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Radiobutton</h4>

                        <p class="card-description">
                            TextBox Design
                           
                        </p>

                        <figure class="highlight">
                            <pre><code class="language-markup"><script type="script/prism-html-markup"><input type="text" id="{2}" value="{1}" class="form-control" placeholder="{0}" /></script></code></pre>
                        </figure>
                        <div class="form-group row">
                            <asp:TextBox CssClass="htmltext" ID="TextBo1212x2" placeholder="your content type here. please follow the coding is {0} {1} {2}...{n}. your need to check this code becouse this code is so important to making application." TextMode="MultiLine" Width="100%" Height="150" runat="server"></asp:TextBox>
                        </div>
                        <p class="card-description"><strong>Default Data</strong></p>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label class="control-label"><code><strong>{0}</strong></code>Placeholder</label>
                                    <asp:TextBox ID="TextBox123" CssClass="form-control" placeholder="example: text box" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <!-- Col -->
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label class="control-label"><code><strong>{1}</strong></code>Name / Value</label>
                                    <asp:TextBox ID="TextBox12124" CssClass="form-control" placeholder="example: value" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <!-- Col -->
                        </div>
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bd-example-modal-lg">Add Css/Js File</button>
                        <asp:Button ID="Butt1212on3" runat="server" Text="Save" CssClass="btn btn-success" />
                        <asp:Label ID="Labe12l3" runat="server"></asp:Label>

                    </div>
                </div>
			</div>

            <div id="pnlDempPages" class="col-md-12 grid-margin stretch-card" runat="server">		
              <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Check box</h4>

                        <p class="card-description">
                            TextBox Design
                           
                        </p>

                        <figure class="highlight">
                            <pre><code class="language-markup"><script type="script/prism-html-markup"><input type="text" id="{2}" value="{1}" class="form-control" placeholder="{0}" /></script></code></pre>
                        </figure>
                        <div class="form-group row">
                            <asp:TextBox CssClass="htmltext" ID="TextBox1" placeholder="your content type here. please follow the coding is {0} {1} {2}...{n}. your need to check this code becouse this code is so important to making application." TextMode="MultiLine" Width="100%" Height="150" runat="server"></asp:TextBox>
                        </div>
                        <p class="card-description"><strong>Default Data</strong></p>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label class="control-label"><code><strong>{0}</strong></code>Placeholder</label>
                                    <asp:TextBox ID="TextBox2" CssClass="form-control" placeholder="example: text box" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <!-- Col -->
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label class="control-label"><code><strong>{1}</strong></code>Name / Value</label>
                                    <asp:TextBox ID="TextBox3" CssClass="form-control" placeholder="example: value" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <!-- Col -->
                        </div>
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bd-example-modal-lg">Add Css/Js File</button>
                        <asp:Button ID="Button1" OnClick="btnTextBox_Save_Click" runat="server" Text="Save" CssClass="btn btn-success" />

                    </div>
                </div>
			</div>

			<div id="pnlAlert" class="col-lg-12 grid-margin stretch-card" runat="server">
				<div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Alert</h4>

                        <p class="card-description">
                            Alert
                           
                        </p>
                        <div>
                            <figure class="highlight">
                                <pre><code class="language-markup"><script type="script/prism-html-markup"><a class="alert class"/>{0}</a></script></code></pre>
                            </figure>
                            <div class="form-group row">
                                <asp:TextBox CssClass="htmltext" ID="TextBox10" placeholder="your content type here. please follow the coding is {0} {1} {2}...{n}. your need to check this code becouse this code is so important to making application." TextMode="MultiLine" Width="100%" Height="150" runat="server"></asp:TextBox>
                            </div>
                            <p class="card-description"><strong>Default Data</strong></p>                           
                            <asp:Button ID="Button9" runat="server" Text="Save" CssClass="btn btn-success" />
                        </div>

                    </div>
                </div>
			</div>

            <div id="pnlDroupdown" class="col-lg-9 grid-margin stretch-card" runat="server">
				 <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">DropDown List</h4>

                        <p class="card-description">
                            DropDown
                           
                        </p>
                        <div>
                            <figure class="highlight">
                                <pre><code class="language-markup"><script type="script/prism-html-markup"><div class="btn-group mo-mb-2">
<button type="button" class="btn btn-info">Info</button>
<button type="button" class="btn btn-info dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    <span class="sr-only">Toggle Dropdown</span>
</button>
<div class="dropdown-menu">
    <a class="dropdown-item" href="#">Action</a>
    <a class="dropdown-item" href="#">Another action</a>
    <a class="dropdown-item" href="#">Something else here</a>
    <div class="dropdown-divider"></div>
    <a class="dropdown-item" href="#">Separated link</a>
</div>
</div></script></code></pre>
                            </figure>
                            <div class="form-group row">
                                <asp:TextBox CssClass="htmltext" ID="TextBox5" placeholder="your content type here. please follow the coding is {0} {1} {2}...{n}. your need to check this code becouse this code is so important to making application." TextMode="MultiLine" Width="100%" Height="150" runat="server"></asp:TextBox>
                            </div>
                            <p class="card-description"><strong>Default Data</strong></p>                           
                            <asp:Button ID="Button5" runat="server" Text="Save" CssClass="btn btn-success" />
                        </div>

                    </div>
                </div>
			</div>
            <div id="pnlWidget" class="col-lg-9 grid-margin stretch-card" runat="server">
				<div class="row">





				</div>
			</div>
			<div id="pnlDashboard" class="col-lg-9 grid-margin stretch-card" runat="server">
				
			</div>
			<div id="pnlChart" class="col-lg-9 grid-margin stretch-card" runat="server">
				<div class="row">

				</div>
			</div>
			<div id="pnlIcon" class="col-lg-9 grid-margin stretch-card" runat="server">
				<div class="row">
                    Icon
				</div>
			</div>
            <div id="pnlLinkButton" class="col-lg-9 grid-margin stretch-card" runat="server">
				<div class="row">

				</div>
			</div>
            <div id="pnlUploader" class="col-lg-9 grid-margin stretch-card" runat="server">
				<div class="row">

				</div>
			</div>
            <div id="pnlImage" class="col-lg-9 grid-margin stretch-card" runat="server">
				<div class="row">

				</div>
			</div>
            <div id="pnlProcess" class="col-lg-9 grid-margin stretch-card" runat="server">
				<div class="row">

				</div>
			</div>
			<div id="pnlLoginPage" class="col-lg-9 grid-margin stretch-card" runat="server">
				<div class="row">

				</div>
			</div>
			<div id="pnlInvoice" class="col-lg-9 grid-margin stretch-card" runat="server">
				<div class="row">

				</div>
			</div>
			<div id="pnlReporting" class="col-lg-9 grid-margin stretch-card" runat="server">
				<div class="row">

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

    	<script src="../../../assets/vendors/simplemde/simplemde.min.js"></script>
    	<script src="../../../assets/js/simplemde.js"></script>
	<script src="../../../assets/vendors/core/core.js"></script>
	<script src="../../../assets/vendors/feather-icons/feather.min.js"></script>
	<script src="../../../assets/js/template.js"></script>
	<script src="../../../assets/vendors/prismjs/prism.js"></script>
	<script src="../../../assets/vendors/clipboard/clipboard.min.js"></script>
	<script src="../../../assets/js/file-upload.js"></script>
	<script src="../../../assets/vendors/ace-builds/src-min/ace.js"></script>
	<script src="../../../assets/vendors/ace-builds/src-min/theme-chaos.js"></script>
	<script src="../../../assets/js/ace.js"></script>
    <script src="../../../assets/vendors/bootstrap-colorpicker/bootstrap-colorpicker.min.js"></script>
    	<script src="../../../assets/js/bootstrap-colorpicker.js"></script>
</asp:Content>
