<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="SearchAd.aspx.cs" Inherits="SearchAd" %>


<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
	 <div id="d1" class="padding:0 16px;" style="height: 477px">  
            <h3>Welcome to the ADMIN Search page! <asp:Label ID="LabUserName" runat="server" style="color:red;"></asp:Label></h3>
            <br/>
            Choose your table from Drop down box. <br/>
            
           <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem Text="Select Table" Value="0"></asp:ListItem>
               <asp:ListItem Text="Customers_Dim" Value="1"></asp:ListItem>
                <asp:ListItem Text="Products_Dim" Value="2"></asp:ListItem>
                <asp:ListItem Text="ProductsDetails" Value="3"></asp:ListItem>
                <asp:ListItem Text="Employees" Value="4"></asp:ListItem>
                <asp:ListItem Text="Orders_Fact" Value="5"></asp:ListItem>
            </asp:DropDownList> 
            <br/>
            <asp:Button ID="Btn_All" runat="server" OnClick="Btn_All_Click" Text="Select_All" />

            <!--ALERT Msg -->
            <asp:Label ID="LblTable" runat="server" Text="" style="color:red;"></asp:Label>
            <br/>
            <!--<asp:Button ID="Btn_ByID" runat="server" OnClick="Btn_ByID_Click" Text="Select_By_ID" />
            <input id="Text1" type="text" /> -->
			<br/>
             <hr /> <br/>
        <!-- Extra Columns for Decrypted Data "Decrypted_Cust_Info" -->
		<asp:GridView ID="GrdCustomers_Dim" runat="server" AutoGenerateColumns="false" Visible="true" Enabled="true" EmptyDataText="No Records Found!"
             ShowHeaderWhenEmpty="true">
            <Columns>
                <asp:BoundField DataField ="CustID" HeaderText="Cust ID"/>              
				<asp:BoundField DataField ="CustIllness" HeaderText="CustIllness"  />
				<asp:BoundField DataField ="CustWants" HeaderText="CustWants"  />
				<asp:BoundField DataField ="CustFavs" HeaderText="CustFavs"  />
				<asp:BoundField DataField ="RefferalCode" HeaderText="RefferalCode"  />
                <asp:BoundField DataField ="Secure_NAME_PHONE" HeaderText="Secure_NAME_PHONE"  />  
                <asp:BoundField DataField ="Secure_ADDRESS" HeaderText="Secure_ADDRESS"  />
                <asp:BoundField DataField ="Decrypted_NAME_PHONE" HeaderText="Decrypted_NAME_PHONE"  />
                <asp:BoundField DataField ="Decrypted_ADDRESS" HeaderText="Decrypted_ADDRESS"  />
            </Columns>
        </asp:GridView>
           

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
                <asp:BoundField DataField ="Qty" HeaderText="Qty"  />
                <asp:BoundField DataField ="OrderDate" HeaderText="Order Date"  />
                <asp:BoundField DataField ="Comments" HeaderText="Comments"  />
                <asp:BoundField DataField ="OrderTotal" HeaderText="Order Total"  />
                <asp:BoundField DataField ="Price" HeaderText="Price"  />
            </Columns>
        </asp:GridView>
   </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="UnderBody" Runat="Server">
</asp:Content>
