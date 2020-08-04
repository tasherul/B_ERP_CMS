<%@ Page Language="C#" AutoEventWireup="true" ValidateRequest="false" CodeBehind="Editor.aspx.cs" Inherits="B_ERP_CMS.CMS.Template.Editor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Editor | HTML </title>
    <link href="Editor.css" rel="stylesheet" />
    <link href="../../assets/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css' integrity='sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk' crossorigin='anonymous'/>

    
</head>
<body>
    <form id="form1" runat="server">

        <%--<div class="Main">
            <div class="code-part">
                coding
                <br />
                <br />
                <br />
                <br />
                <br />
                asda
            </div>
            <div class="Properties">
                <p class="p-head">Properties</p>
                <div class="box ">

                </div>
                <div class="script-box">

                </div>
            </div>
        </div>--%>
        <div class="row">
            <div class="col-md-9">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-12">
                                <div id="headerbar" class="header-bar">
                                    <%--
                                    <button type="button" class="btn-clear" ><i class="fa fa-bold"></i></button>
                                    <button type="button" class="btn-clear" ><i class="fa fa-italic"></i></button>
                                    <button type="button" class="btn-clear" ><i class="fa fa-underline"></i></button>
                                    <button type="button" class="btn-clear" ><i class="fa fa-align-left"></i></button>
                                    <button type="button" class="btn-clear" ><i class="fa fa-align-center"></i></button>
                                    <button type="button" class="btn-clear" ><i class="fa fa-align-right"></i></button>
                                    <button type="button" class="btn-clear" ><i class="fa fa-align-justify"></i></button>--%>
                                    <button type="button" class="btn-clear" onclick="showHeaderMain()" title="Background Design"><i class="fa fa-home"></i> Main</button>
                                    <button type="button" class="btn-clear"  onclick="showHeaderLogo()" title="Logo Change"><i class="fa fa-image"></i> Logo</button>
                                    <button type="button" class="btn-clear" onclick="showHeaderNotification()" title="Notification"><i class="fa fa-bell"></i> Notification</button>
                                    <button type="button" class="btn-clear" onclick="showHeaderMessage()" title="Messege"><i class="fa fa-envelope"></i> Messeging</button>
                                    <button type="button" class="btn-clear" onclick="showHeaderProfile()"  title="Profile"><i class="fa fa-user-circle"></i> Profile</button>
                                    <button type="button" class="btn-clear" onclick="ShowheaderHtml()" title="Html"><i class="fa fa-html5"></i> Html</button>
                                </div>
                                
                                <iframe id="HeaderFrame" class="frame" height="130" name="HeaderFrame" width="100%" frameborder="0"></iframe>
                                <asp:TextBox ID="txtHeaderHtml" Height="130" onkeyup="refersh()"  CssClass="frame-html" Width="100%" TextMode="MultiLine" runat="server"></asp:TextBox>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <div id="navBar" class="nav-bar">
                                    <%--
                                    <button type="button" class="btn-clear" ><i class="fa fa-bold"></i></button>
                                    <button type="button" class="btn-clear" ><i class="fa fa-italic"></i></button>
                                    <button type="button" class="btn-clear" ><i class="fa fa-underline"></i></button>
                                    <button type="button" class="btn-clear" ><i class="fa fa-align-left"></i></button>
                                    <button type="button" class="btn-clear" ><i class="fa fa-align-center"></i></button>
                                    <button type="button" class="btn-clear" ><i class="fa fa-align-right"></i></button>
                                    <button type="button" class="btn-clear" ><i class="fa fa-align-justify"></i></button>--%>
                                    <button type="button" class="btn-clear" onclick="HorizontalNavBar()" title="Logo"><i class="fa fa-list-ul"></i> Horizontal Bar</button>
                                    <button type="button" class="btn-clear" onclick="changeBar()" title="Logo"><i id="Icon"></i></button>
                                    <button type="button" class="btn-clear" onclick="VarticalNavBar()" title="Logo"><i class="fa fa-th-large"></i> Vertical Bar</button>
                                    |
                                    <button type="button" class="btn-clear" id="btnUndo" title="Undo"><i class="fa fa-undo"></i></button>
                                    <button type="button" class="btn-clear" id="btnRedo" title="Redo"><i class="fa fa-repeat"></i></button>
                                    |
                                    <button type="button" class="btn-clear" id="btnBold" title="Bold"><i class="fa fa-bold"></i></button>
                                    <button type="button" class="btn-clear" id="btnItalic" title="Italic"><i class="fa fa-italic"></i></button>
                                    <button type="button" class="btn-clear" id="btnUnderline" title="Underline"><i class="fa fa-underline"></i></button>
                                    |
                                    <input id="btnfontColor" title="Font Color" type="color" style="border:0;background-color:#e1e1e1;" />
                                    <input id="btnhighlight" title="HighLight" type="color" style="border:0;background-color:#e1e1e1;" />
                                    <select id="fontSizeChanger">
                                        <option value="1">8</option>
                                        <option value="2">9</option>
                                        <option value="3">10</option>
                                        <option value="4" selected="selected">11</option>
                                        <option value="5">12</option>
                                        <option value="6">14</option>
                                        <option value="7">16</option>
                                        <option value="8">18</option>
                                        <option value="9">20</option>
                                    </select>
                                    <button type="button" class="btn-clear" id="btnLink" title="link"><i class="fa fa-link"></i></button>
                                    <button type="button" class="btn-clear" id="btnUnLink" title="Unlink"><i class="fa fa-chain-broken"></i></button>
                                   <button type="button" class="btn-clear" onclick="ShowNavFooter()"><i class="fa fa-facebook"></i> Footer</button>
                                    <button type="button" class="btn-clear" onclick="ShowNavHtml()"><i class="fa fa-html5"></i> Html</button>
                                </div>
                                
                                <iframe id="NavFrame" class="frame" height="600" name="NavFrame" width="100%" frameborder="0"></iframe>
                                <asp:TextBox ID="txtNavHtml" Height="600" onkeyup="refershNav()"  CssClass="frame-html" Width="100%" TextMode="MultiLine" runat="server"></asp:TextBox>
                                <asp:Label ID="lblResult" runat="server"></asp:Label>
                                <asp:Button ID="btnSaveHtml" OnClick="btnSaveHtml_Click" CssClass="btn btn-success form-control" runat="server" Text="Save Html" />
                            </div>
                        </div>
                        <div style="visibility:hidden;display:none;">
                                <asp:TextBox ID="txtMainControl"  Width="100%" TextMode="MultiLine" runat="server"></asp:TextBox>
                                <asp:TextBox ID="txtHeaderImageControl"   Width="100%" TextMode="MultiLine" runat="server"></asp:TextBox>
                                <asp:TextBox ID="txtHeaderScarchControl"   Width="100%" TextMode="MultiLine" runat="server"></asp:TextBox>
                                <asp:TextBox ID="txtNotificationControl"   Width="100%" TextMode="MultiLine" runat="server"></asp:TextBox>
                                <asp:TextBox ID="txtMessegeControlBody"  Width="100%" TextMode="MultiLine" runat="server"></asp:TextBox>
                                <asp:TextBox ID="txtMessegeControl"   Width="100%" TextMode="MultiLine" runat="server"></asp:TextBox>
                                <asp:TextBox ID="txtProfileControl1"   Width="100%" TextMode="MultiLine" runat="server"></asp:TextBox>
                                <asp:TextBox ID="txtProfileControl2"   Width="100%" TextMode="MultiLine" runat="server"></asp:TextBox>
                                <asp:TextBox ID="txtBarSection1"   Width="100%" TextMode="MultiLine" runat="server"></asp:TextBox>
                                <asp:TextBox ID="txtBarSection2"   Width="100%" TextMode="MultiLine" runat="server"></asp:TextBox>
                                <asp:TextBox ID="txtFooter"   Width="100%" TextMode="MultiLine" runat="server"></asp:TextBox>
                            <asp:TextBox ID="txtSrcLogo"   Width="100%" TextMode="MultiLine" runat="server"></asp:TextBox>
                            <asp:TextBox ID="txtSrcProfileImage"   Width="100%" TextMode="MultiLine" runat="server"></asp:TextBox>
                                </div>


                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div style="background-color: rgb(40,110,89); height: 100%">
                    <div class="card-body">
                        <p class="card-title alert alert-warning">Properties</p>
                        <input id="from" style="visibility:hidden;" type="text" />
                        <div class="row">
                            <div class="col-md-4 text-white">Float: </div>
                            <div class="col-md-8">
                                <input id="txtFloat" type="text" class="form-control" />
                            </div>
                        </div><br />
                        <div class="row">
                            <div class="col-md-4 text-white">Font Size: </div>
                            <div class="col-md-8">
                                <input id="txtFontSize" type="text" class="form-control" />
                            </div>
                        </div><br />
                         <div class="row">
                            <div class="col-md-4 text-white">Width: </div>
                            <div class="col-md-8">
                                <input id="txtWidth" type="text" class="form-control" />
                            </div>
                        </div><br />
                        <div class="row">
                            <div class="col-md-4 text-white">Height: </div>
                            <div class="col-md-8">
                                <input id="txtHeight" type="text" class="form-control" />
                            </div>
                        </div><br />
                        <div class="row">
                            <div class="col-md-4 text-white">Margin: </div>
                            <div class="col-md-8">
                                <input id="txtMargin" type="text" class="form-control" />
                            </div>
                        </div><br />
                        <div class="row">
                            <div class="col-md-4 text-white">Padding: </div>
                            <div class="col-md-8">
                                <input id="txtPadding" type="text" class="form-control" />
                            </div>
                        </div><br />
                        <div class="row">
                            <div class="col-md-4 text-white">bg-Color: </div>
                            <div class="col-md-8">
                                <input id="txtBackgroundColor" type="color" style="border:0;width:100%;border-radius:10px; height:30px;" />
                            </div>
                        </div><br />
                        <div class="row">
                            <div class="col-md-4 text-white">Color: </div>
                            <div class="col-md-8">
                                <input id="txtColor" type="color" style="border:0;width:100%;border-radius:10px; height:30px;" />
                            </div>
                        </div><br />
                        <div class="row">
                            <div class="col-md-4 text-white">Src: </div>
                            <div class="col-md-8">
                                <input id="txtsrc" type="text" class="form-control" />
                            </div>
                        </div><br />
                        <div class="row">
                            <div class="col-md-4 text-white">Border Radius: </div>
                            <div class="col-md-8">
                                <input id="txtBorderRadius" type="text" class="form-control" />
                            </div>
                        </div><br />
                        <div class="row">
                            <div class="col-md-4 text-white">Link: </div>
                            <div class="col-md-8">
                                <input id="txthref" type="text" class="form-control" />
                            </div>
                        </div><br />
                         <div class="row">
                            <div class="col-md-4 text-white">Hover Color: </div>
                            <div class="col-md-8">
                                <input id="txtHoverColor" type="color" style="border:0;width:100%;border-radius:10px; height:30px;" />
                            </div>
                        </div><br />
                         <div class="row">
                            <div class="col-md-4 text-white">Hover bg-Color: </div>
                            <div class="col-md-8">
                                <input id="txtHoverbgColor" style="border:0;width:100%;border-radius:10px; height:30px;" type="color" class="" />
                            </div>
                        </div><br />
                        <div class="row">
                            <div class="col-md-4 text-white"></div>
                            <div class="col-md-8">
                                <input type="button" class="btn btn-danger" id="CssSave" onclick="saveHtml()" value="Save" />
                            </div>
                        </div>
                        

                    </div>
                </div>
            </div>
        </div>


            <%--    <div id="textEditor">
                    <div id="theRibbon">
                        <input type="button" id="boldButton" value="B" />
                        <input type="color" />
                  
                    </div>
                    <div id="richTextArea">
                        <iframe id="theWYSIWYG"  name="theWYSIWYG" width="100%" frameborder="0"></iframe>
                    </div>
                    <textarea id="HtmlShow" onkeyup="refersh()" cols="20" rows="20"></textarea>
                </div>--%>

       <script src="Editor.js"></script>
 <script>
     //function showHeaderHtml() {
     //    var _txtHeaderHtml = document.getElementById('headerHtml_id');
     //    document.getElementById('txtHeaderHtml').value = "<img src={0} />" + window.getComputedStyle(_txtHeaderHtml).visibility .visibility;
         
     //    //_txtHeaderHtml.style. 
     //}
    
 </script>
    </form>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
        
   
    
</body>
</html>
