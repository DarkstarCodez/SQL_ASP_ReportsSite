<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="CreateOrder.aspx.cs" Inherits="CreateOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
   <h3> Welcome to the Update Add Delete item page!
     <asp:Label ID="LabUserName" runat="server" Style="color: red;"></asp:Label></h3>
        <br />
    <br />
    <hr />

    <div >
<p>Shopping Cart</p>
        <hr />
        <asp:GridView ID="GrdOrders_Staging" DataKeyNames="ProductID" DataKeyName="ProductID" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" EmptyDataText="No Records Found!"
             ShowHeaderWhenEmpty="True" >
            <Columns>
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" SortExpression="ProductID" />
                <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="OrderTotal" HeaderText="OrderTotal" SortExpression="OrderTotal" />
                <asp:BoundField DataField="CustID" HeaderText="CustID" SortExpression="CustID" />
                <asp:BoundField DataField="Comments" HeaderText="Comments" SortExpression="Comments" />
                <asp:CommandField ButtonType="Link"  ShowDeleteButton="true"/>
            </Columns>
        </asp:GridView>
        ProductID :
        <asp:TextBox ID="TxtProductID" runat="server"></asp:TextBox>
        Qty :
        <asp:TextBox ID="TxtQty" runat="server"></asp:TextBox>
        CustID :
        <asp:TextBox ID="TxtCustID" runat="server"></asp:TextBox><asp:Button ID="ButInsert" runat="server" Text="Add Records" OnClick="InsertRecord"></asp:Button>
        <br />
        <br />
        <asp:Button ID="BtnClearCart" runat="server" Text="Clear Shopping Cart" OnClick="BtnClearCart_Click" />
        <br />
        <br />


        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TheGreatBigGreenConnectionString %>" SelectCommand="EXEC Select_Orders_Staging"
            InsertCommand="EXEC Multiply_ProductByPrice @ProductID, @Qty, @CustID"

            UpdateCommand="Update [dbo].[Orders_Staging] set Qty=@TxtQty, ProductID=@TxtProductID, CustID=@TxtCustID where ProductID=@TxtProductID"
            DeleteCommand="Delete from [dbo].[Orders_Staging] where ProductID=@ProductID"  >
            <DeleteParameters>
                <asp:Parameter Name="ProductID"  />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="TxtProductID" Name="ProductID"  Type="String" />
                <asp:ControlParameter ControlID="TxtQty" Name="Qty"  Type="String"/>
                <asp:ControlParameter ControlID="TxtCustID" Name="CustID" Type="String"/>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TxtQty" />
                <asp:Parameter Name="TxtProductID" />
                <asp:Parameter Name="TxtCustID" />       
            </UpdateParameters>
        </asp:SqlDataSource>

        <hr /><br/>
        <p style="color:red"><asp:CheckBox ID="ChekBoxCONFIRM" runat="server" Checked="false" Height="25px" ToolTip="Check me to Confim Order is Correct" Width="25px" BorderColor="Red" BorderStyle="Dashed" BackColor="Fuchsia" />   Confirm that your order Quantities and Amounts are correct before Completing Transaction?</p><br />
         

        <asp:Button ID="BtnCompleteTransaction" runat="server" Text="Complete Transaction" style="color:red;" OnClick="CompleteTransaction"/>
        <br />
        <br />
       
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:TheGreatBigGreenConnectionString %>" 
            SelectCommand="EXEC Complete_Transaction">
            
        </asp:SqlDataSource>
        <asp:GridView ID="GrdTransaction_Staging" runat="server" AutoGenerateColumns="False" EmptyDataText="No Records Found!"
             ShowHeaderWhenEmpty="True" OnRowDataBound="Unnamed1_RowDataBound" ShowFooter="true" FooterStyle-BackColor="Aqua" >
            <Columns>
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" SortExpression="ProductID" />
                <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="OrderTotal" HeaderText="OrderTotal" SortExpression="OrderTotal" />
                <asp:BoundField DataField="CustID" HeaderText="CustID" SortExpression="CustID" />
                
                <asp:BoundField DataField="Comments" HeaderText="Comments" SortExpression="Comments" />
                
            </Columns>
        </asp:GridView>
          
        

    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="UnderBody" Runat="Server">
</asp:Content>

