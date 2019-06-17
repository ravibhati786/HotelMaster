<%@ Page Language="C#" AutoEventWireup="true" CodeFile="demo.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="StyleSheet.css" />
 <meta charset="utf-8"/>
 <meta name="viewport" content="width=device-width, initial-scale=1"/>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"/>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
 <link href="https://fonts.googleapis.com/css?family=Encode+Sans+Expanded" rel="stylesheet">   
    
    <style>
        .row{
            margin:0px;
        }
        #myVideo {

  position:absolute;
 z-index:-1;
  min-width: 100%; 
  min-height: 100%;
  margin-left:-51px;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="main-wrapper">
        <div class="row header nav navbar-fixed-top">
            <div class="col-sm-3 logo"> <span class="logo-name">The Unique Hotel</span></div>
            <div class="col-sm-7 nav-bar">

                <nav class="navbar ">
  
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="#">About</a></li>
      <li><a href="#">Room</a></li>
          <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Service
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Dining</a></li>
          <li><a href="#">Guest Room</a></li>
          <li><a href="#">Meeting</a></li>
          <li><a href="#">Event</a></li>
          <li><a href="#">Spa & Gym</a></li>
          <li><a href="#">Pool</a></li>
        </ul>
      </li>
      <li><a href="#">Gallery</a></li>
         <li><a href="#">Contact</a></li>
    </ul>

</nav>

            </div>
            <div class="col-sm-2 btnbook">

                <button type="button" class="btn btn-danger">Book Now</button>
            </div>
        </div>
        <div class="row slider" style="">
            <div class="col-sm-12">Slider
                  <video autoplay muted loop id="myVideo">
  <source src="https://www.vesperhotel.com/wp-content/themes/vesperhotel/video/winter/winter_vp9.webm" type="video/mp4">
</video>

            </div>
        </div>
        <div class="container-fluid">
            <div class="row" style="margin-top:20px">
            <div class="col-sm-4">
          

            </div>
            <div class="col-sm-8" >
           <asp:Image ID="Image2" runat="server" ImageUrl="~/images/Screenshot_2.png" />

            </div>
                </div>
        
        
        
         <div class="row" style="margin-top:20px">
            <div class="col-sm-12" style="margin-top:20px">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Screenshot_1.png" Height="400" Width="100%" />
            </div>

        </div>
        </div>
       <div class="footer" style="margin-top:20px;margin-bottom:20px;">
        <div class="row">
            <div class="col-sm-3" ><h3 style="margin-left:38px; font-family: Cinzel Decorative;color:#b0914f;">The Unique Hotel</h3></div>
            <div class="col-sm-3"><h3 style="margin-left:38px;font-family: Cinzel Decorative; color:#b0914f;">Company</h3></div>
            <div class="col-sm-3"><h3 style="margin-left:38px;font-family: Cinzel Decorative; color:#b0914f;">Services</h3></div>
            <div class="col-sm-3"><h3 style="font-family: Cinzel Decorative;color:#b0914f;">Sign up for NewLetter</h3></div>

        </div>
           <div class="row">
            
                <div class="col-sm-3 col1">
                    <ul>
                        <li>+91 998 3044 487</li>
                        <li>supporttheuniquehotel@gmail.com </li>
                        <li>Gajanan maharaj temple </li>
                    </ul>
                </div>
                <div class="col-sm-3 col2">
                    <ul>
                        <li><i class="glyphicon glyphicon-menu-right"></i>Home</li>
                        <li><i class="glyphicon glyphicon-menu-right"></i>About Us</li>
                        <li><i class="glyphicon glyphicon-menu-right"></i>Room</li>
                        <li><i class="glyphicon glyphicon-menu-right"></i>Services</li>
                        <li><i class="glyphicon glyphicon-menu-right"></i>Gallery</li>
                        <li><i class="glyphicon glyphicon-menu-right"></i>Contact</li>
                    </ul>
                </div>
                <div class="col-sm-3 col3">
                    <ul>
                        <li><i class="glyphicon glyphicon-menu-right"></i>Dining</li>
                        <li><i class="glyphicon glyphicon-menu-right"></i>Guest Room</li>
                        <li><i class="glyphicon glyphicon-menu-right"></i>Meeting</li>
                        <li><i class="glyphicon glyphicon-menu-right"></i>Events</li>
                        <li><i class="glyphicon glyphicon-menu-right"></i>Spa</li>
                        <li><i class="glyphicon glyphicon-menu-right"></i>Gym</li>
                        <li><i class="glyphicon glyphicon-menu-right"></i>Pool</li>
                    </ul>
                </div>
                <div class="col-sm-3 col4">
                    <form>
    <div class="input-group col44">
      <input id="email" type="text" class="form-control" name="email" placeholder="Your Email" style="border-right:none;height:50px">
        <span class="input-group-addon" style="background:#fff"><i class="glyphicon glyphicon-send"></i></span>
    </div>
                        </form>

                </div>
            </div>
        </div>
    
    </div>
    
    </form>
</body>
</html>
