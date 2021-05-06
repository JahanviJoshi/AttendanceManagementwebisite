<%@ Page Title="" Language="C#" MasterPageFile="~/STAFF/STAFF.Master" AutoEventWireup="true" CodeFile="ADD_STUD.aspx.cs" Inherits="MINI_PROJECT.STAFF.ADD_STUD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" language="javascript">
     $(function () {
         $("#<%=TextBox15.ClientID %>").datepicker({
             changeMonth: true,
             changeYear: true,
             dateFormat: "dd-mm-yy",
             yearRange: '1950:2018'
         });
     });
    </script>
    <style type="text/css">
        body{
            background-image:url("../Images/books_main_image.jpg");
            background-size:cover;
            background-position:center center;
            background-attachment:fixed;  
            width:100%;
            height:100%;      

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
        .style9
        {
            height: 100px;
        }
        .style10
        {
            height: 28px;
        }
        .style11
        {
            height: 73px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-lg-3"></div>

            <div class="col-lg-6" style="height:1422px; top: 0px; left: 0px;" 
                align="center">
        <div id ="ui">
        <h1 align="center" style="color: #FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ADD STUDENT</h1>
          <form id="form1">
            <div style="height: 1224px; width: 416px">
    
                <table style="height:1000">
                <tr>
                <td class="style9" align="center">
                   <h3 style="font-size: small; color: #FFFFFF"> First Name:</h3></td>
                <td class="style9" align="center">
                    <br />
                    <asp:TextBox ID="TextBox1" runat="server" Height="31px" Width="250px" 
                        class="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Enter  Firstname.." 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style9" align="center">
                   <h3 style="font-size: small; color: #FFFFFF"> Last Name:</h3></td>
                <td class="style9" align="center">
                    <br />
                    <asp:TextBox ID="TextBox13" runat="server" Height="31px" Width="250px" 
                        class="form-control" ontextchanged="TextBox13_TextChanged"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox13" ErrorMessage="RequiredFieldValidator" 
                        ForeColor="Red">Enter Lastname..</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style9" align="center">
                  <h3 style="font-size: small; color: #FFFFFF">  Email-Id: </h3></td>
                <td class="style9" align="center">
                    <br />
                    <asp:TextBox ID="TextBox14" runat="server" Height="31px" Width="250px" 
                        class="form-control" ontextchanged="TextBox14_TextChanged"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox14" ErrorMessage="RequiredFieldValidator" 
                        ForeColor="Red">Enter EmailId..</asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox14" ErrorMessage="Invalid Email Id.." 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        ForeColor="Red"></asp:RegularExpressionValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style9" align="center">
                  <h3 style="font-size: small; color: #FFFFFF">  Gender: </h3></td>
                <td class="style9" align="center">
&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="30px" Width="250px" 
                        class="form-control">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Others</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="DropDownList2" ErrorMessage="Choose Gender.." 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style9" align="center">
                  <h3>  
                      <asp:Label ID="Label2" runat="server" Text="D.O.B" Font-Size="Small" 
                          ForeColor="White"></asp:Label>
                      :</h3></td>
                <td class="style9" align="center">
                    &nbsp;<br />
                    <asp:TextBox ID="TextBox15" runat="server" Height="31px" Width="250px" 
                        class="form-control" ontextchanged="TextBox15_TextChanged"></asp:TextBox>
                    
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox15" ForeColor="Red">Enter D.O.B..</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style9" align="center">
                   <h3 style="font-size: small; color: #FFFFFF"> Religion:</h3></td>
                <td class="style9" align="center">
                    <br />
                    <asp:TextBox ID="TextBox16" runat="server" Height="31px" Width="250px" 
                        class="form-control"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="TextBox16" ErrorMessage="RequiredFieldValidator" 
                        ForeColor="Red">Type Religion..</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style9" align="center">
                  <h3 style="color: #FFFFFF; font-size: small">  MobileNo:</h3></td>
                <td class="style9" align="center">
                    <br />
                    <asp:TextBox ID="TextBox17" runat="server" Height="31px" 
                        ontextchanged="TextBox17_TextChanged" Width="250px" class="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="TextBox17" ErrorMessage="Enter  MobileNo.." 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="TextBox17" ErrorMessage="Invaild Phone No:.." 
                        ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style9" align="center">
                  <h3 style="font-size: small; color: #FFFFFF">  Address:</h3></td>
                <td class="style9" align="center">
                    <br />
                    <asp:TextBox ID="TextBox18" runat="server" Height="31px" Width="250px" 
                        class="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="TextBox18" ErrorMessage="Enter  Address.." 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style11" align="center">
                    <asp:Label ID="Label3" runat="server" ForeColor="White" Text="Subject:"></asp:Label>
                </td>
                <td class="style11" align="left">
                    <asp:DropDownList ID="DropDownList3" runat="server" Width="250px">
                        <asp:ListItem>ADBMS</asp:ListItem>
                        <asp:ListItem>MATHS</asp:ListItem>
                        <asp:ListItem>SPM</asp:ListItem>
                        <asp:ListItem>AJAVA</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style9" align="center">
                  <h3 style="font-size: small; color: #FFFFFF">  ID: </h3></td>
                <td class="style9" align="center">
                    <br />
                    <asp:TextBox ID="TextBox20" runat="server" Height="31px" Width="250px" 
                        class="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="TextBox20" ErrorMessage="Enter Id.." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style5" align="center">
                  <h3 style="font-size: small; color: #FFFFFF">  Password</h3></td>
                <td class="style6" align="center">
                    <br />
                    <asp:TextBox ID="TextBox23" runat="server" Height="31px" Width="250px" 
                        class="form-control" TextMode="Password"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ControlToValidate="TextBox23" ForeColor="Red">Enter Your Password..</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style7" align="center">
                    <h3 style="font-size: small; color: #FFFFFF">Retype-Password</h3></td>
                <td class="style8" align="center">
                    <br />
                    <asp:TextBox ID="TextBox24" runat="server" Height="31px" Width="250px" 
                        class="form-control" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                        ControlToValidate="TextBox24" ErrorMessage="RequiredFieldValidator" 
                        ForeColor="Red">Retype Your Password..</asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="TextBox23" ControlToValidate="TextBox24" 
                        ErrorMessage="CompareValidator"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style10" align="center">
                    </td>
                <td class="style10" align="center">
                    <asp:Button ID="Button1" runat="server" BackColor="#0066FF" Font-Bold="True" 
                        ForeColor="White" Height="42px" onclick="Button1_Click" Text="Add" 
                        Width="107px" class="form-control" />
                    <asp:Label ID="Label1" runat="server" ForeColor="White"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
    
    </div>
    
    </form>
    </div>
    </div>
    </div>
    </div>
</asp:Content>
