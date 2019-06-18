<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AvailabilityRoom.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="row" style="margin-top:50px;margin-bottom:20px;box-shadow:1px 1px 6px silver;padding:20px">
            <div class="col-lg-5">
                <asp:Label ID="Label6" runat="server" Text="Label">Availability : </asp:Label>

            </div>
            <div class="col-lg-2">
                <asp:Label ID="lblablchkdate" runat="server" Text="Label">15-5-2018</asp:Label>

            </div>
            <div class="col-lg-1">
                <asp:Label ID="Label8" runat="server" Text="Label">To</asp:Label>

            </div>
            <div class="col-lg-4">
                <asp:Label ID="lblabloutdate" runat="server" Text="Label">117-5-2018</asp:Label>

            </div>

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
                                        <asp:Label ID="Label2" runat="server" CssClass="txt-col" Text="2 Guest "></asp:Label><br />
                                        <asp:Label ID="Label3" runat="server" CssClass="txt-col" Text="1 Rooms"></asp:Label><br />
                                        <asp:Label ID="Label7" runat="server" CssClass="txt-col" Text="1 Nights"></asp:Label>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3"></div>
                            
                            <div class="col-md-2">
                                <div class="media-body" style="text-align: right">
                                    <h5 class="media-heading headofMedia" style="font-size: 17px">
                                        <asp:Label ID="Label4" runat="server" Text="Amt. 1287"></asp:Label></h5>
                                    <asp:Label ID="Label5" CssClass="txt-col " runat="server" Text=""></asp:Label>
                                    <br />
                                    <asp:LinkButton ID="LinkButton2" CssClass="txt-col" runat="server" Font-Underline="True">View Details</asp:LinkButton>
                                </div>
                            </div>
                            <div class="col-md-2">
                                
                            </div>
                        </div>
        </div>
</asp:Content>

