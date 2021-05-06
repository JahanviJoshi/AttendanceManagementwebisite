<%@ Page Title="" Language="C#" MasterPageFile="~/STAFF/STAFF.Master" AutoEventWireup="true" CodeFile="ATTENDANCE_REPORT_STAFF.aspx.cs" Inherits="MINI_PROJECT.STAFF.ATTENDANCE_REPORT_STAFF" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../Styles/STAFF/ATTENDANCE_REPORT_STAFF.css" rel="stylesheet" type="text/css" />
  <body>
        <div class="row">
            <div class="col-lg-3"></div>

            <div class="col-lg-6">
               <div id="ui">
                   <h1 class="text-center">ATTENDANCE REPORT</h1>
                   <br />
                    <div class="row">
                    <div class="col-lg-6" align="center">
                       <div class="form-group">
                            
                            <label for="comment">Select Month:</label>
                                              <select class="form-control" id="sel1" placeholder="Month">
                               
                                <option value="jan">January</option>
                                <option value="feb">February</option>
                                <option value="mar">March</option>
                                <option value="apr">April</option>
                                <option value="may">May</option>
                                <option value="june">June</option>
                                <option value="july">July</option>
                                <option value="aug">August</option>
                                <option value="sept">September</option>
                                <option value="oct">October</option>
                                <option value="nov">November</option>
                                <option value="dec">December</option>
                              </select>
                              <br />
                       <div class="col-lg-9">
                        <div class="form-group">
                        <button id="Apply_lev" type="button"  class="btn btn-default">REPORT</button>                     
                        </div>
                     </div>
                           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
                                CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" 
                                GridLines="Vertical" Width="614px">
                               <AlternatingRowStyle BackColor="#CCCCCC" />
                               <Columns>
                                   <asp:BoundField DataField="rollno" HeaderText="rollno" 
                                       SortExpression="rollno" />
                                   <asp:BoundField DataField="studentname" HeaderText="studentname" 
                                       SortExpression="studentname" />
                                   <asp:BoundField DataField="dateofclass" HeaderText="dateofclass" 
                                       SortExpression="dateofclass" />
                                   <asp:BoundField DataField="attendancestatus" HeaderText="attendancestatus" 
                                       SortExpression="attendancestatus" />
                                   <asp:BoundField DataField="subject" HeaderText="subject" 
                                       SortExpression="subject" />
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
                                SelectCommand="SELECT * FROM [StudentAttendance]"></asp:SqlDataSource>


                    </div>
                    </div>
                    </div>
                </div>
            </div>
        </div>
        </body>
</asp:Content>
