<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SATFF_REPORT.aspx.cs" Inherits="MINI_PROJECT.ADMIN.SATFF_REPORT" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 <style type="text/css">
        body{
            background-image:url("Images/books_main_image.jpg");
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
      width:200px;
  }
      .style2
      {
          width: 359px;
      }
      .style3
      {
          width: 757px;
      }
      .affix {
    top: 0;
    width: 100%;
    z-index: 9999 !important;
  }

  .affix + .container-fluid {
    padding-top: 70px;
  }
    </style>
          
</head>
<body>
    <form id="form1" runat="server">
    <table class="nav-justified" 
        style="border-style: hidden; background-color: #010506">
        <tr>
            <td style="border-style: hidden; background-color: #010506;">
                &nbsp;</td>
            <td class="style1">
               <a href="HOME.aspx"> <img src="../Images/MINI%20LOGO.jpg" /></a> </td>
            <td>
                &nbsp;</td>
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

<div class="container">
        <div class="row">
            <div class="col-lg-3"></div>

            <div class="col-lg-6">
               <div id="ui">
                   <h1 class="text-center">STAFF REPORT</h1>
                   <br />
                    <div class="row">
                    <div class="col-lg-6">
                        <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                            ForeColor="Black" GridLines="Horizontal" AutoGenerateColumns="False" 
                            DataSourceID="SqlDataSource1" Width="899px" Height="248px">
                            <Columns>
                                <asp:BoundField DataField="First Name" HeaderText="First Name" 
                                    SortExpression="First Name" />
                                <asp:BoundField DataField="Last Name" HeaderText="Last Name" 
                                    SortExpression="Last Name" />
                                <asp:BoundField DataField="Staff Email" HeaderText="Staff Email" 
                                    SortExpression="Staff Email" />
                                <asp:BoundField DataField="Mobile No." HeaderText="Mobile No." 
                                    SortExpression="Mobile No." />
                                <asp:BoundField HeaderText="Address" />
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#242121" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:SAMSConnectionString %>" 
                            SelectCommand="SELECT * FROM [STAFF_REPORT]"></asp:SqlDataSource>
                    </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
