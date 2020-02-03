<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="search1.aspx.cs" Inherits="search1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
     <h3>Welcome to the Search page! <asp:Label ID="LabUserName" runat="server" style="color:red;"></asp:Label></h3>

    <asp:Label ID="Label1" runat="server" Text="Label" >Choose a TABLE to SELECT</asp:Label>
    <br />

    <asp:Button ID="Btn_All_Click" runat="server" Text="SELECT All" OnClick="Btn_All_Click_Click" />
    
    <!--ALERT Msg -->
    <asp:Label ID="LblTable" runat="server" Text="" style="color:red;"></asp:Label>
    <br />
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem Text="Select Table" Value="0"></asp:ListItem>
        <asp:ListItem Text="Customers_Dim" Value="1"></asp:ListItem>
        <asp:ListItem Text="Products_Dim" Value="2"></asp:ListItem>
        <asp:ListItem Text="ProductsDetails" Value="3"></asp:ListItem>
        <asp:ListItem Text="Employees" Value="4"></asp:ListItem>
        <asp:ListItem Text="Orders_Fact" Value="5"></asp:ListItem>
    </asp:DropDownList>
    <br />
    <hr />
    <br />
    <!--TABLE NAME LABEL Make it Change name Dynamically??? -->
    <asp:Label ID="TableName" runat="server" Text="TABLE NAME"></asp:Label>
    <asp:GridView ID="GrdCustomers_Dim" runat="server" AutoGenerateColumns="false" Visible="true" Enabled="true" EmptyDataText="No Records Found!"
         ShowHeaderWhenEmpty="true">
            <Columns>
                <asp:BoundField DataField ="CustID" HeaderText="Cust ID"/>              
				<asp:BoundField DataField ="CustIllness" HeaderText="CustIllness"  />
				<asp:BoundField DataField ="CustWants" HeaderText="CustWants"  />
				<asp:BoundField DataField ="CustFavs" HeaderText="CustFavs"  />
				<asp:BoundField DataField ="RefferalCode" HeaderText="RefferalCode"  />
                <asp:BoundField DataField ="Secure_NAME_PHONE" HeaderText="Cust_Info_Secure"  />
                <asp:BoundField DataField ="Secure_ADDRESS" HeaderText="Secure_ADDRESS"  />
            </Columns>
        </asp:GridView>
           <!-- <asp:BoundField DataField ="Decrypted_Cust_Info" HeaderText="Decrypted_Cust_Info"  />  add line to admin page-->
           <!--  CREATE Gridview1a add "Decrypted" to NEW Header Names... In GridView1 add "Encrypted" to HeaderNames.. 
            if (Session["ID"] = "web_admin") {SHOW GridView1a DECRYPTED columns HIDE Gridview1} -->

 
    <asp:GridView ID="GrdProducts_Dim" runat="server" AutoGenerateColumns="false" Visible="false" Enabled="false" EmptyDataText="No Records Found!"
         ShowHeaderWhenEmpty="true">
            <Columns>
                <asp:BoundField DataField ="ProductID" HeaderText="Product ID"/>
                <asp:BoundField DataField ="Name" HeaderText="Name" />
                <asp:BoundField DataField ="Price" HeaderText="Price" />
                <asp:BoundField DataField ="InventoryAmount" HeaderText="Inventory Amount"  />
            </Columns>
        </asp:GridView>

    <asp:GridView ID="GrdProductsDetails" runat="server" AutoGenerateColumns="false" Visible="false" Enabled="false" EmptyDataText="No Records Found!"
         ShowHeaderWhenEmpty="true">
            <Columns>
                <asp:BoundField DataField ="ProductID" HeaderText="Product ID"/>
                <asp:BoundField DataField ="Name" HeaderText="Name" />
                <asp:BoundField DataField ="Description" HeaderText="Description" />
                <asp:BoundField DataField ="BaseCost" HeaderText="Base Cost"  />
                <asp:BoundField DataField ="PriceSold" HeaderText="Price Sold"  />
                <asp:BoundField DataField ="DetailsDate" HeaderText="Details Date"  />
                <asp:BoundField DataField ="CurrentFlag" HeaderText="Current Flag"  />
            </Columns>
        </asp:GridView>
        <asp:GridView ID="GrdEmployees" runat="server" AutoGenerateColumns="false" Visible="false" Enabled="false" EmptyDataText="No Records Found!"
             ShowHeaderWhenEmpty="true">
            <Columns>
                <asp:BoundField DataField ="EmployeeID" HeaderText="Employee ID"/>
                <asp:BoundField DataField ="Name" HeaderText="Name" />
                <asp:BoundField DataField ="Phone" HeaderText="Description" />
            </Columns>
        </asp:GridView>
            <asp:GridView ID="GrdOrders_Fact" runat="server" AutoGenerateColumns="false" Visible="false" Enabled="false" EmptyDataText="No Records Found!"
                 ShowHeaderWhenEmpty="true">
            <Columns>
                <asp:BoundField DataField ="OrderID" HeaderText="Order ID"/>
                <asp:BoundField DataField ="CustID" HeaderText="Cust ID" />
                <asp:BoundField DataField ="ProductID" HeaderText="Product ID" />
                <asp:BoundField DataField ="Qty" HeaderText="Qtyt"  />
                <asp:BoundField DataField ="OrderDate" HeaderText="Order Date"  />
                <asp:BoundField DataField ="Comments" HeaderText="Comment"  />
                <asp:BoundField DataField ="OrderTotal" HeaderText="Order Total"  />
                <asp:BoundField DataField ="Price" HeaderText="Price"  />
                
            </Columns>
        </asp:GridView>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="UnderBody" Runat="Server">
</asp:Content>

