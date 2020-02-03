using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToString(Session["id"]) == "web_user")
        {
            Button1.Visible=false;
        }
        if (Convert.ToString(Session["id"]) == "web_admin")
        {
            Button1.Visible = true;
        }
        if (Session["id"] != null)
        {
            LabUserName.Text = Session["id"].ToString();
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Convert.ToString(Session["id"]) == "web_user")
        {
            Response.Redirect("Search.aspx");
        }
        if (Convert.ToString(Session["id"]) == "web_admin")
        {
            Response.Redirect("SearchAd.aspx");
        }
    }
    protected void ButLogout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Session.Abandon();
        Response.Redirect("Login.aspx");
    }
}