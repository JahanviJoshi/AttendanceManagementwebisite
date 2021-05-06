<%@ Page Title="" Language="C#" MasterPageFile="~/STAFF/STAFF.Master" AutoEventWireup="true" CodeBehind="STUDENTS_LLEAVE.aspx.cs" Inherits="MINI_PROJECT.STAFF.STUDENTS_LLEAVE" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style type="text/css">
                
       body{ background-image:url("../Images/books_main_image.jpg");
            background-size:cover;
            background-position:center center;
            background-attachment:fixed;     
            height:100%;
            width:100%;   

      }
       #ui{
            background-color:#333;
            padding:30px;
            margin-top:70px;
            border-radius:10px;
           

        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div class="container">
        <div class="row">
            <div class="col-lg-3"></div>

        <div class="col-lg-6" style="height:587px; top: 0px; left: 0px;" 
                align="center">
                 <form id="form1">
                  <div align="center" style="width: 803px">
                  <div id ="ui">
            <table ID="Table1" runat="server">
            <tr>
                <td align="center">
                 <asp:Label ID="Label1" runat="server" Text="Approval For Leave Request" 
            ForeColor="White" Font-Bold="True" Font-Size="X-Large" 
            style="text-align: center"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center">
                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
            CellPadding="2" ForeColor="Black" GridLines="Vertical" Height="179px" 
            Width="558px" HorizontalAlign="Center">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:TemplateField HeaderText="Approval">
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="applicationid" HeaderText="Application ID">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="applicationname" HeaderText="Application Name">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="applicationreason" HeaderText="Application Reason">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
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
                </td>
            </tr>
            <tr>
                <td align="center">
                <asp:Button ID="Button1" runat="server" BackColor="#0033CC" ForeColor="White" class="form-control"
            onclick="Button1_Click" Text="Submit For Approval" Height="41px" 
            style="text-align: center" Width="186px" />
                </td>
            </tr>
            <tr>
                <td align="center">
                <asp:Label ID="Label2" runat="server" ForeColor="White"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:SAMSConnectionString %>" 
            
            SelectCommand="SELECT * FROM [ApplicationDetails]">
        </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                        BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
                        CellPadding="3" DataSourceID="SqlDataSource2" ForeColor="Black" 
                        GridLines="Vertical" Height="154px" HorizontalAlign="Right" Width="559px">
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
                        <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
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
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:SAMSConnectionString %>" 
                        SelectCommand="SELECT * FROM [ApplicationDetails]"></asp:SqlDataSource>
                </td>
            </tr>
            </table>

    
    </div>
                <form>
    </form>
    </div>
    </div>
    </div>
</asp:Content>
