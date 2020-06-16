<%@ Page Language="C#" AutoEventWireup="true" ValidateRequest="false" CodeBehind="ADDMCQ.aspx.cs" Inherits="B_ERP_CMS.ADDMCQ" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add MCQ</title>
    <style>
        .Header{
            color:#0094ff;         
            padding-left:30px;
        }
        .choices{
            font-weight:bold;
        }
        .For-MCQ{
            width:70%;
            float:left;
            border-right:1px solid #000000;
        }
        .For-Subject
        {
            width:29%;
            float:right;
            border-left:1px solid #000000;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width:20%;
            text-align: right;
            height:50px;
            font-size:30px;
        }
        .auto-style3 {
            width:79%;
            text-align: left;
            height:50px;
        }
        .txtCss{

        }
        .btnClear
        {
            margin-left:20px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>

                    <div class="For-MCQ">

                        <h1 class="Header">ADD MCQ</h1>

                        <asp:RadioButton ID="RBMCQ1" AutoPostBack="true" OnCheckedChanged="RBMCQ1_CheckedChanged" Checked="true" CssClass="choices" Text="Single MCQ (SMCQ)" GroupName="mcq" runat="server" />
                        <asp:RadioButton ID="RBMCQ2" AutoPostBack="true" OnCheckedChanged="RBMCQ2_CheckedChanged" CssClass="choices" Text="Multiple Choice MCQ (MCMSQ)" GroupName="mcq" runat="server" />
                        <asp:RadioButton ID="RBMCQ3" AutoPostBack="true" OnCheckedChanged="RBMCQ3_CheckedChanged" CssClass="choices" Text="Sub Choice MCQ (SCMCQ)" GroupName="mcq" runat="server" />
                        <hr />
                        
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style2">Qustion:</td>
                                <td class="auto-style3">
                                    <asp:TextBox ID="txtQuestion" CssClass="txtCss" Width="99%" Height="30px" runat="server" Font-Size="Medium"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">Answer 1:</td>
                                <td class="auto-style3">
                                    <asp:TextBox ID="txtAnswer1" CssClass="txtCss" runat="server" Font-Size="Medium" Height="30px" Width="99%"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">Answer 2:</td>
                                <td class="auto-style3">
                                    <asp:TextBox ID="txtAnswer2" CssClass="txtCss" runat="server" Font-Size="Medium" Height="30px" Width="99%"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">Answer 3:</td>
                                <td class="auto-style3">
                                    <asp:TextBox ID="txtAnswer3" runat="server" Font-Size="Medium" Height="30px" Width="99%"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">Answer 4:</td>
                                <td class="auto-style3">
                                    <asp:TextBox ID="txtAnswer4" CssClass="txtCss" runat="server" Font-Size="Medium" Height="30px" Width="99%"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">Answer 5:</td>
                                <td class="auto-style3">
                                    <asp:TextBox ID="txtAnswer5" CssClass="txtCss" runat="server" Font-Size="Medium" Height="30px" Width="99%"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">Subject:</td>
                                <td class="auto-style3">
                                    <asp:DropDownList ID="ddlSubject" Width="50%" Height="30px" runat="server">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr id="SubAnswer1" runat="server">
                                <td class="auto-style2">Sub Answe 1:</td>
                                <td class="auto-style3">
                                    <asp:TextBox ID="txtSubAnswer1" CssClass="txtCss" runat="server" Font-Size="Medium" Height="30px" Width="99%"></asp:TextBox>
                                </td>
                            </tr>
                            <tr id="SubAnswer2" runat="server">
                                <td class="auto-style2">Sub Answe 2:</td>
                                <td class="auto-style3">
                                    <asp:TextBox ID="txtSubAnswer2" CssClass="txtCss" runat="server" Font-Size="Medium" Height="30px" Width="99%"></asp:TextBox>
                                </td>
                            </tr>
                            <tr id="SubAnswer3" runat="server">
                                <td class="auto-style2">Sub Answe 3:</td>
                                <td class="auto-style3">
                                    <asp:TextBox ID="txtSubAnswer3" CssClass="txtCss" runat="server" Font-Size="Medium" Height="30px" Width="99%"></asp:TextBox>
                                </td>
                            </tr>
                            <tr id="SubAnswer4" runat="server">
                                <td class="auto-style2">Sub Answe 4:</td>
                                <td class="auto-style3">
                                    <asp:TextBox ID="txtSubAnswer4" CssClass="txtCss" runat="server" Font-Size="Medium" Height="30px" Width="99%"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">Encryption:</td>
                                <td class="auto-style3">
                                    <div style="float:left; line-height:30px;"><asp:CheckBox ID="chkEncrypt" AutoPostBack="true" Text="Enable Encryption (Auto Key Generator)" runat="server" /></div>
                                    <div id="pnlEncrypt" runat="server" style="float:left;">
                                        <asp:TextBox ID="TextBox1" Enabled="false" Height="30px" Width="200px" runat="server" Font-Size="Medium"></asp:TextBox>
                                        <sub style="font-size: 20px;">(Key)</sub>
                                        <asp:TextBox ID="TextBox2" Height="30px" TextMode="Number" runat="server" Width="100px" Font-Size="Medium">100</asp:TextBox>
                                        <sub style="font-size: 20px;">(Derivation Iterations)</sub>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style3">
                                    <asp:Button ID="Button1" Width="100" Height="30" runat="server" Text="Save" />
                                    <asp:Button ID="Button2" Width="100" Height="30" CssClass="btnClear" runat="server" Text="Clear" />
                                </td>
                            </tr>
                        </table>

                    </div>

                    <div class="For-Subject">
                        <h1 class="Header">ADD Subject</h1>
                        <hr />
                        <asp:TextBox ID="txtSubject"  Height="30" Width="80%" runat="server"></asp:TextBox>
                        <asp:Button Height="30" ID="btnSubjectSave" OnClick="btnSubjectSave_Click" runat="server" Text="Save" />
                        <br />
                        <asp:GridView ID="GridViewSubject" Width="100%" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
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

                        <asp:Label ID="lblSubjectResult" Font-Bold="true" runat="server" ></asp:Label>
                    </div>

                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
