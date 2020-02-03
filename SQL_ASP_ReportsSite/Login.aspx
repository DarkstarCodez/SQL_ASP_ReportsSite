<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style.css" rel="stylesheet" />
</head>
<body>

    <form id="form1" runat="server">
        <div class="loginbox";>
                
                <img alt="" src="images/DB-icon-Transparent.png" class="user" />

                <h1>Welcome to My Sample SQL Site!</h1>
                <br />
                <h2>Please Login</h2>

                    <br />
                    <br />
                    <asp:Label ID="Label1" runat="server" CssClass="LblUser" Text="UserName:"></asp:Label>
                    <asp:TextBox ID="TxtUsername" runat="server" CssClass="txtUser" placeholder="Enter User Name" Height="20px" Width="200px"></asp:TextBox>

                    <asp:Label ID="Label2" runat="server" CssClass="LblPass" Text="Password:"></asp:Label>
                    <!-- Add type="password" inside of "asp:TextBox" element properties to hide text-->
                    <asp:TextBox ID="TxtPwd" runat="server" CssClass="txtPass" placeholder="********" Width="200px" ></asp:TextBox>
                    <br />
                    <asp:Button ID="ButLogin" runat="server" Text="Login" CssClass="btnLogin" OnClick="ButLogin_Click" Width="168px" />                 
                    <br />
                    <asp:Label ID="LblMsg" runat="server" CssClass="LblMsg" Text=""></asp:Label>

        </div>
    </form>
</body>
</html>
