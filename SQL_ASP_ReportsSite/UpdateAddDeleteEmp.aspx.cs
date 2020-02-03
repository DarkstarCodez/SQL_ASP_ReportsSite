using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UpdateAddDeleteEmp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] != null)
        {
            LabUserName.Text = Session["id"].ToString();
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void InsertRecord(object sender, EventArgs e)
    {
        SqlDataSource1.Insert();
    }
}