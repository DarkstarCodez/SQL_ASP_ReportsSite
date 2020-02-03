<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="UpdateAddDeleteCustomers_Dim.aspx.cs" Inherits="UpdateAddDeleteOrders_Fact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <div id="d1" class="padding:0 16px;" style="height: 650px; ">
        <h3>Welcome to the Update Add Delete item page!
            <asp:Label ID="LabUserName" runat="server" Style="color: red;"></asp:Label></h3>
        <br />
        


        <h1>Insert, Update, Delete, Items</h1>
        <p>Customers_Dim TABLE <h4 style="color:red;">WARNING DO NOT EDIT SECURE COLUMNS ASK THE ADMIN</h4> </p>
        <hr />
        <asp:GridView runat="server" AutoGenerateColumns="False" DataKeyNames="CustID" DataSourceID="SqlDataSource1" EmptyDataText="No Records Found!"
            DataKeyName="CustID" ShowHeaderWhenEmpty="True">
            <Columns>
                <asp:BoundField DataField="CustID" HeaderText="CustID" ReadOnly="True" SortExpression="CustID" />
                <asp:BoundField DataField="CustIllness" HeaderText="CustIllness" SortExpression="CustIllness" />
                <asp:BoundField DataField="CustWants" HeaderText="CustWants" SortExpression="CustWants" />
                <asp:BoundField DataField="CustFavs" HeaderText="CustFavs" SortExpression="CustFavs" />
                 <asp:BoundField DataField="RefferalCode" HeaderText="RefferalCode" SortExpression="RefferalCode" />
                 <asp:BoundField DataField="Secure_NAME_PHONE" HeaderText="Secure_NAME_PHONE" SortExpression="Secure_NAME_PHONE" />
                 <asp:BoundField DataField="Secure_ADDRESS" HeaderText="Secure_ADDRESS" SortExpression="Secure_ADDRESS" />
                
            </Columns>
        </asp:GridView>
        CustIllness :
        <asp:TextBox ID="TxtCustIllness" runat="server"></asp:TextBox>
        Customer Wants :
        <asp:TextBox ID="TxtCustWants" runat="server"></asp:TextBox>
        Customer Favorites :
        <asp:TextBox ID="TxtCustFavs" runat="server"></asp:TextBox>
        Refferal Code :
        <asp:TextBox ID="TxtRefferalCode" runat="server"></asp:TextBox><br />
        SECURE Customer Full Name & Phone :
        <asp:TextBox ID="TxtSecure_NAME_PHONE" runat="server"></asp:TextBox>
        SECURE Cusstomer Address (Street Town State) :
        <asp:TextBox ID="TxtSecure_ADDRESS" runat="server"></asp:TextBox><asp:Button ID="ButInsert" runat="server" Text="Add Records" OnClick="InsertRecord"></asp:Button>
        <h6 style=""color:red;">FIX InsertCommand in SqlDataSource1</h6>
        <br />
        <br />
        <br />
        <!-- FIX InsertCommand needs to be Insert INTO TABLE.... Or make the store procedure work???-->
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"  ConnectionString="<%$ ConnectionStrings:TheGreatBigGreenConnectionString %>" SelectCommand="SELECT * FROM [dbo].[Customers_Dim]"
            InsertCommand ="EXEC Encrypt_InsertInto_Customer_Dim CustIllness, CustWants=@CustWants, CustFavs=@CustFavs, 
            RefferalCode=@RefferalCode, Secure_NAME_PHONE=@Secure_NAME_PHONE, Secure_ADDRESS=@Secure_ADDRESS"
            UpdateCommand="Update [dbo].[Customers_Dim] set CustIllness=@CustIllness, CustWants=@CustWants, CustFavs=@CustFavs, 
            RefferalCode=@RefferalCode where CustID=@CustID"
            DeleteCommand="Delete from [dbo].[Customers_Dim] where CustID=@CustID" >
            <DeleteParameters>
                <asp:Parameter Name="CustID" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="TxtCustIllness" Name="CustIllness" PropertyName="CustIllness" />
                <asp:ControlParameter ControlID="TxtCustWants" Name="CustWants" PropertyName="CustWants" />
                <asp:ControlParameter ControlID="TxtCustFavs" Name="CustFavs" PropertyName="CustFavs" />
                <asp:ControlParameter ControlID="TxtRefferalCode" Name="RefferalCode" PropertyName="RefferalCode" />
                <asp:ControlParameter ControlID="TxtSecure_NAME_PHONE" Name="Secure_NAME_PHONE" PropertyName="Secure_NAME_PHONE" />
                <asp:ControlParameter ControlID="TxtSecure_ADDRESS" Name="Secure_ADDRESS" PropertyName="Secure_ADDRESS" />
                
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CustIllness" />
                <asp:Parameter Name="CustWants" />
                <asp:Parameter Name="CustFavs" />
                <asp:Parameter Name="RefferalCode" />
                <asp:Parameter Name="Secure_NAME_PHONE" />
                <asp:Parameter Name="Secure_ADDRESS" />
                <asp:Parameter Name="CustID" />
            </UpdateParameters>
        </asp:SqlDataSource>
        FIX InsertCommand in SqlDataSource1

        
             
    </div>


</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="UnderBody" Runat="Server">
</asp:Content>

