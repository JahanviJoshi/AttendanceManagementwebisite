<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="ABOUT_US.aspx.cs" Inherits="MINI_PROJECT.ABOUT_US" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Styles/ABOUT_US.css" rel="stylesheet" type="text/css" />
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
</asp:Content>
