<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="mybooking.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link href="mybooking.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div style="margin:100px;">
        <div class="container" style="border-radius:3px;">
            <div class="row">
                <div class="col-md-8" style="background-color:#f5f5f0;height:500px;">
                    <span style="font-size:30px;">Guest Details</span><hr />
                    <div class="row">
                        <div class="col-md-6">
                            <span>First Name</span>
                            <asp:TextBox ID="txtfirstname" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-6">
                            <span>Last Name</span>
                            <asp:TextBox ID="txtlastname" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row textboxes1">
                        <div class="col-md-6">
                            <span>Email Address</span>
                            <asp:TextBox ID="txtemail" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-6">
                            <span>Phone Number</span>
                            <asp:TextBox ID="txtphone" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row textboxes1" >
                        <div class="col-md-6 input-group">
                            <asp:TextBox ID="txtCoupon" runat="server" CssClass="form-control" style="width:75%;margin-left:15px"></asp:TextBox>
                            <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Apply" />
                        </div>
                            
                        <div class="col-md-6">
                            
                        </div>
                    </div>
                    <div class="row textboxes1">
                        <div class="col-md-8">
                            
                        </div>
                        <div class="col-md-4">
                            <asp:Button ID="btnreserve" runat="server" Text="Reserve Your Room" CssClass="reserve" PostBackUrl="~/paymentpage.aspx"/>
                        </div>
                    </div>
                </div>
                <div class="col-md-4" style="background-color:#d6d6c2; height:500px;">
                    <span style="font-size:30px;">Order Summary</span><hr />
                    <div class="row">
                        <div class="col-md-6">
                            <big>Room type</big>
                        </div>
                        <div class="col-md-6">
                            <asp:Label ID="lblroomtype" runat="server" Text="Single Room"></asp:Label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <big>Dates</big>
                        </div>
                        <div class="col-md-6">
                            <asp:Label ID="lbldatefrom" runat="server" Text="25 June 2019"></asp:Label>
                            <br />
                            To
                            <br />
                            <asp:Label ID="lbldateto" runat="server" Text="26 June 2019"></asp:Label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <big>Nights</big>
                        </div>
                        <div class="col-md-6">
                            <asp:Label ID="lblNights" runat="server" Text="2"></asp:Label>
                        </div>
                    </div><hr />
                    
                    <div class="row">
                        <div class="col-md-6">
                            <big>Guests</big>
                        </div>
                        <div class="col-md-6">
                            <asp:Label ID="lblguest" runat="server" Text="2"></asp:Label>
                        </div>
                    </div><hr />
                    <div class="row">
                        <div class="col-md-6">
                            <big>Sub-Total</big>
                        </div>
                        <div class="col-md-6">
                            &#8377; <asp:Label ID="lblsubtotel" runat="server" Text="2500"></asp:Label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <big>Discount</big>
                        </div>
                        <div class="col-md-6">
                            &#8377; -<asp:Label ID="lbldiscount" runat="server" Text="0"></asp:Label>
                        </div>
                    </div><hr />
                    <div class="row">
                        <div class="col-md-6">
                            <big>Total</big>
                        </div>
                        <div class="col-md-6">
                            <big>
                            &#8377; <asp:Label ID="lbltotal" runat="server" Text="2500"></asp:Label>
                            </big>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>

