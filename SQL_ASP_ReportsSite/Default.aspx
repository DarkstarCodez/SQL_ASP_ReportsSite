<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <h3>Welcome to the Home page!
    <asp:Label ID="LabUserName" runat="server" Style="color: red;"></asp:Label></h3>
    <br />
    <br />
    <asp:LinkButton ID="ButLogout" runat="server" OnClick="ButLogout_Click">Logout</asp:LinkButton>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Admin_Search" style="color:red;" OnClick="Button1_Click" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="UnderBody" Runat="Server">
</asp:Content>

