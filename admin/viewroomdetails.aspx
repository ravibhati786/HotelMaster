<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage2.master" AutoEventWireup="true" CodeFile="viewroomdetails.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content-wrapper">
          <div class="page-header">
            <h3 class="page-title">
              Booking
            </h3>
            <nav aria-label="breadcrumb">
              <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Booking</a></li>
                <li class="breadcrumb-item active" aria-current="page">View Booking</li>
              </ol>
            </nav>
          </div>
          <div class="row">
            
            <div class="col-md-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">View Booking</h4>
                  
                  <table class="table table-striped">
                    <thead>
                      <tr>
                        
                        <th>
                          Room No
                        </th>
                        <th>
                          Max Capacity
                        </th>
                        <th>
                          MaxAdults
                        </th>
                        <th>
                          Max Children
                        </th>
                          <th>
                              Room Type
                          </th>
                          <th>
                              Room Image
                          </th>
                          
                          <th>
                          Room Price                              
                          </th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        
                        <td>
                           <asp:Label ID="lblroomnumber" runat="server" Text="101"></asp:Label> 
                        </td>
                        <td>
                          <div class="">
                             <asp:Label ID="lblmaxcapacity" runat="server" Text="5"></asp:Label> 
                          </div>
                        </td>
                        <td>
                         <asp:Label ID="lblmaxchild" runat="server" Text="2"></asp:Label> 
                        </td>
                        <td>
                         <asp:Label ID="lblmaxadults" runat="server" Text="2"></asp:Label> 
                        </td>
                          <td>
                           <asp:Label ID="lblroomtype" runat="server" Text="Single"></asp:Label> 
                        </td>
                          <td>
                               <asp:Label ID="lblroomimg" runat="server" Text="imgurl"></asp:Label> 
                          </td>
                          <td> <asp:Label ID="lblroomprice" runat="server" Text="1000"></asp:Label> </td>

                      </tr>
                      <tr>
                        
                        <td>
                          Messsy Adam
                        </td>
                        <td>
                          <div>
                          9828717565
                          </div>
                        </td>
                        <td>
                          loky1218@gmail.com
                        </td>
                        <td>
                          July 1, 2015
                        </td>
                          <td>
                          July 1, 2015
                        </td>
                          <td>
                              Double
                          </td>
                      <td><label class="badge badge-warning">UnPaid</label></td>
                      </tr>
                        
                      <tr>
                        
                        <td>
                          John Richards
                        </td>
                        <td>
                          <div class="">
                              9828717565
                          </div>
                        </td>
                        <td>
                          ravibhati786@gmail.com
                        </td>
                        <td>
                          Apr 12, 2015
                        </td>
                          <td>
                          July 1, 2015
                        </td>
                          <td>
                              Single
                          </td>
                          <td><label class="badge badge-success">Paid</label></td>
                      </tr>
                      <tr>
                        <td>
                          Peter Meggik
                        </td>
                        <td>
                          <div class="">
                          9828717565
                          </div>
                        </td>
                        <td>
                          hggehlot777@gmail.com
                        </td>
                        <td>
                          May 15, 2015
                        </td>
                          <td>
                          July 1, 2015
                        </td>
                          <td>
                              Double
                          </td>
                          <td><label class="badge badge-warning">UnPaid</label></td>
                      </tr>
                      <tr>
                        
                        <td>
                          Edward
                        </td>
                        <td>
                          <div class="">
                          9828717565
                          </div>
                        </td>
                        <td>
                          $ 160.25
                        </td>
                        <td>
                          May 03, 2015
                        </td>
                          <td>
                          July 1, 2015
                        </td>
                          <td>
                              Single
                          </td>
                          <td><label class="badge badge-success">Paid</label></td>
                      </tr>
                      <tr>
                        
                        <td>
                          John Doe
                        </td>
                        <td>
                          <div class="">
                              9828717565
                          </div>
                        </td>
                        <td>
                          $ 123.21
                        </td>
                        <td>
                          April 05, 2015
                        </td>
                          <td>
                          July 1, 2015
                        </td>
                          <td>
                              Double
                          </td>
                          <td><label class="badge badge-success">Paid</label></td>
                      </tr>
                      <tr>
                        
                        <td>
                          Henry Tom
                        </td>
                        <td>
                          <div class="">
                          9828717565
                          </div>
                        </td>
                        <td>
                          $ 150.00
                        </td>
                        <td>
                          June 16, 2015
                        </td>
                          <td>
                          July 1, 2015
                        </td>
                          <td>
                              Single
                          </td>
                          <td><label class="badge badge-warning">UnPaid</label></td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
            
          </div>
        </div>        
    

    

</asp:Content>

