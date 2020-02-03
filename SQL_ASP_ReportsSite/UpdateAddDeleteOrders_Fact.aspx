<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="UpdateAddDeleteOrders_Fact.aspx.cs" Inherits="UpdateAddDeleteOrders_Fact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <div id="d1" class="padding:0 16px;" style="height: 477px; ">
        <h3>Welcome to the Update Add Delete item page!
            <asp:Label ID="LabUserName" runat="server" Style="color: red;"></asp:Label></h3>
        <br />
        


        <h1>Insert, Update, Delete, Items</h1>
        <p>Orders_Fact TABLE <h4 style="color:red;">Warning do not Change Orders_Fact Table unless you know what your doing! Page UNDER CONSTRUCTION!</h4></p>
        <hr />
        <asp:GridView  runat="server" AutoGenerateColumns="False" DataKeyNames="OrderID" DataSourceID="SqlDataSource1" EmptyDataText="No Records Found!"
            DataKeyName="OrderID" ShowHeaderWhenEmpty="True">
            <Columns>
                <asp:BoundField DataField="OrderID" HeaderText="OrderID" ReadOnly="True" SortExpression="OrderID" />
                <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate" />
                <asp:BoundField DataField="CustID" HeaderText="CustID"  SortExpression="CustID" />
                <asp:BoundField DataField="Comments" HeaderText="Comments" SortExpression="Comments" />
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
                <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="OrderTotal" HeaderText="OrderTotal" SortExpression="OrderTotal" />                           
            </Columns>
        </asp:GridView>
        OrderDate :
        <asp:TextBox ID="TxtOrderDate" runat="server"></asp:TextBox>
        Customer ID :
        <asp:TextBox ID="TxtCustID" runat="server"></asp:TextBox>
        Comments :
        <asp:TextBox ID="TxtComments" runat="server"></asp:TextBox>
        Product ID :
        <asp:TextBox ID="TxtProductID" runat="server"></asp:TextBox>
        Quantity :
        <asp:TextBox ID="TxtQty" runat="server"></asp:TextBox>
        Price :
        <asp:TextBox ID="TxtPrice" runat="server"></asp:TextBox>
        OrderTotal :
        <asp:TextBox ID="TxtOrderTotal" runat="server"></asp:TextBox>
        <asp:Button ID="ButInsert" runat="server" Text="Add Records" OnClick="InsertRecord"></asp:Button>
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TheGreatBigGreenConnectionString %>" SelectCommand="SELECT * FROM [dbo].[Orders_Fact]"
            InsertCommand="INSERT INTO [dbo].[Orders_Fact]
           ([OrderDate]
        ,[CustID]
      ,[Comments]
      ,[ProductID]
      ,[Qty]
      ,[Price]
      ,[OrderTotal]
     VALUES
           (@OrderDate, @CustID, @Comments, @ProductID, @Qty, @Price, @OrderTotal)"
            UpdateCommand="Update [dbo].[Orders_Fact] set OrderDate=@OrderDate, CustID=@CustID, Comments=@Comments, ProductID=@ProductID, Qty=@Qty, Price=@Price, OrderTotal=@OrderTotal where OrderID=@OrderID AND ProductID=@ProductID"
            DeleteCommand="Delete from [dbo].[Orders_Fact] where OrderID=@OrderID AND ProductID=@ProductID" >
            <DeleteParameters>
                <asp:Parameter Name="OrderID" />
                <asp:Parameter Name="ProductID" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="TxtOrderDate" Name="OrderDate" PropertyName="Text" />
                <asp:ControlParameter ControlID="TxtCustID" Name="CustID" PropertyName="Text" />
                <asp:ControlParameter ControlID="TxtComments" Name="Comments" PropertyName="Text" />
                <asp:ControlParameter ControlID="TxtProductID" Name="ProductID" PropertyName="Text" />
                <asp:ControlParameter ControlID="TxtQty" Name="Qty" PropertyName="Text" />
                <asp:ControlParameter ControlID="TxtPrice" Name="Price" PropertyName="Text" />
                <asp:ControlParameter ControlID="TxtOrderTotal" Name="OrderTotal" PropertyName="Text" />
                <asp:Parameter Name="OrderID" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="OrderDate" />
                <asp:Parameter Name="CustID" />
                <asp:Parameter Name="Comments" />
                <asp:Parameter Name="ProductID" />
                <asp:Parameter Name="Qty" />
                <asp:Parameter Name="Price" />
                <asp:Parameter Name="OrderTotal" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
        
            <br />
        <br />
        <br /> 
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="UnderBody" Runat="Server">
</asp:Content>

