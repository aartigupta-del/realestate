<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100 h-100" src="Content/img/photo1.jpg">
	  <div class="carousel-caption d-none d-md-block real">
   <h2 class="text-light">Best Dealing Estate Company</h2>
   <h5 class="text-light">Find Your Sweet Home</h5>
   </div>
    </div>
    <div class="carousel-item">
      <img class="d-block w-100 h-100" src="Content/img/photo2.jpg">
	   <div class="carousel-caption d-none d-md-block real">
   <h2 class="text-light">Best Dealing Estate Company</h2>
   <h5 class="text-light">Find Your Sweet Home</h5>
   </div>
    </div>
    <div class="carousel-item">
      <img class="d-block w-100 h-100" src="Content/img/photo4.jpg">
	   <div class="carousel-caption d-none d-md-block real">
   <h2 class="text-light">Best Dealing Estate Company</h2>
   <h5 class="text-light">Find Your Sweet Home</h5>
   </div>
    </div>
	<div class="carousel-item">
      <img class="d-block w-100 h-100" src="Content/img/photo4.jpeg">
	   <div class="carousel-caption d-none d-md-block real">
   <h2 class="text-light">Best Dealing Estate Company</h2>
   <h5 class="text-light">Find Your Sweet Home</h5>
   </div>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

<div class="container">
<div class="row">
<div class="col-md-6 mb-5 pt-4">
<h2 class="mt-5"><span class="txtcolor"><b>About Company</b></span></h2>
<h4>We're is this business since <span class="txtcolor">2016 </span>and we provide the best real estate services</h4>
</div>
<div class="col-md-6 mb-5 pt-4">
<p class="mt-5">The 90 Acre Pvt Ltd was established in the year 2016 with the aim and objective of providing homes for every individual who is ready to purchase their dream home but requires professional assistance from experts in the field who will genuinely guide them and do proper analysis before investment from the client.</p>
</div>
</div>
</div>


<div class="container">
<div class="row">
<div class="col-md-3">
<div class="card ">
<div class="card-body text-center cardcolor">
<h4 class="text-light">Modern Villa</h4>
<i class="fas fa-home fontimg p-4"></i>
</div>
</div>
</div>
<div class="col-md-3">
<div class="card ">
<div class="card-body text-center cardcolor">
<h4 class="text-light">Family House</h4>
<i class="fas fa-house-user fontimg p-4"></i>
</div>
</div>
</div>

<div class="col-md-3">
<div class="card ">
<div class="card-body text-center cardcolor">
<h4 class="text-light">Town House</h4>
<i class="fas fa-laptop-house fontimg p-4"></i>
</div>
</div>
</div>

<div class="col-md-3">
<div class="card ">
<div class="card-body text-center cardcolor ">
<h4 class="text-light">Aparment</h4>
<i class="fa fa-building fontimg p-4"></i>
</div>
</div>
</div>
</div>
</div>

<div class="text-center">
<h5 class=" txtheight line txtcolor mt-5">New Arrival Collections</h5>
</div>
<h2 class="text-center"><b>Recent Properties</b></h2>

<div class="container mt-5">
<div class="row">
<div class="col-md-6">
<div class="card bg-dark text-white RecentProperties">
  <img height="300" src="Content/img/download7.jpg" alt="Card image">
  <div class="card-img-overlay">
    <ul class="list-group list-group-horizontal propfeature">
  <li><span>New</span></li>
  <li><span>Featured</span></li>
  </ul>
  <div>
<span class="badge badge-light mt-5 py-2 px-2">₹ 1.15 Cr-₹ 1.69 Cr</span>
<h4 class="text-light">Elan Epic, Sector 70, Gurugram, Haryana 122101, India</h4>
    </div>
  <h6 class="text-light"><i class="fas fa-map-marker-alt pr-2 txtcolor"></i>Southern Peripheral Road</h6>
  <ul class="list-group list-group-horizontal proprooms">
  <li><span class="txtcolor">650</span> sqft</li>
  <li><span class="txtcolor">0</span>Bedrooms</li>
  <li><span class="txtcolor">0</span>Bathrooms</li>
  <li><span class="txtcolor">0</span>Garage</li>
  </ul>
</div>
  </div>
</div>


<div class="col-md-6">
<div class="card bg-dark text-white RecentProperties">
  <img height="300" src="Content/img/download4.jpg" alt="Card image">
  <div class="card-img-overlay">
    <ul class="list-group list-group-horizontal propfeature">
  <li><span>New</span></li>
  <li><span>Featured</span></li>
  </ul>
  <div>
<span class="badge badge-light mt-5 py-2 px-2">₹ 80 Lakh-₹ 1.69 Cr</span>
<h4>Elan Town Centre, Sector 67, Gurugram, Haryana, India</h4>
  </div>
  <h6><i class="fas fa-map-marker-alt pr-2 txtcolor"></i>Sohna Road </h6>
  <ul class="list-group list-group-horizontal proprooms">
  <li><span class="txtcolor">550</span> sqft</li>
  <li><span class="txtcolor">0</span>Bedrooms</li>
  <li><span class="txtcolor">0</span>Bathrooms</li>
  <li><span class="txtcolor">0</span>Garage</li>
  </ul>
  </div>
  </div>
</div>
</div>
<div class="row mt-3">
<div class="col-md-6">
<div class="card bg-dark text-white RecentProperties">
  <img height="300" src="Content/img/download5.jpg" alt="Card image">
  <div class="card-img-overlay">
    <ul class="list-group list-group-horizontal propfeature">
  <li><span>New</span></li>
  <li><span>Featured</span></li>
  </ul>
  <div>
<span class="badge badge-light mt-5 py-2 px-2">  ₹ 37 Lakh - ₹ 60 lakh</span>
<h4>AIPL Business Club, Sector 62, Gurugram, Haryana 122102, India</h4>
  </div>
  <h6><i class="fas fa-map-marker-alt pr-2 txtcolor"></i> Golf Extension Road</h6>
  <ul class="list-group list-group-horizontal proprooms">
  <li><span class="txtcolor">650</span> sqft</li>
  <li><span class="txtcolor">0</span>Bedrooms</li>
  <li><span class="txtcolor">0</span>Bathrooms</li>
  <li><span class="txtcolor">0</span>Garage</li>
  </ul>
  </div>
  </div>
</div>

<div class="col-md-6">
<div class="card bg-dark text-white RecentProperties">
  <img height="300" src="Content/img/download6.jpg" alt="Card image">
  <div class="card-img-overlay">
    <ul class="list-group list-group-horizontal propfeature">
  <li><span>New</span></li>
  <li><span>Featured</span></li>
  </ul>
  <div>
<span class="badge badge-light mt-5 py-2 px-2"> ₹ 80 Lakh - ₹ 1.69 Cr</span>
<h4>Elan Miracle , Sector 84, Gurugram, Haryana 122004, India</h4>
  </div>
  <h6><i class="fas fa-map-marker-alt pr-2 txtcolor"></i>Dwarka Expressway</h6>
  <ul class="list-group list-group-horizontal proprooms">
  <li><span class="txtcolor">650</span> sqft</li>
  <li><span class="txtcolor">0</span>Bedrooms</li>
  <li><span class="txtcolor">0</span>Bathrooms</li>
  <li><span class="txtcolor">0</span>Garage</li>
  </ul>
  </div>
  </div>
</div>
</div>
</div>

<div class="container-fluid bgimg ">
<div class="row">
<div class="col-md-5"> 
<h1 class="para ml-5"><b>Great Experience For Real Estate Property Selling</b></h1>
</div>
<div class="col-md-3"> 
</div>
<div class="col-md-4 pl-3"> 
<button class="btn btn-lg  py-2 px-5 btnback text-light" type="button">Contact Us</button>
</div>
</div>
</div>

<div class="text-center">
<h5 class=" txtheight line txtcolor mt-5">Find Out the Best One</h5>
</div>
<h2 class="text-center"><b>Featured Properties</b></h2>

<div class="container">
<div class="owl-carousel owl-theme">

    <asp:Repeater ID="propertylist" runat="server">  
    <ItemTemplate> 
    <div class="card bg-light text-white RecentProperties ">
  <img height="170" src="<%#Eval("Uploadfile") %>" alt="Card image">
    <ul class="list-group list-group-horizontal propfeature">
  <li><span>Featured</span></li>
  </ul>
  <%--<div class="card-img-overlay">
    <ul class="list-group list-group-horizontal propfeature">
  <li><span>Featured</span></li>
  </ul>
   </div>--%>
   <div class="card-body">
  <div>
  <span class="badge badge-dark text-light mt-2 ml-3  py-2 px-2">2021-7-14 11:13:46</span>
<a href="viewproperty.aspx?slug=<%#Eval("slugname") %>""><h4 class="text-dark ml-3 mt-3"><%#Eval("propertyname")%> </h4></a>
<h6 class="text-dark ml-3"><i class="fas fa-map-marker-alt pr-2 txtcolor"></i> <%#Eval("landmark") %></h6>
</div>
  <div class="d-flex justify-content-between">
  <div>
    <ul class="cardicon px-3">
  <li class="text-dark"><span class="txtcolor"><i class="fas fa-rss-square"></i></span> <%#Eval("area") %>sqft</li>
  <li class="text-dark"><span class="txtcolor"><i class="fas fa-bed"></i></span> <%#Eval("bedroom") %></li>
    </ul>
  </div>
  <div>
  <ul class="cardicon">
 <li class="text-dark"><span class="txtcolor"><i class="fas fa-bath"></i></span> <%#Eval("bathroom") %></li>
  <li class="text-dark"><span class="txtcolor"><i class="fas fa-car"></i></span> <%#Eval("garage") %></li>
    </ul>
  </div>
  </div>
  </div>
  <a href="viewproperty.aspx?slug=<%#Eval("slugname") %>" class="rounded-0 btn btn-block btnsale">View More</a>
  </div>
   </ItemTemplate>
   </asp:Repeater>

<%--<div class="card bg-light text-white RecentProperties ">
  <img height="170" src="Content/img/download6.jpg" alt="Card image">
    <ul class="list-group list-group-horizontal propfeature">
  <li><span>Featured</span></li>
  </ul>
  <div class="card-img-overlay">
    <ul class="list-group list-group-horizontal propfeature">
  <li><span>Featured</span></li>
  </ul>
   </div>
   <div class="card-body">
  <div>
  <span class="badge badge-dark text-light mt-2 ml-3  py-2 px-2">2021-7-14 11:13:46</span>
<h4 class="text-dark ml-3 mt-3">Elan Miracle , Sector 84, Gurugram, Haryana 122004, India</h4>
<h6 class="text-dark ml-3"><i class="fas fa-map-marker-alt pr-2 txtcolor"></i>Dwarka Expressway</h6>
</div>
  <div class="d-flex justify-content-between">
  <div>
    <ul class="cardicon px-3">
  <li class="text-dark"><span class="txtcolor"><i class="fas fa-rss-square"></i></span> 650sqft</li>
  <li class="text-dark"><span class="txtcolor"><i class="fas fa-bed"></i></span>0Bedrooms</li>
    </ul>
  </div>
  <div>
  <ul class="cardicon">
 <li class="text-dark"><span class="txtcolor"><i class="fas fa-bath"></i></span>0Bathrooms</li>
  <li class="text-dark"><span class="txtcolor"><i class="fas fa-car"></i></span>0Garage</li>
    </ul>
  </div>
  </div>
  </div>
  <a href="viewproperty.aspx" class="rounded-0 btn btn-block btnsale">View More</a>
  </div>--%>


</div>
</div>

<!--
<div class="container">
<div class="row">
<div class="col-md-4">
<div class="card bg-light text-white">
  <img height="170" src="Content/img/download6.jpg" alt="Card image">
  <div class="card-img-overlay">
    <ul class="list-group list-group-horizontal propfeature">
  <li><span>Featured</span></li>

  </ul>
   </div>
   <div class="card-body">
  <div>
  <span class="badge badge-dark text-light mt-2 ml-3  py-2 px-2">2021-7-14 11:13:46</span>
<h4 class="text-dark ml-3 mt-3">Elan Miracle , Sector 84, Gurugram, Haryana 122004, India</h4>
<h6 class="text-dark ml-3"><i class="fas fa-map-marker-alt pr-2 txtcolor"></i>Dwarka Expressway</h6>
</div>
  <div class="d-flex justify-content-between">
  <div>
    <ul class="cardicon px-3">
  <li class="text-dark"><span class="txtcolor"><i class="fas fa-rss-square"></i></span> 650sqft</li>
  <li class="text-dark"><span class="txtcolor"><i class="fas fa-bed"></i></span>0Bedrooms</li>
    </ul>
  </div>
  <div>
  <ul class="cardicon">
 <li class="text-dark"><span class="txtcolor"><i class="fas fa-bath"></i></span>0Bathrooms</li>
  <li class="text-dark"><span class="txtcolor"><i class="fas fa-car"></i></span>0Garage</li>
    </ul>
  </div>
  </div>
  </div>
  <a class="rounded-0 btn btnsale">View More</a>
  </div>
  </div>
  
  </div>
</div>-->
<div class="container-fluid conimg mt-5">
<div class="row">
<div class="col-md-4">
<div class="card p-4 mt-5 ml-5">
<div class="card-body">
<h4><b>Dedicated Customer Care Number</b></h4>
<p>The 90 Acre Pvt Ltd provides a 24/7 running helpline number which is backed with professionals. 
We bring in a customer care team who will guide you through every step patiently to get the appropriate solutions you're looking for.</p>
<button class="btn btn-lg  btncar text-dark" type="button"><b>Contact Us</b></button>
</div>
</div>
</div>
</div>
</div>

<div class="text-center">
<h5 class=" txtheight line txtcolor mt-5">What We Do?</h5>
</div>
<h2 class="text-center"><b>Our Services</b></h2>

<div class="container mt-5">
<div class="row">
<div class="col-md-4">
<div class="card bg-light">
<div class="card-body">
<i class="fas fa-hand-holding-usd icon"></i>
<h4  class="mt-3">Real Estate Consulting</h4>
<p>At “The Capital Square” we provide the solution for your every real estate query and needs. Our real estate experts who have years of experience in the field, classify the properties for you after analyzing Budget, Reviewing your needs, Specific Preferences.</p>
<i class="fas fa-chevron-circle-right arrowicon"></i>
</div>
</div>
</div>
<div class="col-md-4">
<div class="card bg-light">
<div class="card-body">
<i class="fas fa-handshake icon"></i>
<h4  class="mt-3">Real Estate Services for NRI</h4>
<p>Non- Resident –Indian who are not residing in India but has the dream to purchase properties in India find it difficult to purchase properties back home due to too many middlemen and the corruption within the people who on their behalf check the work here.</p>
<i class="fas fa-chevron-circle-right arrowicon"></i>
</div>
</div>
</div>
<div class="col-md-4">
<div class="card bg-light">
<div class="card-body">
<i class="fas fa-home  icon"></i>
<h4 class="mt-3">Legal Consulting</h4>
<p>“The Capital Square” assists you with the most difficult part of purchasing your dream home “HOME LOAN” it is not easy to get the best home loan which will provide you enough time to repay and would not pressurize you with the burden of home loans.
</p>
<i class="fas fa-chevron-circle-right arrowicon"></i>
</div>
</div>
</div>
</div>
</div>
</asp:Content>
