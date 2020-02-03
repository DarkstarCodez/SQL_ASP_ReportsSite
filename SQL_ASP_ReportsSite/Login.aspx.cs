using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ButLogin_Click(object sender, EventArgs e)
    {
        string mainConn = ConfigurationManager.ConnectionStrings["myConnection"].ConnectionString;
        SqlConnection sqlconn = new SqlConnection(mainConn);
        SqlCommand sqlcomm = new SqlCommand("SELECT * FROM [dbo].[WebAccounts] WHERE UserName=@UserName AND Password=@Password", sqlconn);
        sqlcomm.Parameters.AddWithValue("UserName", TxtUsername.Text);
        sqlcomm.Parameters.AddWithValue("Password", TxtPwd.Text);
        SqlDataAdapter sda = new SqlDataAdapter(sqlcomm);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        sqlconn.Open();
        sqlcomm.ExecuteNonQuery();
        sqlconn.Close();
        if(dt.Rows.Count > 0)
        {
            Session["id"] = TxtUsername.Text;

            Response.Redirect("Default.aspx");

            //May need to keep Session ID Open to confirm who Logged In to know whether to DeCrypt Data???
           // Session.RemoveAll();
        }
        else
        {
            LblMsg.Text = "Username & Password are wrong!";
        }

    }
}