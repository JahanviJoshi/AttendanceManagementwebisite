<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="ADMIN_LOGIN.aspx.cs" Inherits="MINI_PROJECT.ADMIN_LOGIN1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
 <style type="text/css">
            body{ background-image:url("Images/books_main_image.jpg");
            background-size:cover;
            background-position:center center;
            background-attachment:fixed; 
            width:100%;   
            height:100%;    

        }
        </style>
        <link href="Styles/ADMIN_LOGIN.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
        <div class="row">
            <div class="col-lg-3"></div>

            <div style="width:640px; top: 0px; left: 0px;" class="col-lg-6" align="center">
               <div id="ui">    
        <h1 class="text-center" align="center" style="color: #FFFFFF; width: 621px;">LOGIN FORM</h1>
         <form id="form1">
            <div align="center" style="width: 621px">
               <table class="" align="center">
                <tr>
                <td class="style6">
                   <h3 class="text-center" style="color: #FFFFFF; font-size: small;"> Staff ID:</h3></td>
                <td class="style5">
                    &nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:TextBox ID="TextBox1" runat="server" Width="155px" class="form-control"  Height="34px" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Enter Your ID.." ForeColor="White" 
                        ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                    </br>
                </td>
            </tr>
            <tr>
                <td class="style7">
                   <h3 class="text-center" style="color: #FFFFFF; font-size: small;"> Password:</h3></td>
                <td class="style8">
                    <br />
                    <asp:TextBox ID="TextBox2" runat="server" Height="34px" TextMode="Password" 
                        Width="155px" class="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="Enter Your Password.." ControlToValidate="TextBox2" 
                        ForeColor="White">Enter Your Password..</asp:RequiredFieldValidator>
                    </br>
                </td>
            </tr>
            <tr>
                <td class="style4">
                 <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="White" 
                        NavigateUrl="">Forget Password</asp:HyperLink>
                        <br />
                    </td>
                <td class="style9">
                </td>
                </tr>
                <tr><td></td>
                <td align="center" style="padding: 10px">
                    <br />
                    <asp:Button ID="Button1" runat="server" Height="35px" onclick="Button1_Click" class="form-control" 
                        Text="Login" Width="162px" BackColor="#0066FF" Font-Bold="True" 
                        ForeColor="White"  />
                    <br />
                    
                    <br />
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td></tr>
            
        </table>
        <br />
    </div>
    
    </form>
    </div>
    </div>
    </div></div>
                        </body>
</asp:Content>
