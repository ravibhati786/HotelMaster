﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AvailabilityRoom.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <link href="room.css" rel="stylesheet" />
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"/>
    <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
    <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />

    <style>
                .gj-datepicker-md [role=right-icon] {
    position: absolute;
    right: 0;
    top: 6px;
    font-size: 24px;
}






    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="row" style="margin-top:50px;margin-bottom:20px;box-shadow:1px 1px 6px silver;padding:20px">
            <div class="col-lg-5">
                <asp:Label ID="Label6" runat="server"  style="font-family: 'Raleway', sans-serif; font-size: 15px;font-weight: 500; line-height: 1.86;">Availability : </asp:Label>

            </div>
            <div class="col-lg-2">
      <input id="ablchkin" class="form-control" style="border:1px solid #ccc;box-shadow:none;padding:5px;" />
    <script>
        $('#ablchkin').datepicker({
           minDate: today
        });
    </script>

            </div>
            <div class="col-lg-1">
                <asp:Label ID="Label8" runat="server" style="font-family: 'Raleway', sans-serif; font-size: 15px;font-weight: 500; line-height: 1.86;">To</asp:Label>

            </div>
            <div class="col-lg-2">
               
                <input id="ablchkout" class="form-control" style="border:1px solid #ccc;box-shadow:none;padding:5px;"/>
    <script>
        $('#ablchkout').datepicker({
            uiLibrary: 'bootstrap', minDate: new Date()
        });
    </script>
                <script>
                                        var date = new Date();
                                        var today = new Date(date.getFullYear(), date.getMonth(), date.getDate());
                                        $('#ablchkin').datepicker({ uiLibrary: 'bootstrap', minDate: today });
                                    </script>
            </div>
            <div class="col-lg-2"></div>
        </div>
    <div class="row" style="margin-top:50px;margin-bottom:200px;box-shadow:1px 1px 6px silver;padding:20px">
                            <div class="col-md-5">
                                <div class="media">
                                    <div class="media-left">
                                        <img src="image/r1.jpg" class="media-object" style="width: 150px" />
                                    </div>
                                    <div class="media-body">
                                        <h4 class="media-heading headofMedia">
                                            <asp:Label ID="Label1" runat="server" Text="Single Room"></asp:Label></h4>
                                        <asp:Label ID="Label2" runat="server" CssClass="txt-col" Text="2 Adults "></asp:Label><br />
                                        <asp:Label ID="Label3" runat="server" CssClass="txt-col" Text="1 Children"></asp:Label><br />
                                        <asp:Label ID="Label7" runat="server" CssClass="txt-col" Text="1 Nights"></asp:Label>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4"></div>
                            
                            <div class="col-md-3">
                                <div class="media-body" style="text-align:">
                                    <h5 class="media-heading headofMedia" style="font-size: 17px">
                                        <asp:Label ID="Label4" runat="server" Text="Amt. 1287"></asp:Label></h5>
                                    <asp:Label ID="Label5" CssClass="" runat="server" Text=""></asp:Label>
                                    <br />
                                    <asp:LinkButton ID="LinkButton2" class="bookme" style="text-decoration:none" runat="server" Font-Underline="True" PostBackUrl="~/roomdetail.aspx" >View Details</asp:LinkButton><asp:LinkButton ID="LinkButton1" class="bookme" runat="server" style="margin-left:10px;text-decoration:none"  Font-Underline="True" PostBackUrl="~/mybooking.aspx" >Book Now</asp:LinkButton>
                                </div>
                            </div>
                            <div class="col-md-">
                                
                            </div>
                        </div>




        </div>
</asp:Content>

