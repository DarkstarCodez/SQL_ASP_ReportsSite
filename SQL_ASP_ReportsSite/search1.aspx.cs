using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class search1 : System.Web.UI.Page
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

    protected void Btn_All_Click_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "0")
        {
            //add code to display Message to Label or Literal to "Choose Table from Dropdown List"
            //Change GridView Names to "GrdTableName"          
            LblTable.Text = "Please Choose a Table";
        }
        if (DropDownList1.SelectedValue == "1")
        {

            LblTable.Text = "Customers_Dim";
            TableName.Text = "Customers_Dim";
            GrdCustomers_Dim.Visible = true;
            GrdCustomers_Dim.Enabled = true;
            GrdProducts_Dim.Visible = false;
            GrdProducts_Dim.Enabled = false;
            GrdProductsDetails.Visible = false;
            GrdProductsDetails.Enabled = false;
            GrdEmployees.Visible = false;
            GrdEmployees.Enabled = false;
            GrdOrders_Fact.Visible = false;
            GrdOrders_Fact.Enabled = false;
            string connStr = ConfigurationManager.ConnectionStrings["myConnection"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            SqlCommand cmd = new SqlCommand("SelectAll_Customers_Dim", conn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GrdCustomers_Dim.DataSource = dt;
            GrdCustomers_Dim.DataBind();

            if (conn != null && conn.State == System.Data.ConnectionState.Open)
            {
                conn.Close();
            }
        }
        if (DropDownList1.SelectedValue == "2")
        {
            LblTable.Text = "Products_Dim";
            TableName.Text = "Products_Dim";
            GrdCustomers_Dim.Visible = false;
            GrdCustomers_Dim.Enabled = false;
            GrdProducts_Dim.Visible = true;
            GrdProducts_Dim.Enabled = true;
            GrdProductsDetails.Visible = false;
            GrdProductsDetails.Enabled = false;
            GrdEmployees.Visible = false;
            GrdEmployees.Enabled = false;
            GrdOrders_Fact.Visible = false;
            GrdOrders_Fact.Enabled = false;
            string connStr = ConfigurationManager.ConnectionStrings["myConnection"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            SqlCommand cmd = new SqlCommand("SelectAll_Products_Dim", conn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GrdProducts_Dim.DataSource = dt;
            GrdProducts_Dim.DataBind();

            if (conn != null && conn.State == System.Data.ConnectionState.Open)
            {
                conn.Close();
            }
        }
        if (DropDownList1.SelectedValue == "3")
        {
            LblTable.Text = "ProductsDetails";
            TableName.Text = "ProductsDetails";
            GrdCustomers_Dim.Visible = false;
            GrdCustomers_Dim.Enabled = false;
            GrdProducts_Dim.Visible = false;
            GrdProducts_Dim.Enabled = false;
            GrdProductsDetails.Visible = true;
            GrdProductsDetails.Enabled = true;
            GrdEmployees.Visible = false;
            GrdEmployees.Enabled = false;
            GrdOrders_Fact.Visible = false;
            GrdOrders_Fact.Enabled = false;
            string connStr = ConfigurationManager.ConnectionStrings["myConnection"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            SqlCommand cmd = new SqlCommand("SelectAll_ProductsDetails", conn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GrdProductsDetails.DataSource = dt;
            GrdProductsDetails.DataBind();

            if (conn != null && conn.State == System.Data.ConnectionState.Open)
            {
                conn.Close();
            }
        }
        if (DropDownList1.SelectedValue == "4")
        {
            LblTable.Text = "Employees";
            TableName.Text = "Employees";
            GrdCustomers_Dim.Visible = false;
            GrdCustomers_Dim.Enabled = false;
            GrdProducts_Dim.Visible = false;
            GrdProducts_Dim.Enabled = false;
            GrdProductsDetails.Visible = false;
            GrdProductsDetails.Enabled = false;
            GrdEmployees.Visible = true;
            GrdEmployees.Enabled = true;
            GrdOrders_Fact.Visible = false;
            GrdOrders_Fact.Enabled = false;
            string connStr = ConfigurationManager.ConnectionStrings["myConnection"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            SqlCommand cmd = new SqlCommand("SelectAll_Employees", conn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GrdEmployees.DataSource = dt;
            GrdEmployees.DataBind();

            if (conn != null && conn.State == System.Data.ConnectionState.Open)
            {
                conn.Close();
            }
        }
        if (DropDownList1.SelectedValue == "5")
        {
            LblTable.Text = "Orders_Fact";
            TableName.Text = "Orders_Fact";
            GrdCustomers_Dim.Visible = false;
            GrdCustomers_Dim.Enabled = false;
            GrdProducts_Dim.Visible = false;
            GrdProducts_Dim.Enabled = false;
            GrdProductsDetails.Visible = false;
            GrdProductsDetails.Enabled = false;
            GrdEmployees.Visible = false;
            GrdEmployees.Enabled = false;
            GrdOrders_Fact.Visible = true;
            GrdOrders_Fact.Enabled = true;
            string connStr = ConfigurationManager.ConnectionStrings["myConnection"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            SqlCommand cmd = new SqlCommand("SelectAll_Orders_Fact", conn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GrdOrders_Fact.DataSource = dt;
            GrdOrders_Fact.DataBind();

            if (conn != null && conn.State == System.Data.ConnectionState.Open)
            {
                conn.Close();
            }
        }
    }

}