<%@ Page Title="" Language="C#"  AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>


<html>
    <head>
        <link href="Content/bootstrap.min.css" rel="stylesheet" />
         <link href="Content/login.css" rel="stylesheet" />
    </head>
  <body class="text-center cardimg1" >   
           <form class="form-signin" runat="server">
         <img src="Content/img/logo6.png" width="150" height="150" />
   <div class="card-body">
       <h1 class="h3 mb-3 font-weight-normal text-white">Welcome To Registration Page</h1>
      <label for="inputEmail" class="sr-only ">First name</label>
       <asp:TextBox ID="firstname" class="form-control mb-3"  runat="server" placeholder="Enter First name"></asp:TextBox>

       <label for="inputEmail" class="sr-only ">Last name</label>
       <asp:TextBox ID="lastname" class="form-control mb-3"  runat="server" placeholder="Enter Last name"></asp:TextBox>

       <label for="inputEmail" class="sr-only ">Username</label>
       <asp:TextBox ID="usname" class="form-control mb-3"  runat="server" placeholder="Enter Username"></asp:TextBox>
      
      <label for="inputPassword" class="sr-only">Password</label>
       <asp:TextBox ID="password" class="form-control"  runat="server" type="password" placeholder="Enter Password"></asp:TextBox>
  <div class="checkbox mb-3">
        <label>
          <input type="checkbox" value="remember-me"> Remember me
        </label>
      </div>

       <asp:Button ID="Button1" runat="server" Text="Register" OnClick="registerhere" CssClass="btn btn-block btn-primary " />
       <asp:Label ID="errormessage" runat="server" Text="" CssClass="text-light"> </asp:Label>
   </div>
            
      <p class="mt-5 mb-3 text-muted">&copy; 2021</p>
    </form>
  
  </body>

</html>
