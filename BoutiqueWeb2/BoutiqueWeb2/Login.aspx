<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BoutiqueWeb2.Login" %>

<!DOCTYPE html>
<html>
<head>
    
    <title>Mystery Boutique</title>
    <link rel="stylesheet" href="MyStyle.css" >
    
</head>
<body>
  
    <div class="navbar">
        <ul>
            <li><a href= "Homepage.aspx" ><img src="Images\vintage-boutique-logo.jpg" alt="" id="Logo"> </a></li>         
            <li><a href= "Homepage.aspx" >Home  </a></li>
            <li><a href= "Products.aspx" >Products </a></li>
            <li><a href="SignUp.aspx">Sign Up</a></li>
            <li><a href="Login.aspx">Login</a></li>

        </ul>
    </div>
    <div>
        <form runat="server">
        <asp:Label ID="Label1" runat="server" Text="User Mail: "></asp:Label>
        <asp:TextBox ID="usermailtbx" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Password: "></asp:Label>
        <asp:TextBox ID="passwordtbx" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="b_click" Text="Login" />
        </form>
    </div>
    
</body>
</html>
