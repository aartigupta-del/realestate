<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addproperties.aspx.cs" Inherits="Admin_addproperties" %>

<!--#include file="Header.aspx"-->
<!-- Sidebar -->
<!--#include file="Sidebar.aspx"-->
<!-- End of Sidebar -->
<!-- Content Wrapper -->
<div id="content-wrapper" class="d-flex flex-column">
<!-- Main Content -->
<div id="content">
   <!-- Topbar -->
   <!--#include file="Topbar.aspx"-->
   <!-- End of Topbar -->
   <!-- Begin Page Content -->
   <div class="container-fluid">
      <!-- Page Heading -->
      <div class="d-sm-flex align-items-center justify-content-between mb-4">
         <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
         <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
            class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
      </div>
      <div class="row">
         <!-- Area Chart -->
         <div class="col-xl-12 col-lg-7">
            <div class="card shadow mb-4">
               <!-- Card Body -->
               <div class="card-body">
                       <form runat="server">
                  <div class="form-group">
                     <label for="exampleInputEmail1">Property Name</label>
                      <asp:TextBox ID="Propertyname" CssClass="form-control" runat="server"></asp:TextBox>
                  
                  </div>
                  <div class="form-row">
                     <div class="form-group col-md-4">
                        <label for="inputEmail4">Minimum Price</label>
                         <asp:TextBox ID="Minimumprice" CssClass="form-control" runat="server"></asp:TextBox>
                   </div>
                     <div class="form-group col-md-4">
                        <label for="inputEmail4">Maximum Price</label>
                         <asp:TextBox ID="Maximumprice" CssClass="form-control" runat="server"></asp:TextBox>
                       </div>
                     <div class="form-group col-md-4">
                        <label for="inputEmail4">Upload File<span class="text-danger">(Width:725*Height:635)</span></label>
                         <asp:fileupload ID="fileupload"  CssClass="form-control" runat="server"></asp:fileupload>
                        </div>
                  </div>
                  <div class="form-row">
                     <div class="form-group col-md-3">
                        <label for="inputEmail4">Facebook Url</label>
                         <asp:TextBox ID="Facebook"  CssClass="form-control" runat="server"></asp:TextBox>
                     </div>
                     <div class="form-group col-md-3">
                        <label for="inputEmail4">Instagram Url</label>
                         <asp:TextBox ID="Instagram" CssClass="form-control" runat="server"></asp:TextBox>
                     </div>
                     <div class="form-group col-md-3">
                        <label for="inputEmail4">Whatsapp Url</label>
                         <asp:TextBox ID="Whatsapp" CssClass="form-control"  runat="server"></asp:TextBox>
                     </div>
                     <div class="form-group col-md-3">
                        <label for="inputEmail4">Youtube View Url</label>
                         <asp:textBox ID="Youtube" CssClass="form-control" runat="server"></asp:textBox>
                     </div>
                  </div>
                  <div class="form-row">
                     <div class="form-group col-md-3">
                        <label for="inputEmail4">Area in Sqft</label>
                         <asp:TextBox  ID="Area" CssClass="form-control"  runat="server"></asp:TextBox>
                       </div>
                     <div class="form-group col-md-3">
                        <label for="inputEmail4">No Of Bedrooms</label>
                         <asp:TextBox ID="Bedroom" CssClass="form-control"  runat="server"></asp:TextBox>
                   </div>
                     <div class="form-group col-md-3">
                        <label for="inputEmail4">No Of Bathrooms</label>
                         <asp:TextBox ID="Bathroom" CssClass="form-control" runat="server"></asp:TextBox>
                     </div>
                     <div class="form-group col-md-3">
                        <label for="inputEmail4">Garage</label>
                         <asp:TextBox ID="Garage" CssClass="form-control" runat="server"></asp:TextBox>
                     </div>
                  </div>
                  <div class="form-row">
                     <div class="form-group col-md-3">
                        <label for="inputEmail4">List Property For</label>
                         <select name="listproperty">
                             <option value="For Sale">For Sale</option>
                              <option value="For Rent">For Rent</option>
                              <option value="PG">PG</option>
                              <option value="Flatmates">Flatmates</option>
                              <option value="Other">Other</option>
                         </select>
                        <%-- <asp:dropdownlist ID="listproperty" CssClass="form-control"  runat="server"></asp:dropdownlist>--%>
                     </div>
                     <div class="form-group col-md-3">
                        <label for="inputEmail4">I have</label>
                         <select name="ihave">
                             <option value="Residential">Residential</option>
                              <option value="Commercial">Commercial</option>
                              <option value="Agriculture">Agriculture</option>
                             <option value="Other">Other</option>
                         </select>
                        <%-- <asp:dropdownlist ID="ihave" CssClass="form-control" runat="server"></asp:dropdownlist>--%>
                     </div>
                     <div class="form-group col-md-3">
                        <label for="inputEmail4">Property Type</label>
                           <select name="propertytype">
                             <option value="Apartments">Apartments</option>
                              <option value="House">House</option>
                              <option value="Villa">Villa</option>
                              <option value="Builder floor">Builder floor</option>
                              <option value="Floor">Floor</option>
                             <option value="Studio">Studio</option>
                             <option value="Farmhouse">Farmhouse</option>
                             <option value="Other">Other</option>
                         </select>
                        <%-- <asp:dropdownlist ID="propertytype" CssClass="form-control"  runat="server"></asp:dropdownlist>--%>
                      
                     </div>
                     <div class="form-group col-md-3">
                        <label for="inputEmail4">Available</label>
                          <select name="available">
                             <option value="New">New</option>
                              <option value="Resale">Resale</option>
                           </select>
                      <%--   <asp:dropdownlist ID="available" CssClass="form-control" runat="server"></asp:dropdownlist>--%>
                     </div>
                  </div>
                  <%-- Map --%>
                  <div class="form-group">
                     <label for="exampleInputEmail1">Google Map Url</label>
                      <textarea id="googlemap" class="form-control" name="googlemap" cols="20" rows="2"></textarea>
                </div>
                  <div class="form-group">
                     <label for="exampleInputEmail1">Short Description</label>
                      <textarea id="editor1" class="form-control"  name="shortdesc" cols="20" rows="2"></textarea>
                  </div>
                  <div class="form-group">
                     <label for="exampleInputEmail1">Long Description-</label>
                      <textarea id="editor2" class="form-control"  name="longdesc" cols="20" rows="2"></textarea>
                  </div>
                    <div class="form-group">
                        <label for="inputEmail4">Near By Places</label>
                         <textarea id="editor3" class="form-control"  name="nearplaces"  cols="20" rows="2"></textarea>
                   </div>
                  <div class="form-row">
                     <div class="form-group col-md-4">
                        <label for="inputEmail4">Landmark</label>
                         <asp:TextBox ID="Landmark" CssClass="form-control"  runat="server"></asp:TextBox>
                   </div>
                     <div class="form-group col-md-4">
                        <label for="inputEmail4">City</label>
                         <asp:TextBox ID="City" CssClass="form-control" runat="server"></asp:TextBox>
                     </div>
                     <div class="form-group col-md-4">
                        <label for="inputEmail4">Pincode</label>
                         <asp:TextBox ID="Pincode" CssClass="form-control"  runat="server"></asp:TextBox>
                     </div>
                  </div>
                  <div class="form-group">
                     <label for="exampleInputEmail1">Full Address</label>
                      <textarea id="Fulladdress" class="form-control" name="Fulladdress" cols="20" rows="2"></textarea>
                      </div>
                           <asp:button  CssClass="btn btn-success" onclick="Publish" runat="server" text="Save and Publish" />
            
                           </form>
                
               </div>
            </div>
         </div>
      </div>
   </div>
   <!-- /.container-fluid -->
</div>
<!-- End of Main Content -->
<script>
   CKEDITOR.replace('editor1', {
     height: 200,
     baseFloatZIndex: 10005
   });
   
   CKEDITOR.replace('editor2', {
       height: 200,
       baseFloatZIndex: 10005
    });
     CKEDITOR.replace('editor3', {
       height: 200,
       baseFloatZIndex: 10005
   });
</script>
<!--#include file="Footer.aspx"-->