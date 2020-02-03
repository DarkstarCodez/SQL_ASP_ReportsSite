<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="UpdateAddDeleteProds_Dim.aspx.cs" Inherits="UpdateAddDeleteProds_Dim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <div id="d1" class="padding:0 16px;" style="height: 477px; overflow: scroll;">
        <h3>Welcome to the Update Add Delete item page!
            <asp:Label ID="LabUserName" runat="server" Style="color: red;"></asp:Label></h3>
        <br />
        


        <h1>Insert, Update, Delete, Items</h1>
        <p>Products_Dim TABLE</p>
        <hr />
        <asp:GridView runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" EmptyDataText="No Records Found!"
            DataKeyName="ProductID" ShowHeaderWhenEmpty="True">
            <Columns>
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="InventoryAmount" HeaderText="InventoryAmount" SortExpression="InventoryAmount" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton="true"/>
            </Columns>
        </asp:GridView>
        Name :
        <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
        InventoryAmount :
        <asp:TextBox ID="TxtInventoryAmount" runat="server"></asp:TextBox>
        Price :
        <asp:TextBox ID="TxtPrice" runat="server"></asp:TextBox><asp:Button ID="ButInsert" runat="server" Text="Add Records" OnClick="InsertRecord"></asp:Button>
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TheGreatBigGreenConnectionString %>" SelectCommand="SELECT * FROM [dbo].[Products_Dim]"
            InsertCommand="INSERT INTO [dbo].[Products_Dim]
           ([Name]
           ,[InventoryAmount]
            ,[Price])
     VALUES
           (@Name, @InventoryAmount, @Price)"
            UpdateCommand="Update [dbo].[Products_Dim] set Name=@Name,InventoryAmount=@InventoryAmount, Price=@Price where ProductID=@ProductID"
            DeleteCommand="Delete from [dbo].[Products_Dim] where ProductID=@ProductID" >
            <DeleteParameters>
                <asp:Parameter Name="ProductID" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="TxtName" Name="Name" PropertyName="Text" />
                <asp:ControlParameter Name="InventoryAmount" />
                <asp:ControlParameter ControlID="TxtPrice" Name="Price" PropertyName="Text" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" />
                <asp:Parameter Name="InventoryAmount" />
                <asp:Parameter Name="Price" />
                <asp:Parameter Name="ProductID" />
            </UpdateParameters>
        </asp:SqlDataSource>
        

        
             
    </div>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="UnderBody" Runat="Server">
</asp:Content>

