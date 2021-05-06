<%@ Page Title="" Language="C#" MasterPageFile="~/STUDENTS/STUDENTS.Master" AutoEventWireup="true" CodeFile="LEAVE_STATUS.aspx.cs" Inherits="MINI_PROJECT.STUDENTS.LEAVE_STATUS" %>



<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder1" runat="server">
    <link href="../Styles/STUDENTS/LEAVE_STATUS.css" rel="stylesheet" type="text/css" />
    <style>
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
         

        }
          #ui label,h1{
              color:#fff;
          }
          </style>  
<div class="container">
        <div class="row">
            <div class="col-lg-3"></div>

            <div class="col-lg-6">
            <div id="ui">
    <form id="form1">
    <div>
         <div class="style3" align="center" style="width: 597px">
           <h2 align="center" style="color: #FFFFFF"> LEAVE STATUS</h2><br />
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                 BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
                 CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" 
                 GridLines="Vertical" Height="128px" Width="462px">
                 <AlternatingRowStyle BackColor="#CCCCCC" />
                 <Columns>
                     <asp:BoundField DataField="applicationid" HeaderText="ID" 
                         SortExpression="applicationid" />
                     <asp:BoundField DataField="applicationname" HeaderText="NAME" 
                         SortExpression="applicationname" />
                     <asp:BoundField DataField="applicationreason" HeaderText="REASON" 
                         SortExpression="applicationreason" />
                     <asp:BoundField DataField="approval" HeaderText="STATUS" 
                         SortExpression="approval" />
                 </Columns>
                 <FooterStyle BackColor="#CCCCCC" />
                 <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                 <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                 <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                 <SortedAscendingCellStyle BackColor="#F1F1F1" />
                 <SortedAscendingHeaderStyle BackColor="#808080" />
                 <SortedDescendingCellStyle BackColor="#CAC9C9" />
                 <SortedDescendingHeaderStyle BackColor="#383838" />
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                 ConnectionString="<%$ ConnectionStrings:SAMSConnectionString %>" 
                 SelectCommand="SELECT * FROM [ApplicationDetails]"></asp:SqlDataSource>
             </div>
             </div>
             </form>
             </div>
             </div>
             </div>
             </div>
</asp:Content>
