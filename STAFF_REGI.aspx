<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="STAFF_REGI.aspx.cs" Inherits="MINI_PROJECT.STAFF_REGI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
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
        .style6
        {
            height: 75px;
            width: 388px;
        }
        .style7
        {
            height: 73px;
            width: 940px;
        }
        .style8
        {
            width: 372px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
<div class="container">
        <div class="row">
            <div class="col-lg-3" align="center"></div>

            <div class="col-lg-6">
               <div id="ui">    
        <h2 align="center" style="color: #FFFFFF">STAFF REGISTRATION</h2> 
    <table class="style1">
        <tr>
            <td class="style8" align="center" width="100px">
              <h2 style="font-size: small; color: #FFFFFF">  FirstName:</h2></td>
                <td class="style7" align="center">
                    <br />
                    <asp:TextBox ID="TextBox1" runat="server" Height="31px" Width="250px" 
                        class="form-control"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Enter Your Firstname.."></asp:RequiredFieldValidator>
                </td>
            </tr>
        <tr>
            <td class="style8" align="center" width="100px">
              <h2 style="font-size: small; color: #FFFFFF">  LastName: </h2></td>
                <td class="style7" align="center">
                    <br />
                    <asp:TextBox ID="TextBox13" runat="server" Height="31px" Width="250px" 
                        class="form-control"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox13" ErrorMessage="RequiredFieldValidator">Enter Your Lastname..</asp:RequiredFieldValidator>
                </td>
            </tr>
        <tr>
            <td class="style8" align="center" width="100px">
            <h2 style="font-size: small; color: #FFFFFF">    EmailId:</h2></td>
                <td class="style7" align="center">
                    <br />
                    <asp:TextBox ID="TextBox14" runat="server" Height="31px" Width="250px" 
                        class="form-control"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox14" ErrorMessage="RequiredFieldValidator">Enter Your EmailId..</asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox14" ErrorMessage="Invalid Email Id.." 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <br />
                </td>
            </tr>
        <tr>
            <td class="style8" align="center" width="100px">
              <h2 style="font-size: small; color: #FFFFFF"> Gender:</h2> </td>
                <td class="style7" align="center">
&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="30px" Width="250px" 
                        class="form-control">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Others</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="DropDownList2" ErrorMessage="Choose Your Gender.."></asp:RequiredFieldValidator>
                </td>
            </tr>
        <tr>
            <td class="style8" align="center" width="100px">
              <h2 style="font-size: small; color: #FFFFFF">  Password:</h2></td>
                <td class="style7" align="center">
                    &nbsp;<br />
                    <asp:TextBox ID="TextBox15" runat="server" Height="31px" Width="250px" 
                        class="form-control"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox15">Enter Your Password..</asp:RequiredFieldValidator>
                </td>
            </tr>
        <tr>
            <td class="style8" align="center" width="100px">
              <h2 style="font-size: small; color: #FFFFFF">  Retype-Password:</h2></td>
                <td class="style7" align="center">
                    <br />
                    <asp:TextBox ID="TextBox16" runat="server" Height="31px" Width="250px" 
                        class="form-control"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="TextBox16" ErrorMessage="RequiredFieldValidator">Retype Your Password..</asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="TextBox15" ControlToValidate="TextBox16" 
                        ErrorMessage="CompareValidator"></asp:CompareValidator>
                </td>
            </tr>
        <tr>
            <td class="style8" align="center" width="100px">
               <h2 style="font-size: small; color: #FFFFFF"> MobileNo:</h2></td>
                <td class="style7" align="center">
                    <br />
                    <asp:TextBox ID="TextBox17" runat="server" Height="31px" 
                        ontextchanged="TextBox17_TextChanged" Width="250px" class="form-control"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="TextBox17" ErrorMessage="Enter Your MobileNo.."></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="TextBox17" ErrorMessage="Invaild Phone No:.." 
                        ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                </td>
            </tr>
        <tr>
            <td class="style8" align="center" width="100px">
              <h2 style="font-size: small; color: #FFFFFF"> Address:</h2> </td>
                <td class="style7" align="center">
                    <br />
                    <asp:TextBox ID="TextBox18" runat="server" Height="31px" Width="250px" 
                        class="form-control"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="TextBox18" ErrorMessage="Enter Your Address.."></asp:RequiredFieldValidator>
                </td>
            </tr>
        <tr>
            <td class="style8" align="center" width="100px">
              <h2 style="font-size: small; color: #FFFFFF">  Position:</h2></td>
                <td class="style7" align="center">
&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList3" runat="server" Height="30px" Width="250px" 
                        class="form-control">
                        <asp:ListItem>Professor</asp:ListItem>
                        <asp:ListItem>H.O.D</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="DropDownList3" ErrorMessage="Enter Your Position.."></asp:RequiredFieldValidator>
                </td>
            </tr>
        <tr>
            <td class="style8" align="center" width="100px">
             <h2 style="font-size: small; color: #FFFFFF">  ID:</h2> </td>
                <td class="style7" align="center">
                    <br />
                    <asp:TextBox ID="TextBox20" runat="server" Height="31px" Width="250px" 
                        class="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="TextBox20" ErrorMessage="Enter Your Id.."></asp:RequiredFieldValidator>
                </td>
            </tr>
        <tr>
            <td class="style8" align="center" width="100px">
               <h2 style="font-size: small; color: #FFFFFF">Choose Subject:</h2> </td>
                <td class="style6" align="center">
&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList4" runat="server" class="form-control" 
                        Height="30px" Width="250px">
                        <asp:ListItem>Java</asp:ListItem>
                        <asp:ListItem>Adbms</asp:ListItem>
                        <asp:ListItem>Maths</asp:ListItem>
                        <asp:ListItem>Spm</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ControlToValidate="DropDownList4" ErrorMessage="Choose Your Subject.."></asp:RequiredFieldValidator>
                </td>
            </tr>
        <tr>
            <td class="style8" align="center" width="100px">
                &nbsp;</td>
                <td class="style2" align="center">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" BackColor="#0066FF" Font-Bold="True" 
                        ForeColor="White" Height="42px" onclick="Button1_Click" Text="REGISTER" 
                        Width="107px" class="form-control" />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" ForeColor="White"></asp:Label>
                </td>
            </tr>
          </table> 
             </div>

                </div>
              </div>
            </div>
</asp:Content>
