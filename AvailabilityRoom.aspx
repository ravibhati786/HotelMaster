<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AvailabilityRoom.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="row" style="margin-top:50px;margin-bottom:20px;box-shadow:1px 1px 6px silver;padding:20px">
            <div class="col-lg-5">
                <asp:Label ID="Label6" runat="server"  style="font-family: 'Raleway', sans-serif; font-size: 15px;font-weight: 500; line-height: 1.86;">Availability : </asp:Label>
                <asp:Label ID="Label9" runat="server"  Text="Adults " style="margin-left:30px"></asp:Label>
                <asp:DropDownList ID="ddladults" runat="server" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" Style="background: #fff; color: #000;height:30px;margin-left:5px">
                                            
                                            <asp:ListItem Value="1">1</asp:ListItem>
                                            <asp:ListItem Value="2">2</asp:ListItem>
                                            <asp:ListItem Value="3">3</asp:ListItem>
                                            <asp:ListItem Value="4">4</asp:ListItem>
                                        </asp:DropDownList>
                 <asp:Label ID="Label10" runat="server"  Text="Children" style="margin-left:20px"></asp:Label>
                <asp:DropDownList ID="ddlchilds" runat="server" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" Style="background: #fff; color: #000;height:30px;margin-left:5px">
                                            <asp:ListItem Value="0">0</asp:ListItem>
                                            <asp:ListItem Value="1">1</asp:ListItem>
                                            <asp:ListItem Value="2">2</asp:ListItem>
                                            <asp:ListItem Value="3">3</asp:ListItem>
                                            <asp:ListItem Value="2">4</asp:ListItem>
                                        </asp:DropDownList>
            </div>
            <div class="col-lg-2">
                <asp:TextBox ID="ablchkin" class="form-control" runat="server" style="border:1px solid #ccc;box-shadow:none;padding:5px;" ></asp:TextBox>
        
            </div>
            <div class="col-lg-1">
                <asp:Label ID="Label8" runat="server" style="font-family: 'Raleway', sans-serif; font-size: 15px;font-weight: 500; line-height: 1.86;margin-left:20px">To</asp:Label>

            </div>
            <div class="col-lg-2">
                <asp:TextBox ID="ablchkout" class="form-control" runat="server" style="border:1px solid #ccc;box-shadow:none;padding:5px;"></asp:TextBox>               
              
            
            </div>
            <div class="col-lg-2"></div>
        </div>
    <div id="divsingle" runat="server" class="row" style="margin-top:50px;box-shadow:1px 1px 6px silver;padding:20px">
                            <div class="col-md-5">
                                <div class="media">
                                    <div class="media-left">
                                        <img src="image/r1.jpg" class="media-object" style="width: 150px" />
                                    </div>
                                    <div class="media-body">
                                        <h4 class="media-heading headofMedia">
                                            <asp:Label ID="Label1" runat="server" Text="Single Room"></asp:Label></h4>
                                        <asp:Label ID="lblavladults" runat="server"  Text="2"></asp:Label><asp:Label ID="Label2" runat="server"  Text="Adults" style="margin-left:5px"></asp:Label><br />
                                         <asp:Label ID="lblavlchild" runat="server"  Text="1"></asp:Label><asp:Label ID="Label3" runat="server"  Text="Children" style="margin-left:5px"></asp:Label><br />
                                        <asp:Label ID="Label7" runat="server" Text="1 Nights"></asp:Label>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4"></div>
                            
                            <div class="col-md-3">
                                <div class="media-body" style="text-align:">
                                    <h5 class="media-heading headofMedia" style="font-size: 17px">
                                        &#8377; <asp:Label ID="lblSingleAmt" runat="server" Text="1287"></asp:Label></h5>
                                    <asp:Label ID="Label5" CssClass="" runat="server" Text=""></asp:Label>
                                    <br />
                                    <asp:LinkButton ID="lnkbtnSingleDetails" class="bookme" style="text-decoration:none" runat="server" Font-Underline="True" >View Details</asp:LinkButton>
                                    <asp:LinkButton ID="lknbtnSingleBook" class="bookme" runat="server" style="margin-left:10px;text-decoration:none"  Font-Underline="True" >Book Now</asp:LinkButton>
                                </div>
                            </div>
                            <div class="col-md-">
                                
                            </div>
                        </div>

     <div id="divdouble" runat="server" class="row" style="margin-top:10px;box-shadow:1px 1px 6px silver;padding:20px">
                            <div class="col-md-5">
                                <div class="media">
                                    <div class="media-left">
                                        <img src="image/r2.jpg" class="media-object" style="width: 150px" />
                                    </div>
                                    <div class="media-body">
                                        <h4 class="media-heading headofMedia">
                                            <asp:Label ID="Label11" runat="server" Text="Double Room"></asp:Label></h4>
                                        <asp:Label ID="Label12" runat="server"  Text="2"></asp:Label><asp:Label ID="Label13" runat="server"  Text="Adults" style="margin-left:5px"></asp:Label><br />
                                         <asp:Label ID="Label14" runat="server"  Text="1"></asp:Label><asp:Label ID="Label15" runat="server"  Text="Children" style="margin-left:5px"></asp:Label><br />
                                        <asp:Label ID="Label16" runat="server" Text="1 Nights"></asp:Label>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4"></div>
                            
                            <div class="col-md-3">
                                <div class="media-body" style="text-align:">
                                    <h5 class="media-heading headofMedia" style="font-size: 17px">
                                        &#8377; <asp:Label ID="lblDoubleAmt" runat="server" Text="1287"></asp:Label></h5>
                                    <asp:Label ID="Label18" CssClass="" runat="server" Text=""></asp:Label>
                                    <br />
                                    <asp:LinkButton ID="lnkbtnDoubleDetails" class="bookme" style="text-decoration:none" runat="server" Font-Underline="True" >View Details</asp:LinkButton>
                                    <asp:LinkButton ID="lnkbtnDoubleBook" class="bookme" runat="server" style="margin-left:10px;text-decoration:none"  Font-Underline="True" >Book Now</asp:LinkButton>
                                </div>
                            </div>
                            <div class="col-md-">
                                
                            </div>
                        </div>

     <div id="divluxury" runat="server" class="row" style="margin-top:10px;margin-bottom:80px;box-shadow:1px 1px 6px silver;padding:20px">
                            <div class="col-md-5">
                                <div class="media">
                                    <div class="media-left">
                                        <img src="image/r4.jpg" class="media-object" style="width: 150px" />
                                    </div>
                                    <div class="media-body">
                                        <h4 class="media-heading headofMedia">
                                            <asp:Label ID="Label19" runat="server" Text="Luxury Room"></asp:Label></h4>
                                        <asp:Label ID="Label20" runat="server"  Text="2"></asp:Label><asp:Label ID="Label21" runat="server"  Text="Adults" style="margin-left:5px"></asp:Label><br />
                                         <asp:Label ID="Label22" runat="server"  Text="1"></asp:Label><asp:Label ID="Label23" runat="server"  Text="Children" style="margin-left:5px"></asp:Label><br />
                                        <asp:Label ID="Label24" runat="server" Text="1 Nights"></asp:Label>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4"></div>
                            
                            <div class="col-md-3">
                                <div class="media-body" style="text-align:">
                                    <h5 class="media-heading headofMedia" style="font-size: 17px">
                                        &#8377; <asp:Label ID="lblLuxuryAmt" runat="server" Text="1287"></asp:Label></h5>
                                    <asp:Label ID="Label26" CssClass="" runat="server" Text=""></asp:Label>
                                    <br />
                                    <asp:LinkButton ID="lnkbtnLuxuryDetails" class="bookme" style="text-decoration:none" runat="server" Font-Underline="True" >View Details</asp:LinkButton>
                                    <asp:LinkButton ID="lnkbtnLuxuryBook" class="bookme" runat="server" style="margin-left:10px;text-decoration:none"  Font-Underline="True" >Book Now</asp:LinkButton>
                                </div>
                            </div>
                            <div class="col-md-">
                    </div>
             </div>
        </div>
</asp:Content>

