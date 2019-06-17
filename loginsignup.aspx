<%@ Page Language="C#" AutoEventWireup="true" CodeFile="loginsignup.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
   <script src="~/Scripts/jquery-1.7.1.min.js" type="text/javascript"></script>
     <script src="~/Scripts/jquery.validate.min.js" type="text/javascript"></script>
    <script src="~/Scripts/jquery.validate.unobtrusive.min.js" type="text/javascript"></script>
    <link href="Defualt.css" rel="stylesheet" />
    <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
     <style>
        .row{
            margin:0px;
        }
         .nav-tabs > li.active > a, .nav-tabs > li.active > a:focus, .nav-tabs > li.active > a:hover {
              border:none;
              border-bottom-color:none;
              color:#005c99;
              
         }
         .input-group {
                    margin-top:20px;
         }
         .input-group-addon
         {
             background:#fff;
             border:none;
             
         }
         .form-control {
                        border:none;
                        box-shadow:none;
                        border-radius:0px;
                        
          
         }
         .textboxes:focus{
                           border-bottom:1px  solid grey;
                            outline:none;
                            box-shadow:none;    
                            
         }
         .btn1 {
                  color:white;
                  font-size: 16px;
                  font-weight: bold;
                  background:linear-gradient(to right,#4db8ff ,#005c99);
                  border-radius: 3px;
                  border: none;
                  min-width: 140px;
                  outline: none !important;
                  width:540px;
                  height:35px;
                  margin-left:10px;
         }
        .btn1:hover {
                    background-color:#009973;        
             }

         .btn-info
         {
             background-image:linear-gradient(to right ,#4db8ff ,#005c99);
             border:none;
             width:200px;
             height:30px;
             outline:none !important;
             font-size:14px;         
         }
         .nav-tabs > li > a {
             color: black;
             font-size: 20px;
         }
         .errormsg {
         
           
             color:red;
            

         }
    </style>
    <script>
        function name()
        {
            var name = document.getElementById("txtname").value;
           
            if (name == "") {
                document.getElementById("nameerror").innerHTML = "Name is Empty";
            }
            else if(!isNaN(name))
            {
                document.getElementById("nameerror").innerHTML = "Name is invalid";
            }
            else
            {
                document.getElementById("nameerror").innerHTML = "";
            }
        }
        function email()
        {
           
            var email = document.getElementById("txtemail").value;
            var atposition = email.indexOf("@");
            var dotposition = email.dotposition;
            if (email == "") {
                document.getElementById("emailerror").innerHTML = "email is Empty";

            }
            else if (atposition < 1 || dotposition < atposition + 2 || dotposition + 2 >= email.length) {
                document.getElementById("emailerror").innerHTML = "email is not correct";
            }
            else {
                document.getElementById("emailerror").innerHTML = "";
            }
           
        }
        function password()
        {
            var password = document.getElementById("password").value;
            if(password=="")
            {
                document.getElementById("passerror").innerHTML = "password is Empty";
            }
            else {
                document.getElementById("passerror").innerHTML = "";
            }
        }
        function conformpassword()
        {
            var password = document.getElementById("password").value;
            var confpass = document.getElementById("passwordconfirm").value;
            if(confpass=="")
            {
                document.getElementById("confpasserror").innerHTML = "confirm password is Empty";
            }
            else if(password!=confpass)
            {
                document.getElementById("confpasserror").innerHTML = " password not match";
            }
            else {
                document.getElementById("confpasserror").innerHTML = "";
            }
        }
        function state()
        {
            var state = document.getElementById("txtaddress").value;
            if(state=="")
            {
                document.getElementById("stateerror").innerHTML = " state is empty";
            }
            else {
                document.getElementById("stateerror").innerHTML = "";
            }
        }
        function number()
        {
            var number = document.getElementById("txtnumber").value;
            if(number=="")
            {
                document.getElementById("numbererror").innerHTML = " number is empty";
            }
            else if(number.length!=10)
            {
                document.getElementById("numbererror").innerHTML = " number is wrong";
            }
            else if(isNaN(number))
            {
                document.getElementById("numbererror").innerHTML = " enter number value only";
            }
            else {
                document.getElementById("numbererror").innerHTML = "";
            }
        }
        function validate() {
          
            name();
            email();
            number();
           // state();
            password();
            conformpassword();
            
          
        }

            function loginemail()
        {
           
            var loginemail = document.getElementById("loginemail").value;
            var atposition = loginemail.indexOf("@");
            var dotposition = loginemail.dotposition;
            if (loginemail == "") {
                document.getElementById("loginemailerror").innerHTML = "email is Empty";

            }
            else if (atposition < 1 || dotposition < atposition + 2 || dotposition + 2 >= loginemail.length) {
                document.getElementById("loginemailerror").innerHTML = "email is not correct";
            }
            else {
                document.getElementById("loginemailerror").innerHTML = "";
            }
           
        }
        function loginpassword()
        {
            var loginpassword = document.getElementById("loginpass").value;
            if(loginpassword=="")
            {
                document.getElementById("loginpasserror").innerHTML = "password is Empty";
            }
            else {
                document.getElementById("loginpasserror").innerHTML = "";
            }
        }
            function loginvalidate() {
          
            loginemail();
            loginpassword();
            
        }
        

        </script>
</head>
<body>
    <form id="form1"  onsubmit="return false;" runat="server">
    <div class="container">
     <!-- Trigger the modal with a button -->
  <button type="button" class="btn btn-info " data-toggle="modal" data-target="#myModal2" >Make Your A/C &nbsp<span class="glyphicon glyphicon-chevron-down" ></span></button>

  <!-- Modal -->
  <div class="modal fade" id="myModal2" role="dialog" >
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
         <ul class="nav nav-tabs" style="border-bottom:none;">
    <li class="active"><a data-toggle="tab" href="#home" >Sign Up</a></li>
    <li><a data-toggle="tab" href="#menu1">Login</a></li>
    
  </ul>

  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
       <div class="row">
        <div class="col-md-12">

        <h3 style="font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">SIGN UP</h3>

       </div>
             <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-send"></i></span>
            <asp:TextBox ID="txtname" runat="server" placeholder="Enter Your Name" CssClass="form-control textboxes"></asp:TextBox> 
        <div id="nameerror" class="errormsg"></div>
                   </div>
        
            
            

            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-send"></i></span>
            <asp:TextBox ID="txtemail" runat="server" placeholder="Enter Your Email" CssClass="form-control textboxes"></asp:TextBox> 
               <div id="emailerror" class="errormsg"></div>
                 </div>
            <div class="input-group">
                <span class="input-group-addon"><i class="fas fa-user"></i></span>
            <asp:TextBox ID="txtnumber" runat="server" placeholder="Enter Your Number" CssClass="form-control  textboxes"></asp:TextBox> 
            <div id="numbererror" class="errormsg"></div>
                 </div>
            <div class="input-group">
                <span class="input-group-addon"><i class="fas fa-key"></i></span>
            <asp:TextBox ID="password" runat="server" placeholder="Enter Your password" CssClass="form-control  textboxes" TextMode="Password"></asp:TextBox> 
                           <div id="passerror" class="errormsg"></div>
                  </div>
            <div class="input-group">
                <span class="input-group-addon"><i class="fas fa-key"></i></span>
            <asp:TextBox ID="passwordconfirm" runat="server" placeholder="Confirm Your password" CssClass="form-control  textboxes" TextMode="Password"></asp:TextBox> 
                               <div id="confpasserror" class="errormsg"></div>
                 </div>
            <div class="input-group">
                <asp:Button ID="btnsignup" runat="server" Text="Sign Up" CssClass="btn1"  OnClientClick="validate()" />
            </div>
            </div>
           
            
         </div>
     <div id="menu1" class="tab-pane fade">
         <div class="row">
             <div class="col-md-12">
                 <h3 style="font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">LOGIN</h3>
              </div>          
              <div class="input-group">
                <span class="input-group-addon"><i class="fas fa-user"></i></span>
            <asp:TextBox ID="loginemail" runat="server" placeholder="Enter Your Email" CssClass="form-control  textboxes"></asp:TextBox> 
            <div id="loginemailerror" class="errormsg"></div>
              </div>
            <div class="input-group" style="margin-bottom:20px;">
                <span class="input-group-addon"><i class="fas fa-key"></i></span>
            <asp:TextBox ID="loginpass" runat="server" placeholder="Enter Your password" CssClass="form-control  textboxes" TextMode="Password"></asp:TextBox> 
         <div id="loginpasserror" class="errormsg"></div> 
                 </div>
    <asp:Button ID="btnlogin" runat="server" Text="Log In" CssClass="btn1" OnClientClick="loginvalidate()" />
         
            <div class="row">
                <div class="col-md-6">
                    <a href="#">Forget Password ?</a>
                </div>
                <div class="col-md-6">
                    <a href="#" style="margin-left:130px;">Reset Password</a>
                </div>
            </div>
    
             
         </div>

    
    </div>
    

                          
        </div>
 

  </div>      
       
        </div>
      
    </div>
  </div>

  
</div>
        
    </form>
</body>
</html>
