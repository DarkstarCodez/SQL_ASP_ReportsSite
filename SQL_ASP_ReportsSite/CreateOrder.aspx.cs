using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Windows;

public partial class CreateOrder : System.Web.UI.Page
{
    private decimal totalsale = (decimal)0.0;
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
        SqlDataSource2.Insert();
        //Response.Redirect("CreateOrder.aspx");
        string connStr = ConfigurationManager.ConnectionStrings["myConnectionAd"].ConnectionString;
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();

        SqlCommand cmd = new SqlCommand("Select_Orders_Staging", conn);
        cmd.CommandType = System.Data.CommandType.StoredProcedure;

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GrdTransaction_Staging.DataSource = dt;
        GrdTransaction_Staging.DataBind();

        if (conn != null && conn.State == System.Data.ConnectionState.Open)
        {
            conn.Close();
        }
    }
    
    protected void CompleteTransaction(object sender, EventArgs e)
    {
        if (ChekBoxCONFIRM.Checked == false)
        {
            //Alert Box Script Code
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Please Confirm Your Order is Correct by clicking the Check Box!');</script>");
        }
        else if (ChekBoxCONFIRM.Checked == true)
        {
            

            string connStr = ConfigurationManager.ConnectionStrings["myConnectionAd"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            SqlCommand cmd = new SqlCommand("Complete_Transaction", conn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GrdTransaction_Staging.DataSource = dt;
            GrdTransaction_Staging.DataBind();

            if (conn != null && conn.State == System.Data.ConnectionState.Open)
            {
                conn.Close();
            }

            //Alert Box Script Code
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Order Entry Complete!');</script>");

            //Clear Both Gridviews Create Data Refresh Function and call at PageLoad, Add to Cart, and  Comp0lete transaction
            // call function 
            Response.Redirect("CreateOrder.aspx");
        }
    }

   

    protected void Unnamed1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            totalsale += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "OrderTotal"));
        }
        else if(e.Row.RowType == DataControlRowType.Footer)
        {
            e.Row.Cells[3].Text = string.Format("{0:c}", totalsale );
        }
    }

    protected void BtnClearCart_Click(object sender, EventArgs e)
    {
        //Call Clear_Shopping_Cart PROCEDURE
        string connStr = ConfigurationManager.ConnectionStrings["myConnectionAd"].ConnectionString;
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();

        SqlCommand cmd = new SqlCommand("Clear_All_Cart_Staging", conn);
        cmd.CommandType = System.Data.CommandType.StoredProcedure;

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GrdTransaction_Staging.DataSource = dt;
        GrdTransaction_Staging.DataBind();

        if (conn != null && conn.State == System.Data.ConnectionState.Open)
        {
            conn.Close();
        }

        //Call Refresg Gridviews Methods for both Gridviews
        // RefreshGridviewData();
        Response.Redirect("CreateOrder.aspx");
    }






}