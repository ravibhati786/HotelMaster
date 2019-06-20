<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="roomdetail.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        
        .form-control:focus{
            outline:none;
            box-shadow:none;
        }
        

    </style>
    <link href="room.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
        <div class="col-lg-8">
            <asp:Image ID="imgRoom" runat="server" ImageUrl="~/image/r1.jpg" width="100%"/></div>
        <div class="col-lg-4">
            <div class="row" style="">
                                <div class="col-md-6">
                                    <asp:Label ID="Label1" runat="server" Text="Check In"></asp:Label>
                                    <asp:TextBox ID="chkin" runat="server" CssClass="form-control" disabled></asp:TextBox>
                                </div>
                                <div class="col-md-6">
                                    <asp:Label ID="Label2" runat="server" Text="Check Out"></asp:Label>
                                    <asp:TextBox ID="chkout" runat="server" CssClass="form-control" disabled></asp:TextBox>
                                </div>
                </div>
                <div class="row" style="margin-top:10px;">

                                <div class="col-md-6">
                                    <asp:Label ID="Label4" runat="server" Text="Adults"></asp:Label>
                                    <span><i class="fas fa-user"></i></span>
                                    <asp:TextBox ID="txtadults" runat="server" CssClass="form-control" disabled></asp:TextBox>

                                </div>

                                <div class="col-md-6">
                                    <asp:Label ID="Label3" runat="server" Text="Children"></asp:Label>
                                    <span><i class="fas fa-user"></i></span>
                                    <asp:TextBox ID="txtchild" runat="server" CssClass="form-control" disabled></asp:TextBox>
                                </div>
                            </div>
            <div class="row" style="margin-left:20px;">
                         <h2 style="font-variant:small-caps;margin-top:40px">
                             <asp:Label ID="lblRoomType" runat="server" Text="Single "></asp:Label> Room</h2>
                         <div class="roomtext"> 
                         <h3>Facilities</h3>
                         <p><i class="fas fa-tv"></i>Television</p>
                         <p><i class="fas fa-wifi"></i>Wi-Fi</p>
                             
                         <p><i class="fas fa-coffee"></i>Breakfast</p>
                         <p><i class="fas fa-bed"></i>Bed</p> 
                         <p><i class="fas fa-concierge-bell"></i>Room Service</p>
                         </div>
                         <div class="row" style="margin-top:40px">
                         <div class="col-md-6">
                              <p><i style="font-size:26px" class="fa">&#xf156;</i><asp:Label ID="lblroomprice" CssClass="roomtext" runat="server" Text="1000" style="font-size:2em;"></asp:Label></p>
                         </div>
                         <div class="col-md-6"> 
                             <asp:Button ID="Button1" runat="server" Text="CONTINUE TO BOOK" CssClass="btn btn-danger bookme" />
                         </div>
                         </div>
                 </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-4"></div>
        <div class="col-lg-4"></div>
        <div class="col-lg-4"></div>
    </div>

</asp:Content>

