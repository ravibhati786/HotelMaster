<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="mybooking.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link href="mybooking.css" rel="stylesheet" />
    <style>
          .errormsg {
         
           
             color:red;
            

         }
    </style>
    <script>
        function reservevalidate()
        {
            
                rname();
                rlastname();
                remail();
                rnumberr();
                if (rname() && remail() && rnumber() && rlastname()) {
                    return true;
                }
                else {
                    return false;
                }
        }
        function rname() {
            var fname = document.getElementById("txtfirstname").value;
            if (fname == "") {
                document.getElementById("rnameerror").innerHTML = "Name is Empty";
                return false;
            }
            else if (!isNaN(fname)) {
                document.getElementById("rnameerror").innerHTML = "Name is invalid";
                return false;
            }
            else {
                document.getElementById("rnameerror").innerHTML = "";
                return true;
            }
        }

        function rlastname() {
            var lastname = document.getElementById("txtlastname").value;

            if (lastname == "") {
                document.getElementById("rlastnameerror").innerHTML = "Name is Empty";
                return false;
            }
            else if (!isNaN(lastname)) {
                document.getElementById("rlastnameerror").innerHTML = "Name is invalid";
                return false;
            }
            else {
                document.getElementById("rlastnameerror").innerHTML = "";
                return true;
            }
        }

        function remail() {

            var email = document.getElementById("txtemail").value;
            var atposition = email.indexOf("@");
            var dotposition = email.dotposition;
            if (email == "") {
                document.getElementById("remailerror").innerHTML = "email is Empty";
                return false;
            }
            else if (atposition < 1 || dotposition < atposition + 2 || dotposition + 2 >= email.length) {
                document.getElementById("remailerror").innerHTML = "email is not correct";
                return false;
            }
            else {
                document.getElementById("remailerror").innerHTML = "";
                return true;
            }

        }

        function rnumber() {
            var number = document.getElementById("txtphone").value;
            if (number == "") {
                document.getElementById("rnumbererror").innerHTML = " number is empty";
                return false;
            }
            else if (number.length != 10) {
                document.getElementById("rnumbererror").innerHTML = " number is wrong";
                return false;
            }
            else if (isNaN(number)) {
                document.getElementById("rnumbererror").innerHTML = " enter number value only";
                return false;
            }
            else {
                document.getElementById("rnumbererror").innerHTML = "";
                return true;
            }
        }
    </script>
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
                            <div id="rnameerror" class="errormsg"></div>
                        </div>
                        <div class="col-md-6">
                            <span>Last Name</span>
                            <asp:TextBox ID="txtlastname" runat="server" CssClass="form-control"></asp:TextBox>
                            <div id="rlastnameerror" class="errormsg"></div>
                        </div>
                    </div>
                    <div class="row textboxes1">
                        <div class="col-md-6">
                            <span>Email Address</span>
                            <asp:TextBox ID="txtemail" runat="server" CssClass="form-control"></asp:TextBox>
                            <div id="remailerror" class="errormsg"></div>
                        </div>
                        <div class="col-md-6">
                            <span>Phone Number</span>
                            <asp:TextBox ID="txtphone" runat="server" CssClass="form-control"></asp:TextBox>
                            <div id="rnumbererror" class="errormsg"></div>
                        </div>
                    </div>
                    <div class="row textboxes1" >
                        <div class="col-md-6 input-group">
                            <asp:TextBox ID="txtCoupon" runat="server" CssClass="form-control" placeholder="Enter Coupon here" style="width:75%;margin-left:15px"></asp:TextBox>
                            <asp:Button ID="btnApply" CssClass="btn btn-primary" runat="server" Text="Apply" OnClick="btnApply_Click" />
                       
                        </div>
                            
                        <div class="col-md-6">
                            <span id="spnErrorCoupon" runat="server" style="color:red"> Coupon is expired or may be not valid for you! </span>
                        </div>
                    </div>
                    <div class="row textboxes1">
                        <div class="col-md-8">
                            
                        </div>
                        <div class="col-md-4">
                            <asp:Button ID="btnreserve" runat="server" Text="Reserve Your Room" CssClass="reserve" OnClick="btnreserve_Click" OnClientClick="return reservevalidate();"/>
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

