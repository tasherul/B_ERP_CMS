<%@ Page Title="" Language="C#" MasterPageFile="~/CMS/CMSmaster.Master" AutoEventWireup="true" CodeBehind="CreatePage.aspx.cs" Inherits="B_ERP_CMS.CMS.Development.CreatePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
            <title>Create Page</title>
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
                <li class="breadcrumb-item active">Create Page</li>
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
				<div class="row">
                    <div class="col-md-12">
                        <asp:GridView ID="GridView1" ShowFooter="true" Width="100%" runat="server" AutoGenerateColumns="False" DataKeyNames="page_id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True">
                            <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
                            <Columns>                               
                                <asp:TemplateField ShowHeader="False">
                                    <EditItemTemplate>
                                        <asp:LinkButton runat="server" CommandName="Update" CausesValidation="True" ID="LinkButton1"><i data-feather="check-circle"></i></asp:LinkButton>&nbsp;<asp:LinkButton runat="server" CommandName="Cancel" CausesValidation="False" ID="LinkButton2"><i data-feather="x-circle"></i></asp:LinkButton>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:LinkButton runat="server" CommandName="Edit" CausesValidation="False" ID="LinkButton1"><%# Eval("Page_name").ToString()=="Default"?"":"<i data-feather='edit'></i>" %></asp:LinkButton>&nbsp;<asp:LinkButton runat="server"  CommandName="Delete" CausesValidation="False" ID="LinkButton2"><%# Eval("Page_name").ToString()=="Default"?"":"<i data-feather='trash'></i>" %></asp:LinkButton>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ADD Page" />
                                    </FooterTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="ID" InsertVisible="False" SortExpression="page_id">
                                    <EditItemTemplate>
                                        <asp:Label runat="server" Text='<%# Eval("page_id") %>' ID="Label1"></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label runat="server" Text='<%# Bind("page_id") %>' ID="Label1"></asp:Label>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        <asp:TextBox runat="server" Visible="false"  Width="100px" ID="txtCookies"></asp:TextBox>
                                    </FooterTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="App ID" SortExpression="App_id">
                                    <EditItemTemplate>
                                        <asp:TextBox runat="server" Visible="false" Text='<%# Bind("App_id") %>' ID="TextBox1"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label runat="server" Text='<%# Bind("App_id") %>' ID="Label3"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Page Name" SortExpression="Page_name">
                                    <EditItemTemplate>
                                        <asp:TextBox runat="server" Text='<%# Bind("Page_name") %>' ID="TextBox2"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label runat="server" Text='<%# Bind("Page_name") %>' ID="Label3s"></asp:Label>
                                    </ItemTemplate>
                                      <FooterTemplate>
                                        <asp:TextBox runat="server"  placeholder="page name" ID="txtPageName"></asp:TextBox>
                                    </FooterTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Page link" SortExpression="Page_link">
                                    <EditItemTemplate>
                                        <asp:TextBox runat="server" Text='<%# Bind("Page_link") %>' ID="TextBox3"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label runat="server" Text='<%# Bind("Page_link") %>' ID="Label4"></asp:Label>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        <asp:TextBox runat="server" placeholder="page link" ID="txtPageLink"></asp:TextBox>
                                    </FooterTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Sub Page" SortExpression="SubPage">
                                    <EditItemTemplate>
                                         <asp:DropDownList ID="ddl" SelectedValue='<%# Bind("SubPage") %>' runat="server">
                                              <asp:ListItem Value="true">True</asp:ListItem>
                                               <asp:ListItem Value="false">False</asp:ListItem>
                                          </asp:DropDownList>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label runat="server" Text='<%# Bind("SubPage") %>' ID="Label5"></asp:Label>
                                    </ItemTemplate>
                                      <FooterTemplate>
                                          <asp:DropDownList ID="ddlSubPage" runat="server">
                                              <asp:ListItem Value="true">True</asp:ListItem>
                                               <asp:ListItem Value="false">False</asp:ListItem>
                                          </asp:DropDownList>
                                    </FooterTemplate>
                                </asp:TemplateField>

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
                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:CMSTemplate %>' DeleteCommand="DELETE FROM [Development_Page] WHERE [page_id] = @page_id" InsertCommand="INSERT INTO [Development_Page] ([App_id], [Page_name], [Page_link], [SubPage],[testcode]) VALUES (@App_id, @Page_name, @Page_link, @SubPage, @testcode)" SelectCommand="SELECT * FROM [Development_Page] WHERE ([App_id] = @App_id)" UpdateCommand="UPDATE [Development_Page] SET [App_id] = @App_id, [Page_name] = @Page_name, [Page_link] = @Page_link, [SubPage] = @SubPage WHERE [page_id] = @page_id">
                            <DeleteParameters>
                                <asp:Parameter Name="page_id" Type="Int64"></asp:Parameter>
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="App_id" Type="Int64"></asp:Parameter>
                                <asp:Parameter Name="Page_name" Type="String"></asp:Parameter>
                                <asp:Parameter Name="Page_link" Type="String"></asp:Parameter>
                                <asp:Parameter Name="SubPage" Type="String"></asp:Parameter>
                                <asp:Parameter Name="testcode" Type="String"></asp:Parameter>
                            </InsertParameters>
                            <SelectParameters>
                                <asp:CookieParameter CookieName="_app_id" Name="App_id" Type="Int64"></asp:CookieParameter>
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="App_id" Type="Int64"></asp:Parameter>
                                <asp:Parameter Name="Page_name" Type="String"></asp:Parameter>
                                <asp:Parameter Name="Page_link" Type="String"></asp:Parameter>
                                <asp:Parameter Name="SubPage" Type="String"></asp:Parameter>
                                <asp:Parameter Name="page_id" Type="Int64"></asp:Parameter>
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </div>

				<div class="col-md-12">
                    <asp:GridView ID="GridView2" ShowFooter="true" Width="100%" runat="server" AutoGenerateColumns="False" DataKeyNames="subpage_id" DataSourceID="SqlDataSource2" CellPadding="3" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2" AllowPaging="True" AllowSorting="True">
                        <Columns>
                            <asp:TemplateField ShowHeader="False">
                                <EditItemTemplate>
                                    <asp:LinkButton runat="server" CommandName="Update" CausesValidation="True" ID="LinkButton1"><i data-feather="check-circle"></i></asp:LinkButton>&nbsp;<asp:LinkButton runat="server" CommandName="Cancel" CausesValidation="False" ID="LinkButton2"><i data-feather="x-circle"></i></asp:LinkButton>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton runat="server" CommandName="Edit" CausesValidation="False" ID="LinkButton1"><%# Eval("Page_name").ToString()=="Default"?"":"<i data-feather='edit'></i>" %></asp:LinkButton>&nbsp;<asp:LinkButton runat="server" CommandName="Delete" CausesValidation="False" ID="LinkButton2"><%# Eval("Page_name").ToString()=="Default"?"":"<i data-feather='trash'></i>" %></asp:LinkButton>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:Button ID="Button2" OnClick="Button2_Click" runat="server" Text="ADD Sub Page" />
                                </FooterTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="#" InsertVisible="False" SortExpression="subpage_id">
                                <EditItemTemplate>
                                    <asp:Label runat="server" Text='<%# Eval("subpage_id") %>' ID="Label1"></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label runat="server" Text='<%# Bind("subpage_id") %>' ID="Label1"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="ID" SortExpression="App_id">
                                <EditItemTemplate>
                                    <asp:Label runat="server" Text='<%# Bind("App_id") %>' ID="Label5"></asp:Label>
                                    <asp:TextBox Visible="false" runat="server" Text='<%# Bind("App_id") %>' ID="TextBox4"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label runat="server" Text='<%# Bind("App_id") %>' ID="Label5"></asp:Label>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox Visible="false" ID="txtsubCookies" runat="server"></asp:TextBox>
                                </FooterTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Page ID" SortExpression="page_id">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="DropDownList23" SelectedValue='<%# Bind("page_id") %>' runat="server" DataSourceID="SqlDataSource4" DataTextField="Page_name" DataValueField="page_id"></asp:DropDownList>
                                    <asp:SqlDataSource runat="server" ID="SqlDataSource4" ConnectionString='<%$ ConnectionStrings:CMSTemplate %>' SelectCommand="SELECT * FROM [Development_Page] WHERE ([App_id] = @App_id)">
                                        <SelectParameters>
                                            <asp:CookieParameter CookieName="_app_id" Name="App_id" Type="Int64"></asp:CookieParameter>
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:DropDownList ID="DropDownList212" Enabled="false" ForeColor="Black" runat="server" SelectedValue='<%# Bind("page_id") %>' DataSourceID="SqlDataSource5" DataTextField="Page_name" DataValueField="page_id"></asp:DropDownList>
                                    <asp:SqlDataSource runat="server" ID="SqlDataSource5" ConnectionString='<%$ ConnectionStrings:CMSTemplate %>' SelectCommand="SELECT * FROM [Development_Page] WHERE ([App_id] = @App_id)">
                                        <SelectParameters>
                                            <asp:CookieParameter CookieName="_app_id" Name="App_id" Type="Int64"></asp:CookieParameter>
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </ItemTemplate>
                                  <FooterTemplate>
                                      <asp:DropDownList ID="ddlpageid" runat="server" ForeColor="Black"  DataSourceID="SqlDataSource3" DataTextField="Page_Name" DataValueField="page_id"></asp:DropDownList>
                                      <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:CMSTemplate %>' SelectCommand="SELECT * FROM [Development_Page] WHERE ([App_id] = @App_id)">
                                          <SelectParameters>
                                              <asp:CookieParameter CookieName="_app_id" Name="App_id" Type="Int64"></asp:CookieParameter>
                                          </SelectParameters>
                                      </asp:SqlDataSource>
                                  </FooterTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Page Name" SortExpression="Page_Name">
                                <EditItemTemplate>
                                    <asp:TextBox runat="server" Text='<%# Bind("Page_Name") %>' ID="TextBox2"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label runat="server" Text='<%# Bind("Page_Name") %>' ID="Label3"></asp:Label>
                                </ItemTemplate>
                                  <FooterTemplate>
                                    <asp:TextBox ID="txtPageName" placeholder="page name" runat="server"></asp:TextBox>
                                </FooterTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Page Link" SortExpression="Page_Link">
                                <EditItemTemplate>
                                    <asp:TextBox runat="server" Text='<%# Bind("Page_Link") %>' ID="TextBox3"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label runat="server" Text='<%# Bind("Page_Link") %>' ID="Label4"></asp:Label>
                                </ItemTemplate>
                                  <FooterTemplate>
                                    <asp:TextBox ID="txtLink" placeholder="page link" runat="server"></asp:TextBox>
                                </FooterTemplate>
                            </asp:TemplateField>
                            

                        </Columns>

                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510"></FooterStyle>

                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White"></HeaderStyle>

                        <PagerStyle HorizontalAlign="Center" ForeColor="#8C4510"></PagerStyle>

                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510"></RowStyle>

                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

                        <SortedAscendingCellStyle BackColor="#FFF1D4"></SortedAscendingCellStyle>

                        <SortedAscendingHeaderStyle BackColor="#B95C30"></SortedAscendingHeaderStyle>

                        <SortedDescendingCellStyle BackColor="#F1E5CE"></SortedDescendingCellStyle>

                        <SortedDescendingHeaderStyle BackColor="#93451F"></SortedDescendingHeaderStyle>
                    </asp:GridView>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:CMSTemplate %>' DeleteCommand="DELETE FROM [Development_SubPage] WHERE [subpage_id] = @subpage_id" InsertCommand="INSERT INTO [Development_SubPage] ([page_id], [Page_Name], [Page_Link], [App_id]) VALUES (@page_id, @Page_Name, @Page_Link, @App_id)" SelectCommand="SELECT * FROM [Development_SubPage] WHERE ([App_id] = @App_id)" UpdateCommand="UPDATE [Development_SubPage] SET [page_id] = @page_id, [Page_Name] = @Page_Name, [Page_Link] = @Page_Link, [App_id] = @App_id WHERE [subpage_id] = @subpage_id">
                        <DeleteParameters>
                            <asp:Parameter Name="subpage_id" Type="Int64"></asp:Parameter>
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="page_id" Type="Int64"></asp:Parameter>
                            <asp:Parameter Name="Page_Name" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Page_Link" Type="String"></asp:Parameter>
                            <asp:Parameter Name="App_id" Type="Int64"></asp:Parameter>
                        </InsertParameters>
                        <SelectParameters>
                            <asp:CookieParameter CookieName="_app_id" Name="App_id" Type="Int64"></asp:CookieParameter>
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="page_id" Type="Int64"></asp:Parameter>
                            <asp:Parameter Name="Page_Name" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Page_Link" Type="String"></asp:Parameter>
                            <asp:Parameter Name="App_id" Type="Int64"></asp:Parameter>
                            <asp:Parameter Name="subpage_id" Type="Int64"></asp:Parameter>
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>

				</div>
			</div>




        </div>


      
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
