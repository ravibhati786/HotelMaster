<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="paymentpage.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link href="paymentpage.css" rel="stylesheet" />

    <style>
            .errormsg {
            
             color:red;
            
         }
    </style>
    <script>
        function cardno()
        {
            var no = document.getElementById("txtcardnumber").value;
            var lengths = no.length;
            var value = no[0];
          
             if(no=="")
            {
                 document.getElementById("cardnoerror").innerHTML = " card no is empty";

            }
       else if(lengths!=16)
            {
                document.getElementById("cardnoerror").innerHTML = "invalid card no";
          }
          else if(isNaN(no))
          {

              document.getElementById("cardnoerror").innerHTML = "enter only number";
          }
          else if(value!=4)
          {
              document.getElementById("cardnoerror").innerHTML = "invalid card no";
          }
            else
            {
              document.getElementById("cardnoerror").innerHTML = "";
              
            } 
        }
        function cardname() {
            var name = document.getElementById("txtnameonthecard").value;

            if (name == "") {
                document.getElementById("cardnameerror").innerHTML = "Name is Empty";
            }
            else if (!isNaN(name)) {
                document.getElementById("cardnameerror").innerHTML = "Name is invalid";
            }
            else {
                document.getElementById("cardnameerror").innerHTML = "";
            }
        }
        function cvvno()
        {

            var no = document.getElementById("txtcvv").value;
            var lengths = no.length;


            if (no == "") {
                document.getElementById("cvverror").innerHTML = " card no is empty";
            }
            else if (lengths!=3) {
                document.getElementById("cvverror").innerHTML = "invalid card no";
            }
            else if (isNaN(no)) {

                document.getElementById("cvverror").innerHTML = "enter only number";
            }
            else {
                document.getElementById("cardnoerror").innerHTML = "";
            }
        }
        function paymentvalidate()
        {
            
            cardno();
            cardname();
            cvvno();
            
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="container" style="border:none; margin-top:200px;margin-bottom:100px; border-radius:3px; box-shadow:4px 4px 8px silver; background-color:#333333;">
         <div style="margin-top:5px;">
            

    
     
         <div style="margin-top:20px;">
            <ul class="nav  nav-tabs" style="border:none;">

                <li class="active"><a  data-toggle="tab" href="#Debitcard">Debitcard</a></li>
                <li><a  data-toggle="tab" href="#Netbanking">Netbanking</a></li>
                <li><a  data-toggle="tab" href="#GooglePay">GooglePay</a></li>
                <li><a href="#">Menu 3</a></li>
            </ul>
         <div class="row" style="background-color:#e0ebeb;">
             <div class="col-md-12">
         <div class="tab-content" style="margin-top:30px;">
             <div id="Debitcard" class="tab-pane fade in active">
                 <div class="row">
                     <div class="col-md-12">
                    
                     </div>
                 </div>
                 <div class="row">
                     <div class="col-md-6">
                         <asp:Label ID="lblcardnumber" runat="server" Text="Card Number"></asp:Label>
                         <asp:TextBox ID="txtcardnumber" runat="server" CssClass="form-control" Width="74%"></asp:TextBox>
                     <div id="cardnoerror" class="errormsg"></div>
                          </div>
                     <div class="col-md-6">
                         <asp:Label ID="lblnameonthecard" runat="server" Text="Name On The Card"></asp:Label>
                         <asp:TextBox ID="txtnameonthecard" runat="server" CssClass="form-control" Width="74%"></asp:TextBox>
                  <div id="cardnameerror" class="errormsg"></div>
                            </div>
                 </div>
                 <div class="row">
                     <div class="col-md-3" style="margin-top:2%;">
                         
                         <asp:DropDownList ID="ddlmonth" runat="server" CssClass="form-control" Width="45%">
                             <asp:ListItem Value="0">Month</asp:ListItem>
                             <asp:ListItem Value="1">01</asp:ListItem>
                             <asp:ListItem Value="2">02</asp:ListItem>
                             <asp:ListItem Value="3">03</asp:ListItem>
                             <asp:ListItem Value="4">04</asp:ListItem>
                             <asp:ListItem Value="5">05</asp:ListItem>
                             <asp:ListItem Value="6">06</asp:ListItem>
                             <asp:ListItem Value="7">07</asp:ListItem>
                             <asp:ListItem Value="8">08</asp:ListItem>
                             <asp:ListItem Value="9">09</asp:ListItem>
                             <asp:ListItem Value="10">10</asp:ListItem>
                             <asp:ListItem Value="11">11</asp:ListItem>
                             <asp:ListItem Value="12">12</asp:ListItem>
                         </asp:DropDownList>       

                     </div>
                     <div class="col-md-3" style="margin-top:2%; ">
                         
                         <asp:DropDownList ID="ddlyear" runat="server" CssClass="form-control" Width="45%">
                             <asp:ListItem Value="0">year</asp:ListItem>
                             <asp:ListItem Value="1">2019</asp:ListItem>
                             <asp:ListItem Value="2">2020</asp:ListItem>
                             <asp:ListItem Value="3">2021</asp:ListItem>
                             <asp:ListItem Value="4">2022</asp:ListItem>
                             <asp:ListItem Value="5">2023</asp:ListItem>
                             <asp:ListItem Value="6">2024</asp:ListItem>
                             <asp:ListItem Value="7">2025</asp:ListItem>
                             <asp:ListItem Value="8">2026</asp:ListItem>
                             <asp:ListItem Value="9">2027</asp:ListItem>
                             <asp:ListItem Value="10">2028</asp:ListItem>
                             <asp:ListItem Value="11">2029</asp:ListItem>
                             <asp:ListItem Value="12">3000</asp:ListItem>
                         </asp:DropDownList>       

                     </div>
                     <div class="col-md-6">
                         <asp:Label ID="lblcvv" runat="server" Text="Cvv"></asp:Label>
                         <asp:TextBox ID="txtcvv" runat="server" CssClass="form-control" Width="20%"></asp:TextBox>
                        <div id="cvverror" class="errormsg"></div>
                          </div>
                 </div>
                 <div class="row">
                     <div class="col-md-6">
                         <p>Rs: <asp:Label ID="lblprice" runat="server" Text="1000" style="color:red;font-size:30px;"></asp:Label></p>
                     </div>
                     <div class="col-md-6">

                        <asp:Button ID="btnmakepayment" runat="server" Text="Make Payment" OnClientClick="paymentvalidate()"  CssClass="formakepayment"/>

                     </div>
                 </div>
             </div>
             <div id="Netbanking" class="tab-pane fade" style="margin-bottom:2%;">
                 <div class="row">
                     <div class="col-md-12">
                         <span style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;">Pay Using Net Banking. You will be required to login ID and password. </span>
                     </div>
                 </div>
                 <div class="row">
                     <div class="col-md-6" >
                         
                         <asp:DropDownList ID="ddlbanks" runat="server" CssClass="form-control" Width="70%">
                             <asp:ListItem Value="0">Select Your Banks</asp:ListItem>
                             <asp:ListItem Value="1">Axis Bank</asp:ListItem>
                             <asp:ListItem Value="2">Bank Of Baroda Bank</asp:ListItem>
                             <asp:ListItem Value="3">Punjab National Bank</asp:ListItem>
                             <asp:ListItem Value="4">Sbi Bank</asp:ListItem>
                             <asp:ListItem Value="5">HDFC Bank</asp:ListItem>
                             <asp:ListItem Value="6">Union Bank</asp:ListItem>
                             <asp:ListItem Value="7">BOI bank</asp:ListItem>
                             <asp:ListItem Value="8">----</asp:ListItem>
                             <asp:ListItem Value="9">----</asp:ListItem>
                             <asp:ListItem Value="10">----</asp:ListItem>
                             <asp:ListItem Value="11">----</asp:ListItem>
                             <asp:ListItem Value="12">----</asp:ListItem>
                         </asp:DropDownList>       
                          <p>Rs: <asp:Label ID="lblprice1" runat="server" Text="1000" style="color:red;font-size:30px;"></asp:Label></p>
                     </div>
                    <div class="col-md-6">
                        <asp:Button ID="btnmakepayment2" runat="server" Text="Make Payment" CssClass="formakepayment"/>
                    </div>
                     </div>
             </div>


             <div id="GooglePay" class="tab-pane fade" style="margin-bottom:2%;">
                 <div class="row">
                     <div class="col-md-5">
                            <span>1.  Enter VPA<i><h6> you must have a Virtual Payment Address </h6></i></span>
                         <asp:TextBox ID="txtupiid" runat="server" placeholder="Enter UPI ID" CssClass="form-control" Width="45%"></asp:TextBox>     
                     </div>
                     <div class="col-md-2">
                         <p style="font-size:20px; margin-top:55px;">@</p>
                     </div>
                     <div class="col-md-5">
                          <span>2.  Receive payment request on bank app<i><h6> keep your smart phone handy </h6></i></span>
                         <asp:DropDownList ID="ddlokbanks" runat="server" CssClass="form-control" Width="45%">
                             <asp:ListItem Value="1">okicici</asp:ListItem>
                             <asp:ListItem Value="2">okaxis</asp:ListItem>
                             <asp:ListItem Value="3">okhdfcbank</asp:ListItem>
                             <asp:ListItem Value="4">oksbi</asp:ListItem>
                          </asp:DropDownList>
                     </div>
                 </div>
                 <div class="row">
                     <div class="col-md-6">
                            <span>3.  Authorize payment request <i> <h6>Go to  transaction in bank app to  approve </h6></i></span>
                             <p>Rs: <asp:Label ID="lblprice2" runat="server" Text="1000" style="color:red;font-size:30px;"></asp:Label></p> 
                     </div>
                     <div class="col-md-6">
                          <asp:Button ID="btnmakepayment3" runat="server" Text="Make Payment" CssClass="formakepayment"/>
                     </div>
                 </div>
             </div>
         </div>
        </div>
        </div>
            
    </div>    
    </div>
             </div>

</asp:Content>

