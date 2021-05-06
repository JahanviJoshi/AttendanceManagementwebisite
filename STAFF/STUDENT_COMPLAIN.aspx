<%@ Page Title="" Language="C#" MasterPageFile="~/STAFF/STAFF.Master" AutoEventWireup="true" CodeBehind="STUDENT_COMPLAIN.aspx.cs" Inherits="MINI_PROJECT.STAFF.STUDENT_COMPLAIN" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
   body{ background-image:url("../Images/books_main_image.jpg");
            background-size:cover;
            background-position:center center;
            background-attachment:fixed;     
            height:100%;
            width:100%;   

        }
        #ui{
            background-color:#333;
            padding:100px;
            margin-top:70px;
            border-radius:10px;
            width: 759px;
        }
          #ui label,h1{
              color:#fff;
          }  
          </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-lg-3"></div>
            <div class="col-lg-6">
               <div id="ui" align="center">
                   <h1 class="text-center" style="color: #FFFFFF" align="center">COMPLAINS</h1>
       
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                       BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
                       CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" 
                       GridLines="Vertical" Height="298px" Width="574px" AllowPaging="True" 
                       HorizontalAlign="Center">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:BoundField DataField="name" HeaderText="NAME" SortExpression="name" />
                            <asp:BoundField DataField="mobileno" HeaderText="MOBILE NO." 
                                SortExpression="mobileno" />
                            <asp:BoundField DataField="message" HeaderText="MESSAGE" 
                                SortExpression="message" />
                            <asp:BoundField DataField="emailid" HeaderText="EMAIL-ID" 
                                SortExpression="emailid" />
                            <asp:BoundField DataField="messagedate" HeaderText="DATE" 
                                SortExpression="messagedate" />
                        </Columns>
                        <EditRowStyle Wrap="False" HorizontalAlign="Center" VerticalAlign="Middle" />
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
   
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                       ConnectionString="<%$ ConnectionStrings:SAMSConnectionString %>" 
                       SelectCommand="SELECT [name], [mobileno], [message], [emailid], [messagedate] FROM [ContactUs]">
                   </asp:SqlDataSource>
    </div></div></div></div> 
</asp:Content>

