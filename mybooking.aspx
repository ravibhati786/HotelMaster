<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mybooking.aspx.cs" Inherits="mybooking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="mybooking.css" rel="stylesheet" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  
</head>
<body>
    <form id="form1" runat="server">
    <div style="border:1px solid green; margin:50px;">
        <div class="container" style="border:1px solid grey; margin:50px; border-radius:3px; margin-left:115px;">
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
                    <div class="row textboxes">
                        <div class="col-md-6">
                            <span>Email Address</span>
                            <asp:TextBox ID="txtemail" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-6">
                            <span>Phone Number</span>
                            <asp:TextBox ID="txtphone" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row textboxes">
                        <div class="col-md-6">
                            <span>Country</span>
                          <div class="dropdown">
                                 <asp:DropDownList ID="ddlcountry" runat="server"  CssClass="form-control" data-toggle="dropdown" style="background:;color:;">
       
                                <asp:ListItem Value="0">----Select Country----</asp:ListItem>
                                <asp:ListItem>India</asp:ListItem>
                                <asp:ListItem>Pakistan</asp:ListItem>
                                <asp:ListItem>England</asp:ListItem>
                                <asp:ListItem>South Africa</asp:ListItem>
    
                       </asp:DropDownList>
    
                         </div>
                            
                        </div>
                        <div class="col-md-6">
                            <span>NickName Optinal</span>
                            <asp:TextBox ID="txtnickname" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row textboxes">
                        <div class="col-md-12">
                            <asp:Button ID="btnreserve" runat="server" Text="Reserve Your Room" CssClass="reserve" PostBackUrl="~/paymentpage.aspx"/>
                        </div>
                    </div>
                </div>
                <div class="col-md-4" style="background-color:#d6d6c2; height:500px;">
                    <span style="font-size:30px;">Order Summary</span><hr />
                    <div class="row">
                        <div class="col-md-12">
                            <span>show the image of the room which is user selected</span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <span>Room type</span>
                        </div>
                        <div class="col-md-6">
                            <asp:Label ID="lblroomtype" runat="server" Text="show the room type which is user selected"></asp:Label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <span>Dates</span>
                        </div>
                        <div class="col-md-6">
                            <asp:Label ID="lbldates" runat="server" Text="show the dates on which customer will stay"></asp:Label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <span>Guest</span>
                        </div>
                        <div class="col-md-6">
                            <asp:Label ID="lblguest" runat="server" Text="show the number of guest"></asp:Label>
                        </div>
                    </div><hr />
                    <div class="row">
                        <div class="col-md-6">
                            <span>Subtotel</span>
                        </div>
                        <div class="col-md-6">
                            <asp:Label ID="lblsubtotel" runat="server" Text="show the totel price of selected room"></asp:Label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <span>Discount & Gst</span>
                        </div>
                        <div class="col-md-6">
                            <asp:Label ID="lbldiscount" runat="server" Text="show any discount or gst"></asp:Label>
                        </div>
                    </div><hr />
                    <div class="row">
                        <div class="col-md-6">
                            <span>Total</span>
                        </div>
                        <div class="col-md-6">
                            <asp:Label ID="lbltotal" runat="server" Text="show the total amount add with discount or gst"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
