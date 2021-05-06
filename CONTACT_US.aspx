<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CONTACT_US.aspx.cs" Inherits="MINI_PROJECT.CONTACT_US" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
 <style type="text/css">
            body{ background-image:url("Images/books_main_image.jpg");
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

        .style9
        {
            height: 70px;
            width: 395px;
        }
        .style10
        {
            height: 70px;
            width: 273px;
        }
        .style11
        {
            height: 91px;
            width: 395px;
        }
        .style12
        {
            height: 91px;
            width: 273px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   <div class="container">
        <div class="row">
            <div class="col-lg-3"></div>
            <div class="col-lg-6">
               <div id="ui">
                   <h1 class="text-center" style="color: #FFFFFF">CONTACT US</h1>
                   <br />
                    <p style="color:white">
            For all the equires, please email us using the form below:</p>
        <div style="color:white"  class="contact-form">
            <div>
                <i class="fa fa-map-marker"></i>  <span class="form-info">192 city Mumbai</span><br />
                <i class="fa fa-phone"></i>  <span class="form-info">Phone No:9090909090</span><br />
                <i class="fa fa-envelope"></i>  <span class="form">samshub23@gmail.com</span></div>
        </div>
        <br />
        <div id ="Div1">
        <table class="style1" style="text-align: center; border-style: hidden">
            <tr>
                <td style="color:white" class="style9">
                    Name:</td>
                <td class="style10">
                    <asp:TextBox ID="TextBox1" runat="server" Height="39px" Width="300px" class="form-control"></asp:TextBox>
                </td>
            </tr><br />
            <tr>
                <td style="color:white" class="style9">
                    Email Address:</td>
                <td class="style10">
                    <asp:TextBox ID="TextBox5" runat="server" Height="39px" Width="300px" class="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="color:white" class="style9">
                    Mobile Number:</td>
                <td class="style10">
                    <asp:TextBox ID="TextBox6" runat="server" Height="39px" Width="300px" class="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="color:white" class="style11">
                    Message:</td>
                <td class="style12">
                    <asp:TextBox ID="TextBox4" runat="server" Height="48px" TextMode="MultiLine" 
                        Width="300px" class="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style9">
                    </td>
                <td class="style10" >
                    <asp:Button  ID="Button1" runat="server" Height="38px" Text="Submit" class="form-control"
                        Width="100px" Font-Bold="True" ForeColor="Black" onclick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td>
                 <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        </div>
        <br />
       
         
    </div>
    </form>
    </div>
    </div>
</asp:Content>
