<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AvailabilityRoom.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
   <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
    <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"/>

    
     <script type="text/javascript">
                $(document).ready(function () {

                    $(".myCal").datepicker({
                        dateFormat: "dd-M-yy",
                        uiLibrary: 'bootstrap',
                        minDate: 0,
                        onSelect: function (date) {
                            var date2 = $('.myCal').datepicker('getDate');
                            date2.setDate(date2.getDate() + 1);
                            $('.myCall').datepicker('setDate', date2);
                            //sets minDate to dt1 date + 1
                            $('.myCall').datepicker('option', 'minDate', date2);
                        }
                    });
                    $('.myCall').datepicker({
                        dateFormat: "dd-M-yy",
                        
                        onClose: function () {
                            var dt1 = $('.myCal').datepicker('getDate');
                            var dt2 = $('.myCall').datepicker('getDate');
                            //check to prevent a user from entering a date below date of dt1
                            if (dt2 <= dt1) {
                                var minDate = $('#dt2').datepicker('option', 'minDate');
                                $('.myCall').datepicker('setDate', minDate);
                            }
                        }
                    });
                });
                function searchvalidate()
                {
                    checkin();
                    checkout();
                    adult();
                    children();
                    if (checkin() && checkout() && adult() && children()) {
                        return true;
                    }
                    else {
                        return false;
                    }
                }
                function checkout() {
                    var checkout = document.getElementById("ablchkout").value;
                    if (checkout == "") {
                        document.getElementById("checkouterror").innerHTML = " Plese Enter The Check Out Date";
                        return false;
                    }
                    else {
                        document.getElementById("checkouterror").innerHTML = "";
                        return true;
                    }
                }

                function checkin() {
                    var checkin = document.getElementById("ablchkin").value;
                    if (checkin == "") {
                        document.getElementById("checkinerror").innerHTML = " Plese Enter The Check In Date";
                        return false;
                    }
                    else {
                        document.getElementById("checkinerror").innerHTML = "";
                        return true;
                    }
                }

                function adult() {
                    var adult = document.getElementById("ddladults").value;
                    if (cadult == "") {
                        document.getElementById("adulterror").innerHTML = " Plese Select No Of Adults";
                        return false;
                    }
                    else if (isNaN(adult)) {
                        document.getElementById("adulterror").innerHTML = " Wrong Entry ";
                        return false;

                    }
                    else {
                        document.getElementById("adulterror").innerHTML = "";
                        return true;
                    }
                }
         
                function children()
                {
                    var child = document.getElementById("ddlchilds").value;
                    if (child == "") {
                        document.getElementById("childerror").innerHTML = " Plese Select No Of Child ";
                        return false;
                    }
                    else if(isNaN(child))
                    {
                        document.getElementById("childerror").innerHTML = " Wrong Entry ";
                        return false;

                    }
                    else {
                        document.getElementById("childerror").innerHTML = "";
                        return true;
                    }
                }

    </script>

    <style>
       .myCal:focus{
            outline:none;
            box-shadow:none
        }
          .errormsg {
         
           
             color:red;
            

         }
    </style>

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
                 <span id="adulterror" class="errormsg"></span>
                 <asp:Label ID="Label10" runat="server"  Text="Children" style="margin-left:20px"></asp:Label>
                <asp:DropDownList ID="ddlchilds" runat="server" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" Style="background: #fff; color: #000;height:30px;margin-left:5px">
                                            <asp:ListItem Value="0">0</asp:ListItem>
                                            <asp:ListItem Value="1">1</asp:ListItem>
                                            <asp:ListItem Value="2">2</asp:ListItem>
                                            <asp:ListItem Value="3">3</asp:ListItem>
                                            <asp:ListItem Value="2">4</asp:ListItem>
                                        </asp:DropDownList>
            <span id="childerror" class="errormsg"></span>
            </div>
            <div class="col-lg-2">
             <div class="input-group">
                                           
                                        <asp:TextBox ID="ablchkin" runat="server" CssClass="myCal form-control" style="border:1px solid #ccc;box-shadow:none;padding:5px;margin-left:3px;" autocomplete="off" ></asp:TextBox>
                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                             <span id="checkinerror" class="errormsg"></span>
                                        </div>
 
            </div>
            <div class="col-lg-1">
                <asp:Label ID="Label8" runat="server" style="font-family: 'Raleway', sans-serif; font-size: 15px;font-weight: 500; line-height: 1.86;margin-left:20px">To</asp:Label>

             </div>
            <div class="col-lg-2">
           <div class="input-group">
                                           
                                        <asp:TextBox ID="ablchkout" runat="server" CssClass="myCall form-control" style="border:1px solid #ccc;box-shadow:none;padding:5px;margin-left:3px;" autocomplete="off" ></asp:TextBox>
                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                            <span id="checkouterror" class="errormsg"></span>
                                        </div>      
            </div>
            <div class="col-lg-2">
                <asp:Button ID="btnavlmdysearch" runat="server" CssClass="btn btn-danger" Text="Modify Search"  OnClientClick="searchvalidate()"/></div>
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
                                        
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4"></div>
                            
                            <div class="col-md-3">
                                <div class="media-body" style="text-align:">
                                    <h5 class="media-heading headofMedia" style="font-size: 17px">
                                        &#8377; <asp:Label ID="lblSingleAmt" runat="server" Text="1287"></asp:Label><asp:Label ID="Label7" style="font-family: 'Raleway', sans-serif; font-size: 14px;font-weight: 500; line-height: 1.86;margin-left:15px" runat="server" Text="Per Night"></asp:Label></h5>
                                    
                                    <br />
                                    <asp:LinkButton ID="lknbtnSingleBook" class="bookme" runat="server" style="margin-left:10px;text-decoration:none"  Font-Underline="True" OnClick="lknbtnSingleBook_Click" >Book Now</asp:LinkButton>
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
                                        <h4 class="media-heading headofMedia" >
                                            <asp:Label ID="Label11" runat="server" Text="Double Room"></asp:Label></h4>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4"></div>
                            
                            <div class="col-md-3">
                                <div class="media-body" style="text-align:">
                                    <h5 class="media-heading headofMedia" style="font-size: 17px">
                                        &#8377; <asp:Label ID="lblDoubleAmt" runat="server" Text="1287"></asp:Label><asp:Label ID="Label2" style="font-family: 'Raleway', sans-serif; font-size: 14px;font-weight: 500; line-height: 1.86;margin-left:15px" runat="server" Text="Per Night"></asp:Label></h5>
                                    <asp:Label ID="Label18" CssClass="" runat="server" Text=""></asp:Label>
                                    <br />
                                    <asp:LinkButton ID="lnkbtnDoubleBook" class="bookme" runat="server" style="margin-left:10px;text-decoration:none"  Font-Underline="True" OnClick="lnkbtnDoubleBook_Click" >Book Now</asp:LinkButton>
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
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4"></div>
                            
                            <div class="col-md-3">
                                <div class="media-body" style="text-align:">
                                    <h5 class="media-heading headofMedia" style="font-size: 17px">
                                        &#8377; <asp:Label ID="lblLuxuryAmt" runat="server" Text="1287"></asp:Label><asp:Label ID="Label3" style="font-family: 'Raleway', sans-serif; font-size: 14px;font-weight: 500; line-height: 1.86;margin-left:15px" runat="server" Text="Per Night"></asp:Label></h5>
                                    <asp:Label ID="Label26" CssClass="" runat="server" Text=""></asp:Label>
                                    <br />
                                    <asp:LinkButton ID="lnkbtnLuxuryBook" class="bookme" runat="server" style="margin-left:10px;text-decoration:none"  Font-Underline="True" OnClick="lnkbtnLuxuryBook_Click" >Book Now</asp:LinkButton>
                                </div>
                            </div>
                            <div class="col-md-">
                    </div>
             </div>
        </div>
</asp:Content>

