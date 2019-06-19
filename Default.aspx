<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title></title>
    <link rel="stylesheet" href="StyleSheet.css" />
    <link href="booknow.css" rel="stylesheet" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css" />

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

    <link href="https://fonts.googleapis.com/css?family=Encode+Sans+Expanded" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous" />

    <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous' />

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"/>
    <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
    <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       
<div class="row row1" style="margin-top:40px;">
                                <div class="col-md-3">
                                    <asp:Label ID="Label1" runat="server" Text="Check In"></asp:Label>
                                    <asp:TextBox ID="chki" runat="server" CssClass="form-control" style="border:1px solid #ccc;box-shadow:none;padding:5px;"></asp:TextBox>
                                   <input ID="chkin" />
                                     <script>
                                        $('#chkin').datepicker({
                                            uiLibrary: 'bootstrap'
                                         });
                                       </script>
                                </div>
                                <div class="col-md-3">
                                    <asp:Label ID="Label2" runat="server" Text="Check Out"></asp:Label>
                                    <asp:TextBox ID="chkout" runat="server" CssClass="form-control" style="border:1px solid #ccc;box-shadow:none;padding:5px;"></asp:TextBox>
                                    
                                         <script>
                                        $('#chkout').datepicker({
                                         
                                         });
                                   </script>
                                </div>
                                <div class="col-md-3">
                                    <asp:Label ID="Label4" runat="server" Text="Adults"></asp:Label>
                                    <span><i class="fas fa-user"></i></span>
                                    <div class="dropdown">
                                        <asp:DropDownList ID="ddladults" runat="server" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" Style="background: #fff; color: #000;">

                                            <asp:ListItem Value="0">----select----</asp:ListItem>
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>

                                        </asp:DropDownList>

                                    </div>

                                </div>

                                <div class="col-md-3">
                                    <asp:Label ID="Label3" runat="server" Text="Children"></asp:Label>
                                    <span><i class="fas fa-user"></i></span>
                                    <div class="dropdown">
                                        <asp:DropDownList ID="ddlchildren" runat="server" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" Style="background: #fff; color: #000;">
                                            <asp:ListItem Value="0">----select----</asp:ListItem>
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>

                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
</asp:Content>

