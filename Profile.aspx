<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .navthis {
            margin: 0;
            border-radius: 0;
            padding: 0 40%;
            margin-bottom: 4%;
        }

        .headofMedia {
            font-size: 20px;
            padding-bottom: 20px;
        }

        .txt-col {
            color: grey;
        }

        .tabpills > li > a {
            color: grey;
            padding: 15% 2%;
            font-size: medium;
            
        }
       
            .tabpills > li > a:hover, .tabpills>li>a:focus {
                background-color: transparent;
                color: white;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <nav class="navbar navbar-inverse navthis">
        <div class="container-fluid">
            <ul class="nav navbar-nav">
                <li><a data-toggle="tab" href="#bookings">My Bookings</a></li>
                <li><a data-toggle="tab" href="#profile">Profile</a></li>
            </ul>
        </div>
    </nav>
    <div class="container" style="margin-bottom:5%;">
        <div class="tab-content">
            <div id="bookings" class="tab-pane fade in active">
                <div class="panel panel-default" style="border: none">
                    <div class="panel-heading">
                        Bookings :  
                        <!--<asp:DropDownList ID="ddlbookings" runat="server" class="form-control" Style="width: 16%">
                            <asp:ListItem Value="0">Upcoming Bookings</asp:ListItem>
                            <asp:ListItem Value="1">Past Bookings</asp:ListItem>
                        </asp:DropDownList>-->
                    </div>
                    <div class="panel-body">
                        <asp:Repeater ID="rptr_FillBookings" runat="server">
                            <ItemTemplate>

                        <div class="row">
                            <div class="col-md-5">
                                <div class="media">

                                    <div class="media-left">
                                       <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("roomImgURL") %>'  class="media-object" style="width: 150px" />
                                    </div>
                                    <div class="media-body">
                                        <h4 class="media-heading headofMedia">
                                            <asp:Label ID="Label1" style="text-transform:capitalize" runat="server" Text='<%#Eval("roomType") %>'></asp:Label> Room </h4>
                                        <span class="txt-col">
                                        <asp:Label ID="Label2" runat="server" CssClass="txt-col" Text='<%#Eval("Guests") %>'></asp:Label> Guest
                                         - 1 Rooms, <asp:Label ID="Label9" runat="server" Text='<%#Eval("Nights") %>'></asp:Label> Nights<br />
                                        <asp:Label ID="Label3" runat="server" CssClass="txt-col" Text='<%#Eval("checkIn", "{0:dd/MM/yyyy}") %>'></asp:Label>
                                        - 
                                        <asp:Label ID="Label10" runat="server"  CssClass="txt-col" Text='<%#Eval("checkOut", "{0:dd/MM/yyyy}") %>'></asp:Label>
                                      </span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-1"></div>
                            <div class="col-md-2">
                                <div class="media-body" style="text-align: center">
                                    <h4 class="media-heading headofMedia">
                                        <asp:Label ID="Label4" runat="server" Text='<%#Eval("guestName") %>'></asp:Label></h4>
                                    TUH<asp:Label ID="Label5" CssClass="txt-col " runat="server" Text='<%#Eval("roomBillId") %>'></asp:Label>
                                    <br />
                                    <asp:Label ID="Label6" CssClass="txt-col" runat="server" Text='<%#Eval("book_Date", "{0:dd/MM/yyyy}") %>'></asp:Label>
                                </div>
                            </div>
                            <div class="col-md-2"></div>
                            <div class="col-md-2">
                                <div class="media-body" style="text-align: right">
                                    <h5 class="media-heading headofMedia" style="font-size: 17px">
                                        <asp:Label ID="Label7" runat="server" Text='<%#Eval("status_Type") %>'></asp:Label></h5>
                                    <asp:Label ID="Label8" CssClass="txt-col " runat="server" Text='<%#Eval("total") %>'></asp:Label>
                                    <br />
                                    <asp:LinkButton ID="LinkButton1" CssClass="txt-col" runat="server" Font-Underline="True" PostBackUrl='<%#string.Format("~/Details.aspx?bookId={0}",Eval("roomBillId"))%>'>View Details</asp:LinkButton>
                                </div>
                            </div>
                        </div>
                                </ItemTemplate>
                       </asp:Repeater>
                    </div>
                </div>
            </div>
            <div id="profile" class="tab-pane fade">
                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-2" style="background-color: black;height:250px">
                        <ul class="nav nav-stacked tabpills">
                            <li><a data-toggle="tab" href="#prof">PROFILE INFO</a></li>
                            <li><a data-toggle="tab" href="#pass">CHANGE PASSWORD</a></li>
                        </ul>
                    </div>
                    <div class="col-md-4">
                        <div class="tab-content">
                            <div id="prof" class="tab-pane fade in active">
                                <div class="form-group">
                                    <label for="name">Full Name</label>

                                    <input id="txtName" runat="server" type="text" class="form-control" placeholder="Enter Full Nmae" />
                                </div>
                                <div class="form-group">
                                    <label for="pwd">Phone :</label>
                                    <input id="txtPhone" runat="server" type="phone" class="form-control" placeholder="Enter Phone Number" />
                                </div>
                                <div class="form-group">
                                    <label for="email">Email :</label>
                                    <input id="txtEmail" runat="server" type="email" class="form-control" placeholder="Enter Email" />
                                </div>
                                <asp:Button ID="btnUpdateProfile" runat="server" class="btn btn-success btn-block" Text="Update" OnClick="btnUpdateProfile_Click" />
                                
                            </div>
                            <div id="pass" class="tab-pane fade">
                                <div class="form-group">
                                    <label for="pwd">Current Password:</label>
                                    <input type="password" class="form-control" placeholder="Enter Current Password" />
                                </div>
                                <div class="form-group">
                                    <label for="pwd">New Password:</label>
                                    <input type="password" class="form-control" placeholder="Enter New Password" />
                                </div>
                                <br />
                                <asp:Button ID="btnUpdatePass" runat="server" class="btn btn-success btn-block" Text="Change Password" OnClick="btnUpdatePass_Click" />
                                
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3"></div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

