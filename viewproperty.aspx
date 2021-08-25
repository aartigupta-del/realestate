<%@ Page Language="C#" AutoEventWireup="True" EnableEventValidation="False" MasterPageFile="~/Site.Master" CodeFile="viewproperty.aspx.cs" Inherits="viewproperty" %>

    
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   <asp:Repeater ID="viewproperty1" runat="server"> 
       <ItemTemplate>
  <div class="card bg-dark text-white mb-5">
  <img src="Content/img/image2.jpg" class="card-img" >
  <div class="card-img-overlay">
    <h1 class="elan mt-5 "><b><%#Eval("propertyname") %></b></h1>
	<div  class="col-md-6">
    <p class="card-text pl-4 mt-2"><%#Eval("propshort")%></p>
  </div>
      </div>
  <nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="#">Home</a></li>
    <li class="breadcrumb-item"><a href="#">Property</a></li>
    <li class="breadcrumb-item"><a href="#">info</a></li>
	 <li class="breadcrumb-item active" aria-current="page"><%#Eval("propertyname") %></li>
  </ol>
</nav>
</div>

<div class="container">
<div class="row mb-3">
<div class="col-md-7">
<ul class="list-group list-group-horizontal sale">
  <li class="text-light bg-dark p-2 px-4"><%#Eval("proplist")%></li>
  <li class="font-size-50 ml-3 mt-2 txtcolor"><h4><b><%#Eval("maximumprice")%>-<%#Eval("minimumprice")%></b></h4></li>
  </ul>
<h4><b><%#Eval("propertyname") %></b></h4>
<h6><i class="fas fa-map-marker-alt pr-2 txtcolor"></i><%#Eval("fulladdress")%></h6>
    <ul class="list-group list-group-horizontal cardicon px-3">
  <li class="text-dark"><span class="txtcolor mr-3"><i class="fas fa-rss-square"></i></span><%#Eval("area")%>sqft</li>
  <li class="text-dark"><span class="txtcolor mr-3"><i class="fas fa-bed"></i></span><%#Eval("bedroom")%></li>
   <li class="text-dark"><span class="txtcolor mr-3"><i class="fas fa-bath"></i></span><%#Eval("bathroom")%></li>
  <li class="text-dark"><span class="txtcolor mr-3"><i class="fas fa-car"></i></span><%#Eval("garage")%>
</div>
<div class="col-md-4">
<ul class="list-group list-group-horizontal sale footericon">
<li data-toggle="tooltip" data-placement="top" title="facebook"><a href="<%#Eval("facebook")%>"><i class="fab fa-facebook-f"></i></a></li>
<li data-toggle="tooltip" data-placement="top" title="whatsapp"><a href="<%#Eval("whatsapp")%>"><i class="fab fa-whatsapp-square"></i></a></li>
<li data-toggle="tooltip" data-placement="top" title="youtube"><a href="<%#Eval("youtube")%>"><i class="fab fa-youtube"></i></a></li>
<li data-toggle="tooltip" data-placement="top" title="instagram"><a href="<%#Eval("instagram")%>"><i class="fab fa-instagram-square"></i></a></li>
</ul>
</div>
</div>
</div>

<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="Content/img/image1.jpg" class="d-block w-100 h-100" >
    </div>
    <div class="carousel-item">
      <img src="Content/img/image5.jpg" class="d-block w-100 h-100">
    </div>
    <div class="carousel-item">
      <img src="Content/img/image6.jpg" class="d-block w-100 h-100">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>


<div class="container mt-5">
<div class="row">
<div class="col-md-8">
<h3>Description</h3>
<%#Eval("proplong")%>">
<%--<p>Elan’s New Commercial  Elan Epic Sector 70 Gurgaon is a unique, concept with central water body and lavish green area and one-of-its-kind project that offers a heady mix of high-end retail shops, world-class commercial space , Multiplex on 3rd & 4th Floor, Gaming Zone, Fun Zone, kids entertainment zone, Terraces Restaurant. Elan New Commercial Sector 70 Enjoying an awesome location with exclusive two-side access, elan Commercial has set a new precedent of affluence and exuberance in the city of Gurugram.
Elan Epic has launched in Gurugram Sector 70 to take its residents by storm. Never has a “corner” location been the talk of the town. Elan Projects has been conceptualized to offer high-street retail shopping experience and Uber-stylish commercial space.</p>
<p>Elan Epic Offers World-class fine dining hanging Pod restaurants, Lounge bars, cafes, bakeries, bistros, pubs, and brassieres, to hang out Fast food outlets for those on the go Open-air.</p>
<b>PRICE STARTS FROM RS. 1.25* Cr. Onwards</b>--%>

<%--<h1 class="mt-3"><b>Project Features:</b></h1>

<p>7 acres of Licensed Land Bank
14 Lacs sq.ft. of salable area
Booking Amount 3 Lakh
3 sides open land on 150m Dwarka Expressway, a project with largest frontage
Located on 135 mtrs. multi-utility corridor
Well connected to CPR, SPR, ISBT & International Airport
7 acres project with 2.5 acres of landscaping & water boddies all over
Located amidst 50,000 residential units
Sunken court with Amphitheatere
Sports facilities: Indoor Squash, fully equipped Badminton Court, state-of-the-art Gym, Cross-fit Studio, Table Tennis & many more.</p>--%>

<h4><b>Property Details</b></h4>
<div class="d-flex justify-content-between">
  <div>
    <ul class="cardicon px-3">
  <li class="text-dark">Bedrooms:</li>
  <li class="text-dark">Bathrooms:</li>
    </ul>
  </div>
  <div>
  <ul class="cardicon">
 <li class="text-dark"><span class="mr-4"><%#Eval("bedroom")%>"></span>Garage:</li>
  <li class="text-dark"><span class="mr-4"><%#Eval("bathroom")%></span>Area:</li>
    </ul>
  </div>
  <div>
  <ul class="cardicon">
 <li class="text-dark"><%#Eval("garage")%></li>
  <li class="text-dark"><%#Eval("area")%>sqft</li>
    </ul>
  </div>
  </div>
</div>

<div class="col-md-4 mb-3 ">
<div class="card">
<div class="card-body">
<h5 class="card-title"><b>Contact an Agent</b></h5>
<div class="row">
<div class="col-md-4">
<img src="Content/img/passport.jpg" class="roundedimg">
</div>
<div class="col-md-6 pt-4">
<li class="sale">81acre admin</li>
<li class="sale">info@81acre.com</li>
</div>
</div>

<div class="mt-3">
    <asp:TextBox ID="firstname" CssClass="form-control"  placeholder="First name" runat="server"></asp:TextBox>
</div>
<div class="mt-3">
    <asp:TextBox ID="Id" CssClass="form-control" Type="hidden" Text='<%#Eval("id")%>' runat="server"></asp:TextBox>
</div>
<div class="mt-3">
    <asp:TextBox ID="email"  CssClass="form-control"  placeholder="Email Address" runat="server"></asp:TextBox>
</div>
<div class="mt-3">
    <asp:TextBox ID="phone" CssClass="form-control"  placeholder="Phone Number" runat="server"></asp:TextBox>
</div>
<div class="mt-3">
    <textarea name="message" Class="form-control"  placeholder="Type Your Message" cols="20" rows="2"></textarea>
</div>
    <asp:Button ID="submit" OnClick="AddEnquiry" class=" btn btn-primary btn-block mt-3 p-2" runat="server" Text="Submit" />

</div>
</div>
</div>

    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d120562.19154963724!2d72.93141930796347!3d19.21404075236611!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7b8fcfe76fd59%3A0xcf367d85f7c50283!2sThane%2C%20Maharashtra!5e0!3m2!1sen!2sin!4v1627369546392!5m2!1sen!2sin" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
</div>
</div>
</ItemTemplate>
</asp:Repeater>
</asp:Content>