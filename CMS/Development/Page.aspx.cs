using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ECMS;
using ECMS.Design;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

namespace B_ERP_CMS.CMS.Development
{
    public partial class Page : System.Web.UI.Page
    {
        Application application = new Application();
        ECMS.Design.Template template = new ECMS.Design.Template();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["_app_id"] != null)
            {
                Check_pv chk = new Check_pv();
                var App_ID = Request.Cookies["_app_id"].Value;
                //application.App_ID = App_ID;
                string Template_ID = application.AppID_to_TemplateID(App_ID);
                template.TemplateID = Template_ID;
                string query = "";
                if (Request.QueryString["Main"] != null)
                {
                    query = "?Main=" + Request.QueryString["Main"].ToString();
                    if(chk.int32Check("select count(*) from Developed_Page where Main=" + Request.QueryString["Main"].ToString()) == 1)
                    {
                        if(!IsPostBack)
                            txtPublish.Text = chk.stringCheck("select PageBody from Developed_Page where Main=" + Request.QueryString["Main"].ToString());
                    }
                }
                if (Request.QueryString["SubMain"] != null)
                {
                    query = "?SubMain=" + Request.QueryString["SubMain"].ToString();
                    if (chk.int32Check("select count(*) from Developed_Page where SubMain=" + Request.QueryString["SubMain"].ToString()) == 1)
                    {
                        if (!IsPostBack)
                            txtPublish.Text = chk.stringCheck("select PageBody from Developed_Page where SubMain=" + Request.QueryString["SubMain"].ToString());
                    }
                }
                string Full_url = Request.Url.ToString();
                string Main_url = Full_url.Replace(Request.Url.AbsolutePath,"");
                //Response.Write(Full_url);
                // Response.Write(Main_url);
                Main_url = Main_url.Replace(query, "");
                if (!IsPostBack)
                {
                    
                    List<Buttons> __BUTTON__ = template.ShowButtons();
                    List<Layout> __LAYOUT__ = template.ShowLayoutData();
                    List<DataTables> __DATATABLE__ = template.ShowDataTable();

                    List<Alert> __ALERT__ = template.ShowAlert();
                    List<TextBoxs> __TEXTBOX__ = template.ShowTextBoxs();
                    List<RadioButtons> __RADIOBUTTON__ = template.ShowRadioButtons();
                    List<CheckBoxs> __CHECKBOX__ = template.ShowCheckBoxs();
                    MainControl __MAINCONTROL__ = template.ShowData();
                    txtHeaderCssJs.Text = __MAINCONTROL__.CssJs.Replace("../..", Main_url);
                    
                    pnlShowButton.Controls.Clear();
                    pnlShowButton.Controls.Add(new LiteralControl(BUTTON(__BUTTON__)));

                    pnlShowLayout.Controls.Clear();
                    pnlShowLayout.Controls.Add(new LiteralControl(LAYOUT(__LAYOUT__)));


                    pnlShowDatatable.Controls.Clear();
                    pnlShowDatatable.Controls.Add(new LiteralControl(DATATABLE(__DATATABLE__)));

                    pnlShowAlert.Controls.Clear();
                    pnlShowAlert.Controls.Add(new LiteralControl(ALERT(__ALERT__)));

                    pnlshowTextbox.Controls.Clear();
                    pnlshowTextbox.Controls.Add(new LiteralControl(TEXTBOX(__TEXTBOX__)));

                    pnlShowRadioButton.Controls.Clear();
                    pnlShowRadioButton.Controls.Add(new LiteralControl(RADIOBUTTON(__RADIOBUTTON__)));

                    pnlShowCheckbox.Controls.Clear();
                    pnlShowCheckbox.Controls.Add(new LiteralControl(CHECKBOX(__CHECKBOX__)));
                }

            }
            else
            {
                Response.Redirect("~/CMS/Development/");
            }
        }

      

        public string LAYOUT(List<Layout> __LAYOUT__)
        {
            string show_layout = "";
            string Default_layout = "<button type='button' onclick=\"set('<div>Default Layout</div>');\" class='btn btn-success form-control mb-3 mt-3'> Default Layout </button>";
            show_layout += Default_layout;
            foreach (Layout layout in __LAYOUT__)
            {
                string layout_name = layout.LayoutName;
                string Main_Layout_Code = layout.HTML;
                Main_Layout_Code = Main_Layout_Code.Replace("\r\n", " ");
                Main_Layout_Code = Main_Layout_Code.Replace('"', '\'');
                Main_Layout_Code = Main_Layout_Code.Replace("'", "\\'");
                //<div class="row">< div class="col-md-6">{0}</div><div class="col-md-6">{1}</div></div>
                object[] parameter = new object[layout.TotalCode];
                for(int ii=0;ii<layout.TotalCode;ii++)
                {
                    parameter[ii] = "Layout-" + (ii+1);
                }
                string html = string.Format(@"" + Main_Layout_Code, parameter);
                show_layout += "<button type='button' class='btn btn-dark form-control mb-1' onclick=\"set('" + html + "')\"> " + layout_name + " </button>";
            }
            return show_layout;
        }

        public string DATATABLE (List<DataTables> __DATATABLE__)
        {
            string show_layout = "";
            string set_datatable = @"<div id='showtable' ><table>
<thead>
<tr>
<th>View 1</th>
<th>View 2</th>
</tr>
</thead>
<tbody>
<tr>
<td>Show 1</td>
<td>Show 1</td>
</tr>
<tr>
<td>Show 2</td>
<td>Show 2</td>
</tr>
<tr>
<td>Show 3</td>
<td>Show 3</td>
</tr>
</tbody>
</table></div> ";
            set_datatable = set_datatable.Replace("\r\n", " ");
            set_datatable = set_datatable.Replace('"', '\'');
            set_datatable = set_datatable.Replace("'", "\\'");
            string Default_layout = "<button type='button' onclick=\"set('"+set_datatable+"','datatable',' ');\" class='btn btn-success form-control mb-3 mt-3'> Default Datatable </button>";
            show_layout += Default_layout;
            foreach (DataTables dataTable in __DATATABLE__)
            {
               
                //string html = string.Format(@"" + set_datatable);
                //show_layout += "<button type='button' class='btn btn-dark form-control mb-1' onclick=\"set('" + html + "','datatable',' ')\"> " + dataTable.DataTableName + " </button>";
            }
            return show_layout;
        }


        public string BUTTON(List<Buttons> __BUTTON__)
        {
            string Code_Name = "{#N#}";
            string show_button = "";
            string Default_button = "<button type='button' onclick=\"set('<button type=\\'button\\' id=\\'{##}\\'>" + Code_Name+ "</button>','button','Default Button');\" class='btn btn-success form-control mb-3 mt-3'> Default Button </button>";
            show_button += Default_button;
            foreach (Buttons button in __BUTTON__)
            {
                string button_name = button.ButtonName;
                string MainButtonCode = button.HtmlCode;//<button type="button" class="btn btn-secondary" {1} >{0}</button>
                MainButtonCode = MainButtonCode.Replace("\r\n", " ");
                MainButtonCode = MainButtonCode.Replace('"', '\'');
                MainButtonCode = MainButtonCode.Replace("'", "\\'");
                //------------section {1} change configure and {0} to change name
                string onClick = "type=\\'button\\' id=\\'{##}\\'";
                MainButtonCode = string.Format(@"" + MainButtonCode, Code_Name, onClick);
                //MainButtonCode = "<button type=\\'button\\' class=\\'btn btn-secondary\\' >Success</button>";
                show_button += "<button type='button' class='btn btn-dark form-control mb-1' onclick=\"set('" + MainButtonCode + "','button','"+ button.ButtonName + "')\"> " + button_name + " </button>";
            }
            return show_button;

        }

        public string ALERT (List<Alert> __ALERT__)
        {
            string show_alert= "";
            string Default_layout = "<button type='button' onclick=\"set('<div id=\\'{##}\\'>{#N#}</div>','alert','{#message}');\" class='btn btn-success form-control mb-3 mt-3'> Default Label|Alert </button>";
            show_alert += Default_layout;
            foreach (Alert alert in __ALERT__)
            {
                string name = alert.AlertName;
                string Main_Layout_Code = alert.HtmlCode;
                Main_Layout_Code = Main_Layout_Code.Replace("\r\n", " ");
                Main_Layout_Code = Main_Layout_Code.Replace('"', '\'');
                Main_Layout_Code = Main_Layout_Code.Replace("'", "\\'");
                //<div class="row">< div class="col-md-6">{0}</div><div class="col-md-6">{1}</div></div>
                
                string html = string.Format(@"" + Main_Layout_Code, "{#N#}","id=\\'{##}\\'");
                show_alert += "<button type='button' class='btn btn-dark form-control mb-1' onclick=\"set('" + html + "','alert','{#message}')\"> " + name + " </button>";
            }
            return show_alert;
        }

        public string TEXTBOX(List<TextBoxs> __TEXTBOX__)
        {
            string Code_Name = "{#N#}";
            string show_alert = "";
            string Default_layout = "<button type='button' onclick=\"set('<input id=\\'{##}\\' type=\\'text\\' placeholder=\\'"+Code_Name+ "\\'  />','textbox','Default Textbox');\" class='btn btn-success form-control mb-3 mt-3'> Default TextBox </button>";
            show_alert += Default_layout;
            foreach (TextBoxs textbox in __TEXTBOX__)
            {
                string name = textbox.TextBoxName;
                string Main_Layout_Code = textbox.HtmlCode;
                Main_Layout_Code = Main_Layout_Code.Replace("\r\n", " ");
                Main_Layout_Code = Main_Layout_Code.Replace('"', '\'');
                Main_Layout_Code = Main_Layout_Code.Replace("'", "\\'");
                //<div class="row">< div class="col-md-6">{0}</div><div class="col-md-6">{1}</div></div>

                string html = string.Format(@"" + Main_Layout_Code, Code_Name, "{##}", "{##}");
                show_alert += "<button type='button' class='btn btn-dark form-control mb-1' onclick=\"set('" + html + "','textbox','"+ textbox.PlaceHolder + "')\"> " + name + " </button>";
            }
            return show_alert;
        }

        public string RADIOBUTTON (List<RadioButtons> __RADIOBUTTON__)
        {
            string Code_Name = "{#N#}";
            string show_alert = "";
            string Default_layout = "<button type='button' onclick=\"set('<input id=\\'{##}\\' name=\\'default\\' type=\\'radio\\' />"+Code_Name+ "','radiobutton','Default RadioButton');\" class='btn btn-success form-control mb-3 mt-3'> Default RadioButton </button>";
            show_alert += Default_layout;
            foreach (RadioButtons radioButtons in __RADIOBUTTON__)
            {
                string name = radioButtons.RadioButtonName;
                string Main_Layout_Code = radioButtons.HtmlCode;
                Main_Layout_Code = Main_Layout_Code.Replace("\r\n", " ");
                Main_Layout_Code = Main_Layout_Code.Replace('"', '\'');
                Main_Layout_Code = Main_Layout_Code.Replace("'", "\\'");
                //<div class="row">< div class="col-md-6">{0}</div><div class="col-md-6">{1}</div></div>

                string html = string.Format(@"" + Main_Layout_Code, radioButtons.GroupName,Code_Name, "{##}", radioButtons.Checked);
                show_alert += "<button type='button' class='btn btn-dark form-control mb-1' onclick=\"set('" + html + "','radiobutton','"+ radioButtons.Text + "')\"> " + name + " </button>";
            }
            return show_alert;

        }

        public string CHECKBOX (List<CheckBoxs> __CHECKBOX__)
        {
            string Code_Name = "{#N#}";
            string show_alert = "";
            string Default_layout = "<button type='button' onclick=\"set('<input id=\\'{##}\\' type=\\'checkbox\\' />"+Code_Name+ "','checkbox','Default CheckBox');\" class='btn btn-success form-control mb-3 mt-3'> Default CheckBox </button>";
            show_alert += Default_layout;
            foreach (CheckBoxs checkBoxs in __CHECKBOX__)
            {
                string name = checkBoxs.Text;
                string Main_Layout_Code = checkBoxs.HtmlCode;
                Main_Layout_Code = Main_Layout_Code.Replace("\r\n", " ");
                Main_Layout_Code = Main_Layout_Code.Replace('"', '\'');
                Main_Layout_Code = Main_Layout_Code.Replace("'", "\\'");
                //<div class="row">< div class="col-md-6">{0}</div><div class="col-md-6">{1}</div></div>

                string html = string.Format(@"" + Main_Layout_Code, Code_Name, checkBoxs.Checked, "id=\\'{##}\\'", "");
                show_alert += "<button type='button' class='btn btn-dark form-control mb-1' onclick=\"set('" + html + "','checkbox','"+ checkBoxs.CheckBoxName + "')\"> " + name + " </button>";
            }
            return show_alert;
        }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CMSTemplate"].ConnectionString);
        protected void btnPublish_Click(object sender, EventArgs e)
        {
            var App_ID = Request.Cookies["_app_id"].Value;
            var RegID = application.AppID_to_RegID(App_ID);
            string Main = "0";
            string SubMain = "0";
            Check_pv chk = new Check_pv();
            string Code = txtPublish.Text;
            //Code = onclickChangeCode(Code);
            if (Request.QueryString["SubMain"]!=null)
            {
                SubMain = Request.QueryString["SubMain"].ToString();
                if (chk.int32Check("select count(*) from Developed_Page where SubMain="+SubMain)==1)
                {
                    //chk.Execute("update Developed_Page set PageBody='"+ Code + "' where SubMain="+SubMain);
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = con;
                    cmd.CommandText = "update Developed_Page set PageBody=@PageBody where SubMain=" + SubMain;
                    cmd.Parameters.AddWithValue("@PageBody",Code);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    lblResult_.Text = "<p class='card-title alert alert-success text-center'><b>Development Published</b></p>   ";
                }
                else
                {
                    //chk.Execute("insert into Developed_Page (Main,SubMain,RegID,App_ID,PageBody) values(" + Main + "," + SubMain + "," + RegID + "," + App_ID + ",'" + Code + "')");
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = con;
                    cmd.CommandText = "insert into Developed_Page (Main,SubMain,RegID,App_ID,PageBody) values(@Main,@SubMain,@RegID,@App_ID,@PageBody)";
                    cmd.Parameters.AddWithValue("@Main", Main);
                    cmd.Parameters.AddWithValue("@SubMain", SubMain);
                    cmd.Parameters.AddWithValue("@RegID", RegID);
                    cmd.Parameters.AddWithValue("@App_ID", App_ID);
                    cmd.Parameters.AddWithValue("@PageBody", Code);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    lblResult_.Text = "<p class='card-title alert alert-success text-center'><b>Development Published</b></p>   ";
                }
            }
            if (Request.QueryString["Main"] != null)
            {
                Main = Request.QueryString["Main"].ToString();
                if (chk.int32Check("select count(*) from Developed_Page where Main=" + Main) == 1)
                {
                    //chk.Execute("update Developed_Page set PageBody='" + Code + "' where Main=" + Main);
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = con;
                    cmd.CommandText = "update Developed_Page set PageBody=@PageBody where Main=" + Main;
                    cmd.Parameters.AddWithValue("@PageBody", Code);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    lblResult_.Text = "<p class='card-title alert alert-success text-center'><b>Development Published</b></p>   ";
                }
                else
                {
                    //chk.Execute("insert into Developed_Page (Main,SubMain,RegID,App_ID,PageBody) values(" + Main + "," + SubMain + "," + RegID + "," + App_ID + ",'" + Code + "')");
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = con;
                    cmd.CommandText = "insert into Developed_Page (Main,SubMain,RegID,App_ID,PageBody) values(@Main,@SubMain,@RegID,@App_ID,@PageBody)";
                    cmd.Parameters.AddWithValue("@Main", Main);
                    cmd.Parameters.AddWithValue("@SubMain", SubMain);
                    cmd.Parameters.AddWithValue("@RegID", RegID);
                    cmd.Parameters.AddWithValue("@App_ID", App_ID);
                    cmd.Parameters.AddWithValue("@PageBody", Code);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    lblResult_.Text = "<p class='card-title alert alert-success text-center'><b>Development Published</b></p>   ";
                }
            }


        }

        private static string onclickChangeCode(string code)
        {
            int length = code.Length;
            string re_code = "";
            for (int i = 0; i < length; i++)
            {
                if ((i + 9) < length &&
                    code[i] == 'o' &&
                    code[i + 1] == 'n' &&
                    code[i + 2] == 'c' &&
                    code[i + 3] == 'l' &&
                    code[i + 4] == 'i' &&
                    code[i + 5] == 'c' &&
                    code[i + 6] == 'k' &&
                    code[i + 7] == '='
                    )
                {
                    re_code += "onclick=\"";
                    for (int ii = i + 9; ii < length; ii++)
                    {
                        if (code[ii] == ')')
                        {
                            i = ii - 1;
                            break;
                        }
                        else
                        {
                            if (code[ii] == '"')
                                re_code += "'";
                            else
                                re_code += code[ii];
                        }
                    }

                }
                else
                {
                    re_code += code[i];
                }
            }

            return re_code;
        }


    }
}