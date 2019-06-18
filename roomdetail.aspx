<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="roomdetail.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        
        .form-control:focus{
            outline:none;
            box-shadow:none;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
        <div class="col-lg-8">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/image/r1.jpg" Height="550px" Width="1000px" /></div>
        <div class="col-lg-4">
            <div class="row" style="margin-top:40px;">
                                <div class="col-md-6">
                                    <asp:Label ID="Label1" runat="server" Text="Check In"></asp:Label>
                                    <asp:TextBox ID="chkin" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-md-6">
                                    <asp:Label ID="Label2" runat="server" Text="Check Out"></asp:Label>
                                    <asp:TextBox ID="chkout" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                </div>
                <div class="row" style="margin-top:40px;">

                                <div class="col-md-6">
                                    <asp:Label ID="Label4" runat="server" Text="Adults"></asp:Label>
                                    <span><i class="fas fa-user"></i></span>
                                    <div class="dropdown">
                                        <asp:DropDownList ID="ddladults" runat="server" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" Style="background: #fff; color: #000;">

                                            <asp:ListItem Value="0">-------------select-------------</asp:ListItem>
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>

                                        </asp:DropDownList>

                                    </div>

                                </div>

                                <div class="col-md-6">
                                    <asp:Label ID="Label3" runat="server" Text="Children"></asp:Label>
                                    <span><i class="fas fa-user"></i></span>
                                    <div class="dropdown">
                                        <asp:DropDownList ID="ddlchildren" runat="server" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" Style="background: #fff; color: #000;">
                                            <asp:ListItem Value="0">-------------select-------------</asp:ListItem>
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>

                                        </asp:DropDownList>
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

