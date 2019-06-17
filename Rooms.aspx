<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Rooms.aspx.cs" Inherits="Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link href="room.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="row shadow">
            <div class="col-md-6">
                <img src="image/r1.jpg" width="500" height="250" style="margin-top:20px; box-shadow:4px 4px 4px grey;"/>
            </div>
            <div class="col-md-6">
                <div class="row">
                         <h2 style="font-variant:small-caps">Single Room</h2>
                         <div class="roomtext"> 
                         <h3>Facilities</h3>
                         <p><i class="fas fa-tv"></i>Television</p>
                         <p><i class="fas fa-wifi"></i>Wi-Fi</p>
                             
                         <p><i class="fas fa-coffee"></i>Breakfast</p>
                         <p><i class="fas fa-bed"></i>Bed</p> 
                         <p><i class="fas fa-concierge-bell"></i>Room Service</p>
                         </div>
                         <div class="row">
                         <div class="col-md-6">
                              <p>Rs: <asp:Label ID="lblsingleroomprice" runat="server" Text="1000" style="color:red;font-size:15px;"></asp:Label></p>
                         </div>
                         <div class="col-md-6"> 
                                <asp:HyperLink ID="HyperLink1" runat="server" class="bookme" NavigateUrl="~/mybooking.aspx">Book Now</asp:HyperLink>
                         </div>
                         </div>
                 </div>
            </div>
        </div>
    
      <div class="row shadow">
            <div class="col-md-6">
                <img src="image/r2.jpg" width="500" height="250" style="margin-top:20px; box-shadow:4px 4px 4px grey;"/>
            </div>
            <div class="col-md-6 ">
                <div class="row">
                         <h2 style="font-variant:small-caps">Double Room</h2>
                         <div class="roomtext"> 
                         <h3>Facilities</h3>
                         <p><i class="fas fa-tv"></i>Television</p>
                         <p><i class="fas fa-wifi"></i>Wi-Fi</p>
                             
                         <p><i class="fas fa-coffee"></i>Breakfast</p>
                         <p><i class="fas fa-bed"></i>Bed</p> 
                         <p><i class="fas fa-concierge-bell"></i>Room Service</p>
                         </div>
                         <div class="row">
                         <div class="col-md-6">
                             <p>Rs: <asp:Label ID="lbldoubleroomprice" runat="server" Text="2000" style="color:red;font-size:15px;"></asp:Label></p>
                             
                         </div>
                         <div class="col-md-6"> 
                                <asp:HyperLink ID="HyperLink2" runat="server" class="bookme" NavigateUrl="~/mybooking.aspx">Book Now</asp:HyperLink>
                         </div>
                         </div>
                 </div>
            </div>
        </div>
      
        <div class="row shadow">
            <div class="col-md-6">
                <img src="image/r4.jpg" width="500" height="250" style="margin-top:20px; box-shadow:4px 4px 4px grey;"/>
            </div>
            <div class="col-md-6">
                <div class="row">
                         <h2 style="font-variant:small-caps">Luxury Room</h2>
                         <div class="roomtext"> 
                         <h3>Facilities</h3>
                         <p><i class="fas fa-tv"></i>Television</p>
                         <p><i class="fas fa-wifi"></i>Wi-Fi</p>
                             
                         <p><i class="fas fa-coffee"></i>Breakfast</p>
                         <p><i class="fas fa-bed"></i>Bed</p> 
                         <p><i class="fas fa-concierge-bell"></i>Room Service</p>
                         </div>
                         <div class="row">
                         <div class="col-md-6">
                              <p>Rs: <asp:Label ID="lblluxuryroomprice" runat="server" Text="3000" style="color:red;font-size:15px;"></asp:Label></p>
                         </div>
                         <div class="col-md-6"> 
                                <asp:HyperLink ID="HyperLink3" runat="server" class="bookme" NavigateUrl="~/mybooking.aspx">Book Now</asp:HyperLink>
                         </div>
                         </div>
                 </div>
            </div>
        </div>
        </div>
</asp:Content>

