<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ABOUT.aspx.cs" Inherits="MINI_PROJECT.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
 .navbar {
    font-family: Montserrat, sans-serif;
    margin-bottom: 0;
    background-color: #2d2d30;
    border: 0;
    font-size: 11px !important;
    letter-spacing: 4px;
    opacity: 0.9;
  }
  .navbar li a, .navbar .navbar-brand { 
    color: #d5d5d5 !important;
  }
  .navbar-nav li a:hover {
    color: #fff !important;
  }
  .navbar-nav li.active a {
    color: #fff !important;
    background-color: #29292c !important;
  }
  .navbar-default .navbar-toggle {
    border-color: transparent;
  }
  .open .dropdown-toggle 
  {
    color: #fff;
    background-color: #555 !important;
  }
  .dropdown:hover>.dropdown-menu
  {
      display:block
      }
  .dropdown-menu li a {
    color: #000 !important;
  }
  .dropdown-menu li a:hover {
    background-color: red !important;
  }
  
  
  
  </style>
    <title></title>
</head>
<body>
    
     <form id="Form2" runat="server">
   <table class="nav-justified" 
        style="border-style: hidden; background-color: #010506">
        <tr>
            <td style="border-style: hidden; background-color: #010506;">
                &nbsp;</td>
            <td class="style1">
               <a href="HOME.aspx"> <img src="Images/MINI%20LOGO.jpg" /></a> </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

     <nav class="navbar navbar-inverse navbar-static-top" data-spy="affix" data-offset-top="197">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="HOME.aspx">HOME</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">LOGIN
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
          <li><a href="LOGIN.aspx">ADMIN LOGIN</a></li> 
            <li><a href="LOGIN.aspx">STAFF LOGIN</a></li>
            <li><a href="LOGIN.aspx">STUDENTS LOGIN</a></li> 
          </ul>
           <li><a href="ABOUT_US.aspx">ABOUT US</a></li>
          <li><a href="#contact">CONTACT</a></li>
      </ul>
    </div>
  </div>
</nav>
    
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="Images/1.jpg" alt="0" width="1200" height="400">
        <div class="carousel-caption">
          <h3>SAM’S </h3>
          <p> is the application of the  school/college management software, which is designed for maintaining accurate status of the student everyday attendance. Thus helps to maintain the records about the student attendance leave or absent records and more.
          With an idea of taking out the old manual style of maintaining the attendance, school attendance management system is introduced. This had many amazing features and benefits, which are explained in complete detail below.</p>
        </div>      
      </div>

      <div class="item">
        <img src="Images/2.jpg" alt="1" width="1200" height="400">
        <div class="carousel-caption">
         <h3>GET CONFORT</h3>
          <p>The normal time-taken for recording attendance for each class will be over taken by this software.</p>
          <h3>SPEED AND ACCURACY</h3>
          <p>Avoid incorrect data entry, and helps to reduce mundane paperwork.</p>
        </div>      
      </div>
    
      <div class="item">
        <img src="Images/3.jpg" alt="2" width="1200" height="400">
        <div class="carousel-caption">
         <h3>Leave Application</h3>
         <p>A Leave application is basically a formal way of asking for a break from work for a particular time period. College students follow school/college rules to write the leave application letter. The reason for leave should be included in the applicationand it is essential to make sure that it is acceptable by your institute or organiztion.</p>
        </div>      
      </div>
    </div>


    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>


    </form>
</body>
</html>
