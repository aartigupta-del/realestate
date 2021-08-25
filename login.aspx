<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="login.aspx.cs" Inherits="login" %>

<html>
    <head>
        <link href="Content/bootstrap.min.css" rel="stylesheet" />
        <link href="Content/login.css" rel="stylesheet" />
    </head>
    <body class="text-center logobg">
    <form class="form-signin" runat="server">
<%--      <img class="mb-4" src="logo6.png" alt="" width="72" height="72">--%>
        <img src="Content/img/logo6.png" width="150" height="150" />
      <h1 class="h3 mb-3 font-weight-normal text-light">Welcome To Login Page</h1>
      <label for="inputEmail" class="sr-only">Email address</label>
        <asp:TextBox ID="Username" class="form-control mt-3" runat="server"  placeholder=EnterUsername></asp:TextBox>
      <label for="inputPassword" class="sr-only">Password</label>
        <asp:TextBox ID="Password" class="form-control mt-3" runat="server" placeholder= EnterPassword ></asp:TextBox>
    
        <asp:Button ID="Button1" CssClass="btn btn-Secondary btn-lg btn-block mt-3" runat="server" Text="Submit" OnClick="userlogin" />
      <p>
          <asp:Label ID="errorMessage" Text="" CssClass="text-light" runat="server"></asp:Label></p>
    </form>
  </body>
   
</html>