<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="BoutiqueWeb2.SignUp" %>

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
    <form id="form" runat="server">
    <div id="user">

        <asp:Label ID="Label1" runat="server" Text="User Name: "></asp:Label>
        <asp:TextBox ID="usernametbx" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="usernametbx" ErrorMessage="Please enter your name!"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label2" runat="server" Text="User Mail: "></asp:Label>
        <asp:TextBox ID="usermailtbx" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="usermailtbx" ErrorMessage="Please enter your mail!"></asp:RequiredFieldValidator>
         <br />
         <asp:Label ID="Label3" runat="server" Text="User Password: "></asp:Label>
        <asp:TextBox ID="userpasswordtbx" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="userpasswordtbx" ErrorMessage="Please enter your password!"></asp:RequiredFieldValidator>
         <br />
        <asp:ValidationSummary runat="server" />
        <asp:Button ID="Button1" runat="server" OnClick="bclick" Text="Sign In" />

    </div>
    </form>
</body>
</html>