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
                      
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>

                                <tr>
                        
                        <td>
                           <asp:Label ID="lblroomnumber" runat="server" Text='<%# Bind("doorNo") %>'></asp:Label> 
                        </td>
                        <td>
                          <div class="">
                             <asp:Label ID="lblmaxcapacity" runat="server" Text='<%# Bind("maxCapacity") %>'></asp:Label> 
                          </div>
                        </td>
                        <td>
                         <asp:Label ID="lblmaxchild" runat="server" Text='<%# Bind("roomMaxChildren") %>'></asp:Label> 
                        </td>
                        <td>
                         <asp:Label ID="lblmaxadults" runat="server" Text='<%# Bind("roomMaxAdults") %>'></asp:Label> 
                        </td>
                          <td>
                           <asp:Label ID="lblroomtype" runat="server" Text='<%# Bind("roomType") %>'></asp:Label> 
                        </td>
                          <td>
                               <asp:Label ID="lblroomimg" runat="server" Text='<%# Bind("roomImgURL") %>'></asp:Label> 
                          </td>
                          <td> <asp:Label ID="lblroomprice" runat="server" Text='<%# Bind("roomPrice") %>'></asp:Label> </td>

                      </tr>

                            </ItemTemplate>
                        </asp:Repeater>
                    
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
            
          </div>
        </div>        
    

    

</asp:Content>

