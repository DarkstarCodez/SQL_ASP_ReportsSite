<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="UpdateAddDeleteEmp.aspx.cs" Inherits="UpdateAddDeleteEmp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <div id="d1" class="padding:0 16px;" style="height: 477px">
        <h3>Welcome to the Update Add Delete item page!
            <asp:Label ID="LabUserName" runat="server" Style="color: red;"></asp:Label></h3>
        <br />
        


        <h1>Insert, Update, Delete, Items</h1>
        <p>Employees TABLE</p>
        <hr />
        <asp:GridView runat="server" AutoGenerateColumns="False" DataKeyNames="EmployeeID" DataSourceID="SqlDataSource1" EmptyDataText="No Records Found!"
            DataKeyName="EmployeeID" ShowHeaderWhenEmpty="true">
            <Columns>
                <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" ReadOnly="True" SortExpression="EmployeeID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton="true"/>
            </Columns>
        </asp:GridView>
        Name :
        <asp:TextBox ID="TxtName" runat="server"></asp:TextBox><br />
        Phone :
        <asp:TextBox ID="TxtPhone" runat="server"></asp:TextBox><br />
        <p>
            <asp:Button ID="ButInsert" runat="server" Text="Add Records" OnClick="InsertRecord"></asp:Button></p>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TheGreatBigGreenConnectionString %>" SelectCommand="SELECT * FROM [dbo].[Employees]"
            InsertCommand="INSERT INTO [dbo].[Employees]
           ([Name]
           ,[Phone])
     VALUES
           (@Name, @Phone)"
            UpdateCommand="Update [dbo].[Employees] set Name=@Name,Phone=@Phone where EmployeeID=@EmployeeID"
            DeleteCommand="Delete from [dbo].[Employees] where EmployeeID=@EmployeeID" >
            <DeleteParameters>
                <asp:Parameter Name="EmployeeID" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="TxtName" Name="Name" PropertyName="Text" />
                <asp:ControlParameter ControlID="TxtPhone" Name="Phone" PropertyName="Text" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" />
                <asp:Parameter Name="Phone" />
                <asp:Parameter Name="EmployeeID" />
            </UpdateParameters>
        </asp:SqlDataSource>
              
    </div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="UnderBody" Runat="Server">
</asp:Content>

