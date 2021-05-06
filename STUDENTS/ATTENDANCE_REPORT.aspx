<%@ Page Title="" Language="C#" MasterPageFile="~/STUDENTS/STUDENTS.Master" AutoEventWireup="true" CodeBehind="ATTENDANCE_REPORT.aspx.cs" Inherits="MINI_PROJECT.STUDENTS.ATTENDANCE_REPORT1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder1" runat="server">
    <link href="../Styles/STUDENTS/ATTENDANCE_REPORT.css" rel="stylesheet" type="text/css" />
    <body>

       <div class="container">
        <div class="row">
            <div class="col-lg-3"></div>

            <div class="col-lg-6">
               <div id="ui">
                   <h1 class="text-center">ATTENDANCE REPORT</h1>
                   <br />
                    <div class="row">
                    <div class="col-lg-6">
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
                           <asp:GridView ID="GridView1" runat="server">
                           </asp:GridView>


                    </div>
                    </div>
                    </div>
                </div>
            </div>
        </div>
        </body>
</asp:Content>
