<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="BoutiqueWeb2.Products" %>

<!DOCTYPE html>
<html>
<head>

    <title>Mystery Boutique</title>
    <link rel="stylesheet" href="MyStyle.css">
</head>
<body>


    <div class="navbar">
        <ul>
            <li><a href="Homepage.aspx">
                <img src="Images\vintage-boutique-logo.jpg" alt="" id="Logo">
            </a></li>
            <li><a href="Homepage.aspx">Home  </a></li>
            <li><a href="Products.aspx">Products </a></li>
            <li><a href="SignUp.aspx">Sign Up</a></li>
            <li><a href="Login.aspx">Login</a></li>
        </ul>
    </div>

    <asp:DataList ID="products" runat="server">

        <ItemTemplate>
            <table>
                <tr>

                    <td>
                        <img src="<%#DataBinder.Eval(Container.DataItem,"ProductPhoto")%>" style="width: 200px" alt=" " />
                    </td>
                    <tr>
                        <td>Price: 
                       <%#DataBinder.Eval(Container.DataItem,"ProductPrice")%> TL
                        </td>
                    </tr>
                    <tr>
                        <td>Product Name: 
                       <%#DataBinder.Eval(Container.DataItem,"ProductName")%>
                        </td>
                    </tr>
                    <tr>
                        <td>Product Type: 
                       <%#DataBinder.Eval(Container.DataItem,"ProductType")%>
                        </td>
                    </tr>
                    <tr>
                        <td>Stock: 
                       <%#DataBinder.Eval(Container.DataItem,"Stock")%>
                        </td>
                    </tr>

                </tr>
            </table>
        </ItemTemplate>

    </asp:DataList>

</body>
</html>

