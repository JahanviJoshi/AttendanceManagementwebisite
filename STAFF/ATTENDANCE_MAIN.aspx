<%@ Page Title="" Language="C#" MasterPageFile="~/STAFF/STAFF.Master" AutoEventWireup="true" CodeFile="ATTENDANCE_MAIN.aspx.cs" Inherits="MINI_PROJECT.STAFF.ATTENDANCE_MAIN" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <style>
   body
      { 
        backgroud-image: url("Images\books_main_image.jpg");
        background-size: cover;
        background-position: center center;
        background-attachment:fixed;
        
          
          }
    #ui
    {
        position-right:30px;
        background-color:#333;
        padding:15px;
        margin-top:90px;
        border-radius:10px;
        width:580px;
         height: 751px;
     }
    
    h1,h2
    {
        color:#fff;
    
    }
        .style1
        {
            width: 233px;
            height: 218px;
        }
        .style5
        {
            width: 342px;
            height: 66px;
        }
        .style6
        {
            height: 66px;
        }
        .style7
        {
            width: 342px;
            height: 67px;
        }
        .style9
     {
         width: 342px;
     }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div class="container">
        <div class="row">
            <div class="col-lg-3"></div>

            <div class="col-lg-6">
<div id ="ui">
    <form id="form1">
    <div style="height: 764px; width: 588px" align="center">
   
        
       
        <table class="style1" align="center">
        <tr>
        <td class="style9" align="center"> <asp:Label ID="Label1" runat="server" Text="Mark Attendance" 
            Font-Size="X-Large" ForeColor="White" style="text-align: center"></asp:Label></td>
       
        </tr>
            <tr>
                <td align="center">
                  <h2 style="color: #FFFFFF; font-size: small">  Select Subject:</h2>
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        DataSourceID="SqlDataSource1" DataTextField="subject" 
                        DataValueField="subject" class="form-control"
                        Height="62px" Width="200px" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
              
                <td class="style6">
                    <asp:Button ID="Button1" runat="server" Height="38px" onclick="Button1_Click" class="form-control" 
                        Text="Mark Attendance" Width="150px" />
                </td>
            </tr>
        </table>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" ForeColor="White" Font-Size="Large"></asp:Label>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
            CellPadding="3" DataSourceID="SqlDataSource2" ForeColor="Black" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" Height="167px" 
            Width="405px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" 
                    SortExpression="id">
                </asp:BoundField>
                <asp:BoundField DataField="firstname" HeaderText="firstname" 
                    SortExpression="firstname">
                </asp:BoundField>
                <asp:TemplateField HeaderText="MARK ATTENDANCE">
                    <ItemTemplate>
                        <asp:RadioButton ID="RadioButton1" runat="server" Text="Absent" />
                        <asp:RadioButton ID="RadioButton2" runat="server" Text="Present" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView></b></br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Height="38px" onclick="Button2_Click" class="form-control"
            Text="Save Attendance" Width="149px" /></br>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" ForeColor="White"></asp:Label></br>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:SAMSConnectionString %>" 
            SelectCommand="SELECT [subject] FROM [AddStudent1]">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:SAMSConnectionString %>" 
            
            
            SelectCommand="SELECT DISTINCT [id], [firstname] FROM [AddStudent1] WHERE ([subject] = @subject)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="subject" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
  
    </div>
    </form>
    </div>
  
</asp:Content>
