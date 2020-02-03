<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="UpdateAddDeleteProdDetails.aspx.cs" Inherits="UpdateAddDeleteProdDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <div id="d1" class="padding:0 16px;" style="height: 600px; overflow: scroll;">
        <h3>Welcome to the Update Add Delete item page!
            <asp:Label ID="LabUserName" runat="server" Style="color: red;"></asp:Label></h3>
        <br />
        


        <h1>Insert, Update, Delete, Items</h1>
        <p>Product Details TABLE</p>
        <hr />
        <asp:GridView runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" EmptyDataText="No Records Found!"
            DataKeyName="ProductID" ShowHeaderWhenEmpty="True">
            <Columns>
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="BaseCost" HeaderText="BaseCost" SortExpression="BaseCost" />
                <asp:BoundField DataField="PriceSold" HeaderText="PriceSold" SortExpression="PriceSold" />
                <asp:BoundField DataField="DetailsDate" HeaderText="DetailsDate" SortExpression="DetailsDate" />
                <asp:BoundField DataField="CurrentFlag" HeaderText="CurrentFlag" SortExpression="CurrentFlag" />
                <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton="true"/>
            </Columns>
        </asp:GridView>
        Name :
        <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
        Description :
        <asp:TextBox ID="TxtDescription" runat="server"></asp:TextBox>
        Base Cost :
        <asp:TextBox ID="TxtBaseCost" runat="server"></asp:TextBox>
        Price Sold :
        <asp:TextBox ID="TxtPriceSold" runat="server"></asp:TextBox>       
        Details Date :
        <asp:TextBox ID="TxtDetailsDate" runat="server"></asp:TextBox>  
        CurrentFlag :
        <asp:TextBox ID="TxtCurrentFlag" runat="server"></asp:TextBox><asp:Button ID="ButInsert" runat="server" Text="Add Records" OnClick="InsertRecord"></asp:Button>    
        
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TheGreatBigGreenConnectionString %>" SelectCommand="SELECT * FROM [dbo].[ProductsDetails]"
            InsertCommand="INSERT INTO [dbo].[ProductsDetails]
           ([Name]
      ,[Description]
      ,[BaseCost]
      ,[PriceSold]
      ,[DetailsDate]
      ,[CurrentFlag])
     VALUES
           (@Name, @Description,@BaseCost,@PriceSold,@DetailsDate,@CurrentFlag)"
            UpdateCommand="Update [dbo].[ProductsDetails] set Name=@Name,Description=@Description,BaseCost=@BaseCost,PriceSold=@PriceSold,DetailsDate=@DetailsDate,CurrentFlag=@CurrentFlag where ProductID=@ProductID"
            DeleteCommand="Delete from [dbo].[ProductsDetails] where ProductID=@ProductID" >
            <DeleteParameters>
                <asp:Parameter Name="ProductID" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="TxtName" Name="Name" PropertyName="Text" />
                <asp:ControlParameter ControlID="TxtDescription" Name="Description" PropertyName="Text" />
                <asp:ControlParameter ControlID="TxtBaseCost" Name="BaseCost" PropertyName="Text" />
                <asp:ControlParameter ControlID="TxtPriceSold" Name="PriceSold" PropertyName="Text" />
                <asp:ControlParameter ControlID="TxtDetailsDate" Name="DetailsDate" PropertyName="Text" />
                <asp:ControlParameter ControlID="TxtCurrentFlag" Name="CurrentFlag" PropertyName="Text" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" />
                <asp:Parameter Name="Description" />
                <asp:Parameter Name="BaseCost" />
                <asp:Parameter Name="PriceSold" />
                <asp:Parameter Name="DetailsDate" />
                <asp:Parameter Name="CurrentFlag" />
                <asp:Parameter Name="ProductID" />
            </UpdateParameters>
        </asp:SqlDataSource>
        

        
             
    </div>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="UnderBody" Runat="Server">
</asp:Content>

