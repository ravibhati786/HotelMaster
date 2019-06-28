<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Details.aspx.cs" Inherits="Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .row > .col-md-6 > h3 {
            margin-top: 5px;
            margin-bottom: 5px;
        }

        hr {
            border: .5px solid black;
        }

        .txt-col {
            color: grey;
        }

        .rstyle > .col-md-4 > p {
            color: grey;
            margin-bottom: 3px;
        }

        .rstyle > .col-md-4 > h4 {
            margin-top: 1px;
            font-weight: 550;
            font-family: sans-serif;
            font-size: 20px;
            color: rgba(0,0,0,0.7);
        }
        .rowtable>tbody>tr>td{
            width:15em;
        }
        tr>td:last-child{
            text-align:right
        }
        .table>tbody>tr>td{
            padding-top:2em;
            padding-bottom:1.5em;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <span class="txt-col">Booking ID</span>
                <h3>
                    TUH<asp:Label ID="lblbookingid" runat="server" Text="LABEL"></asp:Label></h3>
            </div>
            <div class="col-md-6" style="text-align: right">
                <p class="txt-col" style="padding-top: 3%">
                    Booked By
                    <asp:Label ID="lblBy" runat="server" Text="Ravi Kumar  Mon, 15 Oct 2018"></asp:Label>
                     on 
                    <asp:label id="lblon" runat="server" text="Label"></asp:label>
                </p>
            </div>
        </div>
        <hr />
        <div class="row">
            <div class="col-md-2">
                <h3>
                    <asp:Label ID="lblCheckIn" runat="server" Text="Oct 15"></asp:Label>
                </h3>
            </div>
            <div class="col-md-1" style="padding-top: 1em; padding-left: 0;">
                <h4>
                    <asp:Label ID="lblNights" runat="server" Text="1"></asp:Label> Night
                </h4>
            </div>
            <div class="col-md-2" style="padding-left: 2em">
                <h3>
                    <asp:Label ID="lblCheckOut" runat="server" Text="Oct 16"></asp:Label>
                </h3>
            </div>
            <div class="col-md-2" style="text-align: center">
                <h3>
                    <asp:Label ID="lblGuests" runat="server" Text="2"></asp:Label> Guests
                </h3>
            </div>
            <div class="col-md-5" style="text-align: center">
                <h3>
                    1 <asp:Label ID="lblRoomType" runat="server" Text="Single "></asp:Label> Room
                </h3>
            </div>
        </div>
        <div class="row rstyle" style="padding-top: 3em">
            <div class="col-md-4">
                <p>PRIMARY GUEST </p>
                <h4>
                    <asp:Label ID="lblGuestName" runat="server" Text="Label"></asp:Label>
                </h4>
            </div>
            <div class="col-md-4">
                <p>Mobile Number </p>
                <h4>
                    <asp:Label ID="lblGuestPhone" runat="server" Text="9782246151"></asp:Label>
                </h4>
            </div>
            <div class="col-md-4">
                <p>Email ID </p>
                <h4>
                    <asp:Label ID="lblGuestMail" runat="server" Text="ravibhati786@gmail.com"></asp:Label>
                </h4>
            </div>
        </div>
        <div class="row" style="padding-top:2em; padding-bottom:2em">
            <div class="table-responsive">
            <table class="table rowtable">
                <tbody>
                    <tr>
                        <td>Room Tariff</td>
                        <td>
                            <asp:Label ID="lblTariff" runat="server" Text="1980"></asp:Label>
                             x 1 Night
                        </td>
                        <td> &#8377; <asp:Label ID="lblRoomPrice" runat="server" Text="1980"></asp:Label></td>
                    </tr>
                    <tr>
                        <td>Discounts</td>
                        <td> Coupon Discount </td>
                        <td> -&#8377; <asp:Label ID="lblDiscount" runat="server" Text="693"></asp:Label></td>
                    </tr>
                </tbody>
                <tfoot>
                    <tr>
                        <td colspan="2"> <h3> Total Amount </h3></td>
                        <td> <h3>&#8377; <asp:Label ID="lbltotal" runat="server" Text="1980"></asp:Label> </h3> </td>
                    </tr>
                </tfoot>
            </table>
            </div>
        </div>
        <hr />
    </div>
</asp:Content>

