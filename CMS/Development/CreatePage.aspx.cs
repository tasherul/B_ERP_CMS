using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace B_ERP_CMS.CMS.Development
{
    public partial class CreatePage : System.Web.UI.Page
    {
        ECMS.StringGenarator ran = new ECMS.StringGenarator();
        Check_pv __Chk = new Check_pv();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["_app_id"] != null)
            {
                string App_ID = Request.Cookies["_app_id"].Value;
                try
                {
                    ((TextBox)(GridView1.FooterRow.FindControl("txtCookies"))).Text = Request.Cookies["_app_id"].Value;
                    ((TextBox)(GridView2.FooterRow.FindControl("txtsubCookies"))).Text = Request.Cookies["_app_id"].Value;
                }
                catch
                {
                    ran.Number = true;
                    ran.Hexadecimal = true;
                    ran.TotalString = 10;
                    ran.DatabaseEntry = false;
                    string TestCode = ran.RandomStringNumber("TestCode");
                    SqlDataSource1.InsertParameters["App_id"].DefaultValue = App_ID;
                    SqlDataSource1.InsertParameters["Page_name"].DefaultValue = "Default";
                    SqlDataSource1.InsertParameters["Page_link"].DefaultValue = "{##}";
                    SqlDataSource1.InsertParameters["SubPage"].DefaultValue = "false";
                    SqlDataSource1.InsertParameters["testcode"].DefaultValue = TestCode;
                    SqlDataSource1.Insert();
                    GridView1.DataBind();
                    GridView2.DataBind();

                    string page_id = __Chk.stringCheck("select page_id from Development_Page where testcode='"+ TestCode + "' ");
                    SqlDataSource2.InsertParameters["App_id"].DefaultValue = App_ID;
                    SqlDataSource2.InsertParameters["Page_name"].DefaultValue = "Default";
                    SqlDataSource2.InsertParameters["Page_link"].DefaultValue = "{##}";
                    SqlDataSource2.InsertParameters["page_id"].DefaultValue = page_id;

                    SqlDataSource2.Insert();
                    GridView1.DataBind();
                    GridView2.DataBind();
                }
            }
            else
            {
                Response.Redirect("~/CMS/Development/");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["App_id"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtCookies")).Text;
            SqlDataSource1.InsertParameters["Page_name"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtPageName")).Text;
            SqlDataSource1.InsertParameters["Page_link"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtPageLink")).Text==""?"{##}": ((TextBox)GridView1.FooterRow.FindControl("txtPageLink")).Text;
            SqlDataSource1.InsertParameters["SubPage"].DefaultValue = ((DropDownList)GridView1.FooterRow.FindControl("ddlSubPage")).SelectedValue;

            SqlDataSource1.Insert();
            GridView1.DataBind();
            GridView2.DataBind();
            

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlDataSource2.InsertParameters["App_id"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("txtsubCookies")).Text;
            SqlDataSource2.InsertParameters["Page_name"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("txtPageName")).Text;
            SqlDataSource2.InsertParameters["Page_link"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("txtLink")).Text==""?"{##}": ((TextBox)GridView2.FooterRow.FindControl("txtLink")).Text;
            SqlDataSource2.InsertParameters["page_id"].DefaultValue = ((DropDownList)GridView2.FooterRow.FindControl("ddlpageid")).SelectedValue;

            SqlDataSource2.Insert();
            GridView1.DataBind();
            GridView2.DataBind();
        }
    }
}