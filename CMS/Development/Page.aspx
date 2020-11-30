<%@ Page Language="C#" AutoEventWireup="true"  ValidateRequest="false" CodeBehind="Page.aspx.cs" Inherits="B_ERP_CMS.CMS.Development.Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Page Development</title>
    <link href="../Template/Editor.css" rel="stylesheet" />
    <link href="../../assets/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css' integrity='sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk' crossorigin='anonymous'/>


</head>
<body>
    <form id="form1" runat="server">

  <div class="row">

      <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">New message</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form>
          <div class="form-group">
            <label for="recipient-name" class="col-form-label">Recipient:</label>
            <input type="text" class="form-control" id="recipient-name">
          </div>
          <div class="form-group">
            <label for="message-text" class="col-form-label">Message:</label>
            <textarea class="form-control" id="message-text"></textarea>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Send message</button>
      </div>
    </div>
  </div>
</div>
 
      <div class="col-md-2" >
                <div style="background-color: rgb(54, 68, 63);">
                    <div class="card-body">
                          <div class="row">
                            <div class="col-md-12">
                                <a class="btn btn-danger form-control" href="../../CMS/Development/" ><i class="fa fa-backward"></i> Back</a>
                            </div>
                        </div>  
                        <br />
                      <!--  <p class="text-justify text-warning">If you are not save and go back it will close all developed file.</p>-->

                        <p class="card-title alert alert-warning text-center"><b>Toolbox</b></p>   
                        <!-- <p class="text-justify text-info">There is your all Tools to Develop.</p>-->
                         <div class="row">
                            <div class="col-md-12">
                                <button type="button" class="btn btn-info form-control" onclick="show_details('js_layout');"><i class="fa fa-tag"></i> Layout</button>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-12">
                                <button type="button" class="btn btn-info form-control" onclick="show_details('js_datatable');"><i class="fa fa-table"></i> Data Table</button>
                            </div>
                        </div><br />
                        <div class="row">
                            <div class="col-md-12">
                                <button type="button" class="btn btn-info form-control" onclick="show_details('js_button');"><i class="fa fa-square-o"></i> Button</button>
                            </div>
                        </div><br />
                        <div class="row">
                            <div class="col-md-12">
                                <button type="button" class="btn btn-info form-control" onclick="show_details('js_alert');"><i class="fa fa-commenting"></i> Label|Alert</button>
                            </div>
                        </div><br />
                        <div class="row">
                            <div class="col-md-12">
                                <button type="button" class="btn btn-info form-control" onclick="show_details('js_textbox');"><i class="fa fa-text-width"></i> TextBox</button>
                            </div>
                        </div><br />
                        <div class="row">
                            <div class="col-md-12">
                                <button type="button" class="btn btn-info form-control" onclick="show_details('js_radiobutton');"><i class="fa fa-circle"></i> Radio Button</button>
                            </div>
                        </div><br />
                        <div class="row">
                            <div class="col-md-12">
                                <button type="button" class="btn btn-info form-control" onclick="show_details('js_checkbox');"><i class="fa fa-check-square-o"></i> CheckBox</button>
                            </div>
                        </div>
                        <br />
                           <p class="card-title alert alert-warning text-center"><b>-----------------</b></p>   
                        
                        <div class="row">
                            <div class="col-md-12">
                                <asp:Button ID="btnPublish" OnClick="btnPublish_Click" runat="server" CssClass="btn btn-success form-control" Text="Publish" />
                                <asp:Label ID="lblResult_" runat="server"></asp:Label>
                          <%--       <button class="btn btn-primary" type="button" onclick="alert(showSwal('custom-make'))">Click here!</button>
                              <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">Open modal for @mdo</button>
                              --%>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
      <div class="col-md-3">
          <div style="background-color:#d5e1d8;">
              <div class="card-body">
                  <asp:TextBox ID="txtHeaderCssJs" TextMode="MultiLine" runat="server"></asp:TextBox>
                  <button type="button" id="btnImport" onclick="importFile()" class="btn btn-danger form-control mb-1">Import Themes File</button>

                  <p class="card-title alert alert-warning text-center"><b>Details</b></p>
                 <div id="js_button"><asp:PlaceHolder ID="pnlShowButton" runat="server"></asp:PlaceHolder></div>
                  <div id="js_layout"><asp:PlaceHolder ID="pnlShowLayout" runat="server"></asp:PlaceHolder></div>
                  <div id="js_datatable"><asp:PlaceHolder ID="pnlShowDatatable" runat="server"></asp:PlaceHolder></div>
                  <div id="js_alert">
                      <p class="alert alert-info">
1. show Error Messages info <sub>Note: return string</sub><br />
Code: <code>{#error_message}</code><br />
2. show Error Messages <sub>Note: return true false</sub><br />
Code: <code>{#error_message_bool}</code><br />
3. show Successful Messages info <sub>Note: return string</sub><br />
Code: <code>{#success_message}</code><br />
4. show Successful Messages <sub>Note: return true false</sub><br />
Code: <code>{#success_message_bool}</code><br />
5. show Success and Error Messages <sub>Note: return string</sub><br />
Code: <code>{#message}</code><br />
6. show Server Full Messages and info <sub>Note: return string</sub><br />
Code: <code>{#server_message}</code><br />
7. show Own Success Messages Only <sub>Note: return string</sub><br />
Code: <code>{#custom_message}</code><br />
8. show Own Error Messages Only <sub>Note: return string</sub><br />
Code: <code>{#custom_error_message}</code><br />
                      </p>
                      <asp:PlaceHolder ID="pnlShowAlert" runat="server"></asp:PlaceHolder></div>
                   <div id="js_textbox"><asp:PlaceHolder ID="pnlshowTextbox" runat="server"></asp:PlaceHolder></div>
                  <div id="js_radiobutton"><asp:PlaceHolder ID="pnlShowRadioButton" runat="server"></asp:PlaceHolder></div>
                  <div id="js_checkbox"><asp:PlaceHolder ID="pnlShowCheckbox" runat="server"></asp:PlaceHolder></div>
                  <!--
                      <button type="button" onclick="set('<div>layout</div>');"  class="btn btn-success form-control mb-3 ">Default Layout</button>
                  <button type="button" onclick="set('<button class=\'btn btn-success form-control mb-3\'>Default Button</button>');"  class="btn btn-success form-control mb-3 ">Default Button</button>
                  <button class="btn btn-dark form-control mb-1">Default Button</button>
                  <button class="btn btn-dark form-control mb-1">Default Button</button>
                  -->

              </div>
          </div>
      </div>



      <div class="col-md-7">
          <button type="button" id="btnbody" class="btn-sider-body" onclick="ShowDesign();" title="Source Code"><i class="fa fa-html5"></i> Body Source Code</button><button type="button" id="btnheader" class="btn-sider-header" onclick="ShowHeader();" title="Source Code"><i class="fa fa-html5"></i> Header Source Code</button><button type="button" id="btndevelopment" class="btn-sider-development" onclick="development_panel();" title="Source Code"><i class="fa fa-code"></i> Development</button>
          <iframe id="HeaderFrame" class="frame " height="100%" onkeyup="HTML_to_Code()" name="HeaderFrame" width="100%" frameborder="0"></iframe>
          <asp:TextBox ID="HTMLcode" Height="100%" onkeyup="refershBody()" CssClass="frame-html" Width="100%" TextMode="MultiLine" runat="server"></asp:TextBox>
          <asp:TextBox ID="HeaderHTML" Height="100%" onkeyup="refershHead()" CssClass="frame-html" Width="100%" TextMode="MultiLine" runat="server"></asp:TextBox>
          <asp:TextBox ID="CMD" Height="200" CssClass="frame-html-development" Enabled="false" Width="100%" TextMode="MultiLine" runat="server"></asp:TextBox>
          <div id="__development_html_"></div>
          <asp:TextBox ID="txtPublish" runat="server"></asp:TextBox>
       
      </div>
           
      </div>
<%--	<script src="../../assets/vendors/core/core.js"></script>
  <script src="../../assets/vendors/sweetalert2/sweetalert2.min.js"></script>
  <script src="../../assets/vendors/promise-polyfill/polyfill.min.js"></script>
	<script src="../../assets/js/template.js"></script>
  <script src="../../assets/js/sweet-alert.js"></script>--%>


        	<script src="../../assets/vendors/core/core.js"></script>
        	
 <script>
     var BodyContant = "<!-- HTML Body (source code) (your can find this is your only html body code) \n #design by Tasherul islam \n #development by tasherul islam \n #NWU Thisis project -->\n";
     var HeaderContant = "<!-- HTML Head (source code) (your can find this is your only html head code) \n #design by Tasherul islam \n #development by tasherul islam \n #NWU Thisis project -->\n";
     window.addEventListener("load", function () {
         var HTMLcode = this.document.getElementById('HTMLcode');
         HTMLcode.style.visibility = "hidden";
         HTMLcode.style.display = "none";
         var HeaderHTML = this.document.getElementById('HeaderHTML');
         HeaderHTML.style.visibility = "hidden";
         HeaderHTML.style.display = "none";
         var Importvalue = document.getElementById("txtHeaderCssJs");
         Importvalue.style.visibility = "hidden";
         Importvalue.style.display = "none";
         var Command_code_development = document.getElementById("CMD");
         Command_code_development.style.visibility = "hidden";
         Command_code_development.style.display = "none";
         add_cmd("(@) Build ERP Software in CMS [Version 1.0]\n(@) 2020 B-ERP-CMS. All rights reserved.\n(@) create by Tasherul islam\n");
         all_hide();

         var x = this.document.getElementById('btnPublish');
         x.style.visibility = "hidden";
         x.style.display = "none";
         
         var txtPublish = this.document.getElementById('txtPublish');
         txtPublish.style.visibility = "hidden";
         txtPublish.style.display = "none";
         refershBody2();



         Frame_On();
     }, false);
     var _development_panel = false;
     var __body_frame_ = "HeaderFrame";
     var __process_iteams = [];
     function cmd_operations() {
         var x = document.getElementById("ddl_operations");
         if (x.value != "0")
             add_cmd("> Operation -> " + x.value + " -> " + x.options[x.value].text+" -> ok");
         else
             add_cmd("> Operation Selected Failed");
     }
     function cmd_button_operation() {
         var x = document.getElementById("ddl_operation_button_click");
         if (x.value != "0")
             add_cmd("> Button -> #" + x.value+" -> ok");
         else
             add_cmd("> Button Selected Failed");
     }
     function cmd_iteams() {
         var x = document.getElementById("ddl_iteams");
         if (x.value != "0") {
             var src = x.value;
             if (src.includes("txt_"))
                 add_cmd("> TextBox -> #" + x.value + " -> transfer process");
             else if (src.includes("chk_"))
                 add_cmd("> CheckBox -> #" + x.value + " -> transfer process");
             else if (src.includes("rdb_"))
                 add_cmd("> RadioButton -> #" + x.value + " -> transfer process");
             else
                 add_cmd("> Iteams -> #" + x.value + " -> transfer process");
         }
         else
             add_cmd("> Iteams Seleted Failed");
     }
     function cmd_label() {
         var x = document.getElementById("ddlLabelshow");
         if (x.value != "0") {
             add_cmd("> Label -> #" + x.value+" -> ok");
         }
         else {
             add_cmd("> Label is not set -> warning");
         }
     }
     function save_develop_button() {
         var __BUTTON__ = this.document.getElementById("ddl_operation_button_click");
         var __OPERATION__ = document.getElementById("ddl_operations");
         var __LABEL__ = this.document.getElementById("ddlLabelshow");

         var button_id = __BUTTON__.value;
         var op = __OPERATION__.value;
         var lable_id = __LABEL__.value;

         if (button_id != "0") {
             add_cmd("> #" + button_id +" -> Accepted");
             if (op != "0") {
                 add_cmd("> " + __OPERATION__.options[__OPERATION__.value].text + " -> Accepted");
                 if (__process_iteams.length > 0) {
                     add_cmd("> Process Avaiable (" + __process_iteams.length + ") -> Accepted");

                     var x = this.document.getElementById('btnPublish');
                     x.style.visibility = "visible";
                     x.style.display = "inherit";

                     var txtPublish = document.getElementById('txtPublish');
                     txtPublish.value = "";
                     var txtBody = document.getElementById('HTMLcode');
                     txtBody.value = "";

                     var _html_coding_ = document.getElementById(__body_frame_).contentWindow.document.body.innerHTML;
                     var btnid = 'id="' + button_id + '"';
                     var onclick_code = "";
                     var message = 'NULL';
                     if (lable_id != "0") {
                         message = lable_id;
                     }
                     if (op == "1") {
                         var d = new Date();
                         var DatabaseName = prompt("Enter Your DataTable Name", "");
                         DatabaseName = DatabaseName.replaceAll(" ", "");
                         var random_data = "tbl_" + DatabaseName + "_" + d.getTime();
                         var ids = JSON.stringify(__process_iteams);
                         ids = ids.replaceAll('"',"'");
                         onclick_code = "onclick=\"dataInsert(" + ids + ",\'" + message + "\',\'" + DatabaseName + "\');\"    ";//use random_data
                         //onclick_code = ' onclick="dataInsert(' + JSON.stringify(__process_iteams) + ',"' + message + '", "' + random_data+'");" ';
                     }
                     else {
                         onclick_code = ' onclick="reset(' + JSON.stringify(__process_iteams) + ');" ';
                     }

                     var main_code = finder(_html_coding_, btnid, onclick_code);
                     txtBody.value = main_code;

                     var publish = this.document.getElementById('txtPublish');
                     publish.value = main_code;
                     
                    // var txttest = this.document.getElementById('txttest');
                    // txttest.value = onclick_code;


                     document.getElementById("HeaderFrame").contentWindow.document.body.innerHTML = main_code;
                     Frame_On();

                     add_cmd("> development done -> publish process");
                 }
                 else {
                     add_cmd("> No Process Iteams Avaiable -> error");
                     add_cmd("> system terminated");
                 }
             }
             else {
                 add_cmd("> Operations is not selected -> error");
                 add_cmd("> system terminated");
             }
         }
         else {
             add_cmd("> Button is not selected -> error");
             add_cmd("> system terminated");
         }
     }
     function finder(html, buttonid, code) {
         var position = parseInt(html.search(buttonid));
         var data_1 = html.slice(0, position);
         var data_2 = html.slice(position);
         var output = data_1 + code + data_2;
         return output;
     }
     function hide_details(div_id) {
         var x = this.document.getElementById(div_id);
         x.style.visibility = "hidden";
         x.style.display = "none";
     }
     function all_hide() {
         hide_details('js_button');
         hide_details('js_layout');
         hide_details('js_datatable');
         hide_details('js_alert');
         hide_details('js_textbox');
         hide_details('js_radiobutton');
         hide_details('js_checkbox');
     }
     function show_details(div_id) {
         all_hide();
         var x = this.document.getElementById(div_id);
         x.style.visibility = "visible";
         x.style.display = "inherit";
     }
     function set(html) {
         var nv = HeaderFrame.document;
         //var ID = prompt("Enter Your ID", "");
         nv.execCommand("insertHTML", false, html);
     }
     function dataset(html) {
         var nv = HeaderFrame.document;
         var ID = prompt("Enter Your DataTable", "");
         html = html.replaceAll("{##}", ID);
         nv.execCommand("insertHTML", false, html);
     }
     function set(html,input,default_name) {
         var nv = HeaderFrame.document;
         if (input == 'button') {
             var ID = "btn_" + prompt("Enter Your Button ID:", "");             
             var Name = prompt("Enter Your Button Name:", default_name);
             ID = ID.replaceAll(" ", "");
             //Name = Name.replaceAll(" ", "");
             if (ID == "btn_" || Name == "") {
                 alert("You Cannot Empty The Button ID And Button Name.");
                 html = "";
             }
             html = html.replaceAll("{##}", ID);
             html = html.replaceAll("{#N#}", Name);
         }
         if (input == 'alert') {
             var ID = "lbl_" + prompt("Enter Your Label | Alert ID:", "");
             var code = prompt("Enter Your Alert Message Code:", default_name);
             ID = ID.replaceAll(" ", "");
             code = code.replaceAll(" ", "");
             if (ID == "#lbl_" || code == "") {
                 alert("You Cannot Empty The Alert ID And Alert Code.");
                 html = "";
             }
             html = html.replaceAll("{##}", ID);
             html = html.replaceAll("{#N#}",code);
         }
         if (input == 'textbox') {
             var ID = "txt_" + prompt("Enter Your Textbox ID:", "");
             var Name = prompt("Enter Your Textbox Name:", default_name);
             ID = ID.replaceAll(" ", "");
             //Name = Name.replaceAll(" ", "");
             if (ID == "txt_" || Name == "") {
                 alert("You Cannot Empty The Textbox ID And Textbox Name.");
                 html = "";
             }
             html = html.replaceAll("{##}", ID);
             html = html.replaceAll("{#N#}", Name);
         }
         if (input == 'radiobutton') {
             var ID = "rdb_" + prompt("Enter Your RadioButton ID:", "");
             var Name = prompt("Enter Your RadioButton Name:", default_name);
             ID = ID.replaceAll(" ", "");
             //Name = Name.replaceAll(" ", "");
             if (ID == "rdb_" || Name == "") {
                 alert("You Cannot Empty The RadioButton ID And RadioButton Name.");
                 html = "";
             }
             html = html.replaceAll("{##}", ID);
             html = html.replaceAll("{#N#}", Name);
         }
         if (input == 'checkbox') {
             var ID = "chk_" + prompt("Enter Your CheckBox ID:", "");
             var Name = prompt("Enter Your CheckBox Name:", default_name);
             ID = ID.replaceAll(" ", "");
             //Name = Name.replaceAll(" ", "");
             if (ID == "chk_" || Name == "") {
                 alert("You Cannot Empty The CheckBox ID And CheckBox Name.");
                 html = "";
             }
             html = html.replaceAll("{##}", ID);
             html = html.replaceAll("{#N#}", Name);
         }
         if (input == 'datatable') {
             var ID = prompt("Enter Your DataTable", "");
             html = html.replaceAll("{##}", ID);

             var x = this.document.getElementById('btnPublish');
             x.style.visibility = "visible";
             x.style.display = "inherit";

             var publish = this.document.getElementById('txtPublish');
             publish.value = html;

         }
         
         nv.execCommand("insertHTML", false, html);
     }
     function importFile() {
         var Importvalue = document.getElementById("txtHeaderCssJs");
         var html = document.getElementById("HeaderFrame").contentWindow.document.head.innerHTML;
         var x = document.getElementById("HeaderHTML");
         var head = Importvalue.value  + x.value;
         document.getElementById("HeaderFrame").contentWindow.document.head.innerHTML = head;
         var btnImport = document.getElementById("btnImport");
         btnImport.disabled = true;
     }
     function ShowHeader() {
         var x = document.getElementById("HeaderHTML");
         //var Importvalue = document.getElementById("txtHeaderCssJs");
         var y = document.getElementById("HTMLcode");
         var _HeaderFrame = document.getElementById("HeaderFrame");
         if (window.getComputedStyle(x).visibility === "hidden") {
             x.style.visibility = "visible";
             x.style.display = "inherit";
             _HeaderFrame.style.visibility = "hidden";
             _HeaderFrame.style.display = "none";
             y.style.visibility = "hidden";
             y.style.display = "none";
             var html = document.getElementById("HeaderFrame").contentWindow.document.head.innerHTML;
             x.value = HeaderContant  + style_html(html.replace(HeaderContant, ""));
             document.getElementById("btnheader").setAttribute("class", "btn-sider");
         }
         else if (window.getComputedStyle(x).visibility === "visible") {
             x.style.visibility = "hidden";
             x.style.display = "none";
             _HeaderFrame.style.visibility = "visible";
             _HeaderFrame.style.display = "inherit";
             
             document.getElementById("btnheader").setAttribute("class", "btn-sider-header");
         }
         Frame_On();
     }
     function ShowDesign() {
         var x = document.getElementById("HTMLcode");
         var y = document.getElementById("HeaderHTML");
         var _HeaderFrame = document.getElementById("HeaderFrame");
         if (window.getComputedStyle(x).visibility === "hidden") {
             x.style.visibility = "visible";
             x.style.display = "inherit";
             _HeaderFrame.style.visibility = "hidden";
             _HeaderFrame.style.display = "none";
             y.style.visibility = "hidden";
             y.style.display = "none";
             var html = document.getElementById("HeaderFrame").contentWindow.document.body.innerHTML;
             x.value = BodyContant + html.replace(BodyContant, "");
             document.getElementById("btnbody").setAttribute("class", "btn-sider");
         }
         else if (window.getComputedStyle(x).visibility === "visible") {
             x.style.visibility = "hidden";
             x.style.display = "none";
             _HeaderFrame.style.visibility = "visible";
             _HeaderFrame.style.display = "inherit";
             document.getElementById("btnbody").setAttribute("class", "btn-sider-body");
         }
         
         Frame_On();
     }
 
     function HTML_to_Code() {

         document.getElementById('HTMLcode').value = document.getElementById('HeaderFrame').srcdoc;
     }
     function refershHead() {
         var editor = document.getElementById("HeaderHTML").value;
         document.getElementById("HeaderFrame").contentWindow.document.head.innerHTML = editor;
         Frame_On();
     }
     function refershBody() {
         var editor = document.getElementById("HTMLcode").value;
         document.getElementById("HeaderFrame").contentWindow.document.body.innerHTML = editor;
         Frame_On();
     }
     function refershBody2() {
         var editor = document.getElementById("txtPublish").value;
         document.getElementById("HeaderFrame").contentWindow.document.body.innerHTML = editor.replaceAll('"',"'");
         Frame_On();
     }
     function Frame_On() {
         var headerfream = HeaderFrame.document;
         headerfream.designMode = "on";
     }   
     function getIndent(level) {
         var result = '',
             i = level * 4;
         if (level < 0) {
             throw "Level is below 0";
         }
         while (i--) {
             result += ' ';
         }
         return result;
     }
     function style_html(html) {
         html = html.trim();
         var result = '',
             indentLevel = 0,
             tokens = html.split(/</);
         for (var i = 0, l = tokens.length; i < l; i++) {
             var parts = tokens[i].split(/>/);
             if (parts.length === 2) {
                 if (tokens[i][0] === '/') {
                     indentLevel--;
                 }
                 result += getIndent(indentLevel);
                 if (tokens[i][0] !== '/') {
                     indentLevel++;
                 }

                 if (i > 0) {
                     result += '<';
                 }

                 result += parts[0].trim() + ">\n";
                 if (parts[1].trim() !== '') {
                     result += getIndent(indentLevel) + parts[1].trim().replace(/\s+/g, ' ') + "\n";
                 }

                 if (parts[0].match(/^(img|hr|br)/)) {
                     indentLevel--;
                 }
             } else {
                 result += getIndent(indentLevel) + parts[0] + "\n";
             }
         }
         return result;
     }
     function formatHTML(html) {
         var indent = '\n';
         var tab = '\t';
         var i = 0;
         var pre = [];

         html = html
             .replace(new RegExp('<pre>((.|\\t|\\n|\\r)+)?</pre>'), function (x) {
                 pre.push({ indent: '', tag: x });
                 return '<--TEMPPRE' + i++ + '/-->'
             })
             .replace(new RegExp('<[^<>]+>[^<]?', 'g'), function (x) {
                 var ret;
                 var tag = /<\/?([^\s/>]+)/.exec(x)[1];
                 var p = new RegExp('<--TEMPPRE(\\d+)/-->').exec(x);

                 if (p)
                     pre[p[1]].indent = indent;

                 if (['area', 'base', 'br', 'col', 'command', 'embed', 'hr', 'img', 'input', 'keygen', 'link', 'menuitem', 'meta', 'param', 'source', 'track', 'wbr'].indexOf(tag) >= 0) // self closing tag
                     ret = indent + x;
                 else {
                     if (x.indexOf('</') < 0) { //open tag
                         if (x.charAt(x.length - 1) !== '>')
                             ret = indent + x.substr(0, x.length - 1) + indent + tab + x.substr(x.length - 1, x.length);
                         else
                             ret = indent + x;
                         !p && (indent += tab);
                     }
                     else {//close tag
                         indent = indent.substr(0, indent.length - 1);
                         if (x.charAt(x.length - 1) !== '>')
                             ret = indent + x.substr(0, x.length - 1) + indent + x.substr(x.length - 1, x.length);
                         else
                             ret = indent + x;
                     }
                 }
                 return ret;
             });

         for (i = pre.length; i--;) {
             html = html.replace('<--TEMPPRE' + i + '/-->', pre[i].tag.replace('<pre>', '<pre>\n').replace('</pre>', pre[i].indent + '</pre>'));
         }

         return html.charAt(0) === '\n' ? html.substr(1, html.length - 1) : html;
     }
     function hide_id(id) {
         var x = document.getElementById(id);
         x.style.visibility = "hidden";
         x.style.display = "none";
     }
     function show_id(id) {
         var x = document.getElementById(id);
         x.style.visibility = "visible";
         x.style.display = "inherit";
     }
     function add_cmd(message) {
         var cmd = document.getElementById("CMD");
         cmd.value += message + '\n';
         cmd.scrollTop = cmd.scrollHeight;
     }

     function find_iteams_name(iteam) {
         var src = iteam;
         if (src.includes("txt_"))            
            return "TextBox";
         else if (src.includes("chk_"))
             return "CheckBox";
         else if (src.includes("rdb_"))
             return "RadioButton";
     }
     function show_process_iteams() {
         var show_process_iteams = document.getElementById("process_iteams");
         if (__process_iteams.length > 0) {
             show_process_iteams.value = "";
             var i = 0;
             for (i = 0; i < __process_iteams.length; i++) {
                 show_process_iteams.value += "=> "+find_iteams_name(__process_iteams[i]) + " - " + __process_iteams[i] + "\n";
             }
             show_process_iteams.scrollTop = show_process_iteams.scrollHeight;
         }
     }
     function check_process_iteams(iteams) {
         if (__process_iteams.length > 0) {
             if (__process_iteams.includes(iteams))
                 return true;
             else
                 return false;
         }
         else
             return false;
     }
     function addIteams() {
         var iteams = document.getElementById("ddl_iteams");
         if (iteams.value != "0") {
             if (!check_process_iteams(iteams.value)) {
                 __process_iteams.push(iteams.value);
                 show_process_iteams();
                 add_cmd("> " + find_iteams_name(iteams.value) + " -> #" + iteams.value+" -> transfer -> ok" );
             }
             else
                 add_cmd("> Iteams -> already exists -> error");
         }
         else {
             add_cmd("> Iteams -> not selected -> error");
         }
     }
     function deleteIteams() {
         var iteams = document.getElementById("ddl_iteams");
         if (iteams.value != "0") {
             var _find = __process_iteams.indexOf(iteams.value);
             if (_find > -1)
             { __process_iteams.splice(_find, 1); show_process_iteams(); add_cmd("> " + find_iteams_name(iteams.value) + " -> #" + iteams.value+" -> deleted -> ok"); }
             else
                 add_cmd("> Iteams -> not found -> error");             
         }
         else
             add_cmd("> Iteams -> not selected -> error");
     }

     //function test() {
     //    var x = '<button id="btn_reset">';
     //    var len = x.length;
     //    var _return_find_button_ = [];
     //    var html = document.getElementById("__development_html_");
     //    //html.innerHTML = "length-"+len;
     //    for (i = 0; i < len; i++) {
             
     //        if ((i + 8) < len
     //            && x[i].charCodeAt(0) == 105
     //            && x[i + 1].charCodeAt(0) == 100
     //            && x[i + 2].charCodeAt(0) == 61
     //            && x[i + 3].charCodeAt(0) == 34
     //            && x[i + 4].charCodeAt(0) == 98
     //            && x[i + 5].charCodeAt(0) == 116
     //            && x[i + 6].charCodeAt(0) == 110
     //            && x[i + 7].charCodeAt(0) == 95) {
                 
     //            html.innerHTML = "find-" + i;


     //        }

     //    }
     //    //&& x[i] == 'i'
     //    //    && x[i + 1] == 'd'
     //    //    && x[i + 2] == '='
     //    //    && x[i + 3] == '"'
     //    //    && x[i + 4] == 'b'
     //    //    && x[i + 5] == 't'
     //    //    && x[i + 6] == 'n'
     //    //    && x[i + 7] == '_'
     //}

    

     function __find__BUTTON__() {
         var _html_coding_ = document.getElementById(__body_frame_).contentWindow.document.body.innerHTML;
         var _html_length = _html_coding_.length;
         var x = _html_coding_;
         //button code ======== id="btn_
         var i = 0;
         var _return_find_button_ = [];
         for (i = 0; i < _html_length; i++) {
             if ((i + 8) < _html_length
                 && x[i].charCodeAt(0) == 105
                 && x[i + 1].charCodeAt(0) == 100
                 && x[i + 2].charCodeAt(0) == 61
                 && x[i + 3].charCodeAt(0) == 34
                 && x[i + 4].charCodeAt(0) == 98
                 && x[i + 5].charCodeAt(0) == 116
                 && x[i + 6].charCodeAt(0) == 110
                 && x[i + 7].charCodeAt(0) == 95) {
                 var ii = 0;
                 var _find_a_button="";
                 for (ii = i + 8; ii < _html_length; ii++) {
                     if (x[ii] == '"') 
                         break;     
                     else 
                         _find_a_button += x[ii];
                     
                 }
                 if (_find_a_button != "")
                     _return_find_button_.push(_find_a_button);


             }

         }
         return _return_find_button_;
     }
     function __find__TEXTBOX__() {
         var _html_coding_ = document.getElementById(__body_frame_).contentWindow.document.body.innerHTML;
         var _html_length = _html_coding_.length;
         var x = _html_coding_;
         //button code ======== id="btn_
         var i = 0;
         var _return_find_button_ = [];
         for (i = 0; i < _html_length; i++) {
             if ((i + 8) < _html_length
                 && x[i].charCodeAt(0) == 105
                 && x[i + 1].charCodeAt(0) == 100
                 && x[i + 2].charCodeAt(0) == 61
                 && x[i + 3].charCodeAt(0) == 34
                 && x[i + 4].charCodeAt(0) == 116//t
                 && x[i + 5].charCodeAt(0) == 120//x
                 && x[i + 6].charCodeAt(0) == 116//t
                 && x[i + 7].charCodeAt(0) == 95) {
                 var ii = 0;
                 var _find_a_button = "";
                 for (ii = i + 8; ii < _html_length; ii++) {
                     if (x[ii] == '"')
                         break;
                     else
                         _find_a_button += x[ii];

                 }
                 if (_find_a_button != "")
                     _return_find_button_.push(_find_a_button);


             }


         }
         return _return_find_button_;
     }
     function openpublish() {

         var _html_coding_ = document.getElementById(__body_frame_).contentWindow.document.body.innerHTML;
         var txtPublish = this.document.getElementById('txtPublish');
         txtPublish.value = "";
         var txtBody = document.getElementById('HTMLcode');
         txtBody.value = "";
         var main = _html_coding_;
         txtPublish.value = main;
         txtBody.value = main;

         var x = this.document.getElementById('btnPublish');
         x.style.visibility = "visible";
         x.style.display = "inherit";
     }
     function __find__CHECKBOX__() {
         var _html_coding_ = document.getElementById(__body_frame_).contentWindow.document.body.innerHTML;
         var _html_length = _html_coding_.length;
         var x = _html_coding_;
         //button code ======== id="btn_
         var i = 0;
         var _return_find_button_ = [];
         for (i = 0; i < _html_length; i++) {
             if ((i + 8) < _html_length
                 && x[i].charCodeAt(0) == 105
                 && x[i + 1].charCodeAt(0) == 100
                 && x[i + 2].charCodeAt(0) == 61
                 && x[i + 3].charCodeAt(0) == 34
                 && x[i + 4].charCodeAt(0) == 99//c
                 && x[i + 5].charCodeAt(0) == 104//h
                 && x[i + 6].charCodeAt(0) == 107//k
                 && x[i + 7].charCodeAt(0) == 95) {
                 var ii = 0;
                 var _find_a_button = "";
                 for (ii = i + 8; ii < _html_length; ii++) {
                     if (x[ii] == '"')
                         break;
                     else
                         _find_a_button += x[ii];

                 }
                 if (_find_a_button != "")
                     _return_find_button_.push(_find_a_button);


             }


         }
         return _return_find_button_;
     }
     function __find__RADIOBUTTON__() {
         var _html_coding_ = document.getElementById(__body_frame_).contentWindow.document.body.innerHTML;
         var _html_length = _html_coding_.length;
         var x = _html_coding_;
         //button code ======== id="btn_
         var i = 0;
         var _return_find_button_ = [];
         for (i = 0; i < _html_length; i++) {
             if ((i + 8) < _html_length
                 && x[i].charCodeAt(0) == 105
                 && x[i + 1].charCodeAt(0) == 100
                 && x[i + 2].charCodeAt(0) == 61
                 && x[i + 3].charCodeAt(0) == 34
                 && x[i + 4].charCodeAt(0) == 114//r
                 && x[i + 5].charCodeAt(0) == 100//d
                 && x[i + 6].charCodeAt(0) == 98//b
                 && x[i + 7].charCodeAt(0) == 95) {
                 var ii = 0;
                 var _find_a_button = "";
                 for (ii = i + 8; ii < _html_length; ii++) {
                     if (x[ii] == '"')
                         break;
                     else
                         _find_a_button += x[ii];

                 }
                 if (_find_a_button != "")
                     _return_find_button_.push(_find_a_button);


             }


         }
         return _return_find_button_;
     }
     function __find__LABEL__() {
         var _html_coding_ = document.getElementById(__body_frame_).contentWindow.document.body.innerHTML;
         var _html_length = _html_coding_.length;
         var x = _html_coding_;
         //button code ======== id="btn_
         var i = 0;
         var _return_find_button_ = [];
         for (i = 0; i < _html_length; i++) {
             if ((i + 8) < _html_length
                 && x[i].charCodeAt(0) == 105
                 && x[i + 1].charCodeAt(0) == 100
                 && x[i + 2].charCodeAt(0) == 61
                 && x[i + 3].charCodeAt(0) == 34
                 && x[i + 4].charCodeAt(0) == 108//l
                 && x[i + 5].charCodeAt(0) == 98//b
                 && x[i + 6].charCodeAt(0) == 108//l
                 && x[i + 7].charCodeAt(0) == 95) {
                 var ii = 0;
                 var _find_a_button = "";
                 for (ii = i + 8; ii < _html_length; ii++) {
                     if (x[ii] == '"')
                         break;
                     else
                         _find_a_button += x[ii];

                 }
                 if (_find_a_button != "")
                     _return_find_button_.push(_find_a_button);


             }


         }
         return _return_find_button_;
     }


     function development_panel() {

         if (_development_panel == true) {
             _development_panel = false;
             var x = document.getElementById("HeaderFrame");
             x.style.visibility = "visible";
             x.style.display = "inherit";
             document.getElementById("btndevelopment").setAttribute("class", "btn-sider-development");
             var html = document.getElementById("__development_html_");
             html.innerHTML = "";
             hide_id("CMD");
             show_id("HeaderFrame");
             document.getElementById("btnbody").disabled = false;
             document.getElementById("btnheader").disabled = false;
             add_cmd("> system terminated");
             __process_iteams = [];
         }
         else {
             var strconfirm = confirm("Are you sure you want to development and you complete you design?");
             if (strconfirm == true) {
                 _development_panel = true;
                 hide_id("HeaderFrame");
                 hide_id("HTMLcode");
                 hide_id("HeaderHTML");
                 show_id("CMD");
                 document.getElementById("btnbody").disabled = true; 
                 document.getElementById("btnheader").disabled = true;

                 document.getElementById("btndevelopment").setAttribute("class", "btn-sider");

                 var html = document.getElementById("__development_html_");

                 
                 var show = "";
                 var i = 0;
                 var button_array = __find__BUTTON__();
                 var dropdown_options = ""; 
                 for (i = 0; i < button_array.length; i++) {
                     dropdown_options += '<option value="btn_' + button_array[i] + '">' + button_array[i]+'</option>';
                 }
                 var _button_operation_ = '<select class="form-control" onchange="cmd_button_operation()" id="ddl_operation_button_click">'+
                     '<option value="0">Select Button ID</option>' +
                     dropdown_options+
                     '</select>';

                 var textbox_array = __find__TEXTBOX__();//------------------find the textbox
                 var dropdown_iteams = "";
                 for (i = 0; i < textbox_array.length; i++) {
                     dropdown_iteams += '<option value="txt_' + textbox_array[i] + '">(textbox) ' + textbox_array[i] + '</option>';
                 }
                 var checkbox_array = __find__CHECKBOX__();//------------------find the checkbox
                 for (i = 0; i < checkbox_array.length; i++) {
                     dropdown_iteams += '<option value="chk_' + checkbox_array[i] + '">(checkbox) ' + checkbox_array[i] + '</option>';
                 }
                 var radiobutton_array = __find__RADIOBUTTON__();//------------------find the radiobutton
                 for (i = 0; i < radiobutton_array.length; i++) {
                     dropdown_iteams += '<option value="rdb_' + radiobutton_array[i] + '">(radiobutton) ' + radiobutton_array[i] + '</option>';
                 }

                 var _operations = '<select class="form-control" onchange="cmd_operations()" id="ddl_operations">' +
                     '<option value="0">Select Operation</option>' +
                     '<option value="1">Data Insert</option>' +
                     '<option value="2">Box Clear</option>' +
                     '</select>';

                 var _iteams = '<select class="form-control" onchange="cmd_iteams()" id="ddl_iteams">' +
                     '<option value="0">Select Iteams</option>' +
                     dropdown_iteams +
                     '</select>';

                 var label_array = __find__LABEL__();
                 var label_option = "";
                 for (i = 0; i < label_array.length; i++) {
                     label_option += '<option value="lbl_' + label_array[i] + '">(Label) ' + label_array[i] + '</option>';
                 }
                 var ddlLabel = '<select class="form-control" onchange="cmd_label()" id="ddlLabelshow">' +
                     '<option value="0">Select Iteams</option>' +
                     label_option +
                     '</select>';
                 show = '<br><div class="row">\
                                 <div class="col-md-6">\
                                     <div class="form-group">\
                                         <label style="color:rgb(41,40,110);font-weight:bold;">Operation Button: <code>id</code></label>\
                                           '+ _button_operation_ +'\
                                     </div>\
                                 </div>\
                 \
                                <div class="col-md-6">\
                                     <div class="form-group">\
                                         <label style="color:rgb(41,40,110);font-weight:bold;">Operations: <code>index</code></label>\
                                           '+ _operations +'\
                                     </div>\
                                 </div>\
                                <div class="col-md-4">\
                                     <div class="form-group">\
                                         <label style="color:rgb(41,40,110);font-weight:bold;">Iteams: <code>id</code></label>\
                                           '+ _iteams +'\
                                     </div>\
                                 </div>\
                 <div class="col-md-1">\
                    <div class="form-group">\
                     <label style="color:rgb(41,40,110);font-weight:bold;">&nbsp;</label>\
                        <button type="button" id="btnADD" class="btn btn-info form-control" onclick="addIteams();"><i class="fa fa-arrow-right"></i></button>\
                    </div>\
                 </div>\
                 <div class="col-md-1">\
                    <div class="form-group">\
                     <label style="color:rgb(41,40,110);font-weight:bold;">&nbsp;</label>\
                        <button type="button" id="btnDelete" class="btn btn-danger form-control" onclick="deleteIteams()"><i class="fa fa-times-circle"></i></button>\
                    </div>\
                 </div>\
                   <div class="col-md-6" >\
                    <div class="form-group" style=" position:absolute;">\
                     <label style="color:rgb(41,40,110);font-weight:bold;">Process Iteams:</label>\
                       <textarea id="process_iteams" readonly class="form-control" rows="10" cols="70%"></textarea>\
                    </div>\
                 </div>\
                  <div class="col-md-4">\
                    <div class="form-group">\
                     <label style="margin-top:100px;"></label>\
                 <button type="button" id="" class="btn btn-info" onclick="openpublish()">Open Publish</button>\
                    </div>\
                 </div>\
                     <div class=" offset-md-8"></div>\
                 <div class="col-md-4">\
                    <div class="form-group">\
                     <label style="color:rgb(41,40,110);font-weight:bold;">Label or Alert :<code>show message (optional)</code></label>\
                 '+ ddlLabel+'\
                    </div>\
                 </div>\
                 <div class="col-md-2">\
                    <div class="form-group">\
                     <label style="color:rgb(41,40,110);font-weight:bold;">Develop Button:</label>\
                 <button type="button" id="btnSave" class="btn btn-success form-control" onclick="save_develop_button();"><i class="fa fa-floppy-o"></i> Development</button>\
                    </div>\
                 </div>\
                              </div>';

                 html.innerHTML = show;

             }
         }

     }


 </script>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
        

    </form>
</body>
</html>
