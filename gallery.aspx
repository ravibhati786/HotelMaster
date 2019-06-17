<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <link href="Gallery.css" rel="stylesheet" />
    <style>

    
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="container-fluid" style="margin-top:145px;">
      <div class="container">
          <div class="row row1">
              
              <div class="col-md-4"> 
                  <div class="parent" onclick="">
        <div class="child bg-one">
            <asp:Image  class="img-rounded img1" runat="server" ImageUrl="~/image/img1.jpg" />
            <a href="#"><i class="glyphicon glyphicon-search"></i></a>
        </div>
    </div>
 </div>
              <div class="col-md-4">
                   <div class="parent" onclick="">
        <div class="child bg-one">
            <asp:Image  class="img-rounded img1" runat="server" ImageUrl="~/image/img2.jpg" />
            <a href="#"><i class="glyphicon glyphicon-search"></i></a>
        </div>
    </div>

              </div>
              <div class="col-md-4">
                  <div class="parent" onclick="">
        <div class="child bg-one">
            <asp:Image  class="img-rounded img1" runat="server" ImageUrl="~/image/img5.jpg" />
            <a href="#"><i class="glyphicon glyphicon-search"></i></a>
        </div>
    </div>

              </div>
             
                 
          </div>
           
           <div class="row row2">
              
              <div class="col-md-4"> 
                  <div class="parent" onclick="">
        <div class="child bg-one">
            <asp:Image  class="img-rounded img1" runat="server" ImageUrl="~/image/img6.jpeg" />
            <a href="#"><i class="glyphicon glyphicon-search"></i></a>
        </div>
    </div>
 </div>
              <div class="col-md-4">
                   <div class="parent" onclick="">
        <div class="child bg-one">
            <asp:Image  class="img-rounded img1" runat="server" ImageUrl="~/image/img4.jpg" />
            <a href="#"><i class="glyphicon glyphicon-search"></i></a>
        </div>
    </div>

              </div>
              <div class="col-md-4">
                  <div class="parent" onclick="">
        <div class="child bg-one">
            <asp:Image  class="img-rounded img1" runat="server" ImageUrl="~/image/img12.jpg" />
            <a href="#"><i class="glyphicon glyphicon-search"></i></a>
        </div>
    </div>

              </div>
             
                 
          </div>
           
            <div class="row row3">
              
              <div class="col-md-4"> 
                  <div class="parent" onclick="">
        <div class="child bg-one">
            <asp:Image  class="img-rounded img1" runat="server" ImageUrl="~/image/img7.jpg" />
            <a href="#"><i class="glyphicon glyphicon-search"></i></a>
        </div>
    </div>
 </div>
              <div class="col-md-4">
                   <div class="parent" onclick="">
        <div class="child bg-one">
            <asp:Image  class="img-rounded img1" runat="server" ImageUrl="~/image/img8.jpg" />
            <a href="#"><i class="glyphicon glyphicon-search"></i></a>
        </div>
    </div>

              </div>
              <div class="col-md-4">
                  <div class="parent" onclick="">
        <div class="child bg-one">
            <asp:Image  class="img-rounded img1" runat="server" ImageUrl="~/image/img9.jpg" />
            <a href="#"><i class="glyphicon glyphicon-search"></i></a>
        </div>
    </div>

              </div>
             
                 
          </div>
            </div>
      </div>

</asp:Content>

