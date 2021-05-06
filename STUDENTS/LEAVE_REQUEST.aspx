<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LEAVE_REQUEST.aspx.cs" Inherits="MINI_PROJECT.STUDENTS.LEAVE_REQUEST" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style type="text/css">
                 
      body{
            background-image:url("../Images/books_main_image.jpg" );
            background-size:cover;
            background-position:center center;
            background-attachment:fixed;        

        }
        #ui{
            background-color:#333;
            padding:30px;
            margin-top:70px;
            border-radius:10px;
            opacity: 0,8;

        }
          #ui label,h1{
              color:#fff;
          }  
    
    h1,h2
    {
        color:#fff;
    
    }
        .style1
        {
            width: 84%;
            height: 254px;
        }
        .style2
        {
        width: 334px;
        text-align: center;
    }
        .style3
        {
            text-align: center;
        }
        .style4
        {
            width: 334px;
            text-align: center;
            height: 54px;
        }
        .style5
        {
            height: 54px;
        }
        .style6
        {
            width: 334px;
            text-align: center;
            height: 53px;
        }
        .style7
        {
            height: 53px;
        }
        .style8
        {
            width: 334px;
            text-align: center;
            height: 70px;
        }
        .style9
        {
            height: 70px;
        }
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
  footer {
    background-color: #000000;
    color: #f5f5f5;
    padding: 32px;
  }
  .style1
  {
      width:378px;
  }
      .style2
      {
          width: 359px;
      }
      .style3
      {
          height: 434px;
    }
      .affix {
    top: 0;
    width: 100%;
    z-index: 9999 !important;
  }

  .affix + .container-fluid {
    padding-top: 70px;
  }
    .style10
    {
        height: 160px;
    }
    .style11
    {
        width: 200px;
        height: 160px;
    }
    </style>
</head>
<body>
<table style="height:160px" class="nav-justified" 
        style="border-style: hidden; background-color: #010506">
        <tr>
            <td style="border-style: hidden; background-color: #010506;" class="style10">
                </td>
            <td class="style11">
               <a href="HOME.aspx"> 
                   <img src="../Images/MINI%20LOGO.jpg" /></a> </td>
            <td class="style10" bgcolor="Black">
                </td>
        </tr>
    </table>
    <nav class="navbar navbar-inverse navbar-static-top" data-spy="affix" data-offset-top="197">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle navbar-static-top" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="HOME.aspx<a href="ADMIN_HOME.aspx</a>HOME</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
          <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">LEAVE
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
          <li><a href="LEAVE_REQUEST.aspx">LEAVE REQUEST</a></li> 
            <li><a href="LEAVE_STATUS.aspx">LEAVE STATUS</a></li>
          </ul>
          <li><a href="#">ATTENDANCE REPORT</a></li>
          <li><a href="#">LOGOUT</a></li>

      </ul>
    </div>
  </div>
</nav>
<div class="container">
        <div class="row">
            <div class="col-lg-3"></div>

            <div class="col-lg-6">
<div id="ui">
    <form id="form1" runat="server">
    <div>
    
         <div class="style3" align="center">
           <h2 align="center"> LEAVE REQUEST</h2><br />
        
        <table class="style1" align="center">
            <tr>
                <td class="style6">
                    <h2 style="font-size: small; color: #FFFFFF">ID:</h2></td>
                <td class="style7">
                    <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="126px" class="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                   <h2 style="font-size: small; color: #FFFFFF"> Name:</h2></td>
                <td class="style5">
                    <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="126px" class="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style8">
                   <h2 style="color: #FFFFFF; font-size: small"> Application Reason:</h2></td>
                <td class="style9">
                    <asp:TextBox ID="TextBox3" runat="server" Height="49px" Width="201px" 
                        class="form-control" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td align="center">
                    <br />
                    <asp:Button ID="Button1" runat="server" BackColor="#0066FF" Font-Bold="True" 
                        ForeColor="White" Height="40px" Text="Submit" Width="93px" 
                        onclick="Button1_Click" class="form-control" />
                    <asp:Label ID="Label1" runat="server" ForeColor="White"></asp:Label>
                    <br />
                    <br />
                </td>
            </tr>
        </table>
        </div>
    </div>
    </form>
    </div>
    </div>
    </div></div>
</body>
</html>
