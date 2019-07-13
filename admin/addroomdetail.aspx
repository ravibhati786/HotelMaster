<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage2.master" AutoEventWireup="true" CodeFile="addroomdetail.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="content-wrapper">
          <div class="page-header">
            <h3 class="page-title">
              Rooms
            </h3>
            <nav aria-label="breadcrumb">
              <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Rooms</a></li>
                <li class="breadcrumb-item active" aria-current="page">Add Rooms Details</li>
              </ol>
            </nav>
          </div>
          <div class="row">
            <div class="col-md-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Add Room Details</h4>
                  
                  <div class="forms-sample">
                     <div class="row " >
                          <div class="col-md-6">
                              <div class="form-group">
                      <label for="exampleInputUsername1">Room Number</label>
        <asp:TextBox ID="lblroomnumber" runat="server" class="form-control" placeholder="Enter Number"></asp:TextBox>
                     
                    </div>
                              </div>
                          <div class="col-md-6">
                           <div class="form-group">
                      <label for="exampleInputEmail1">Max Capacity</label>
                      <asp:TextBox ID="lblmaxcapacity" runat="server" class="form-control" placeholder="Enter Number"></asp:TextBox>
                    </div>
                              </div>
                      </div>
                      <div class="row " >
                          
                          <div class="col-md-6">
                              <div class="form-group">
                              <label for="exampleInputConfirmPassword1">Room Max Children</label>
                                <asp:TextBox ID="lblmaxchild" runat="server" class="form-control" placeholder="Enter Number"></asp:TextBox>
                          </div>
                              </div>
                          <div class="col-md-6">
                           <div class="form-group">
                      <label for="exampleInputConfirmPassword1">Room Max Adults</label>
                      <asp:TextBox ID="lblmaxadults" runat="server" class="form-control" placeholder="Enter Number"></asp:TextBox>
                    </div>
                              </div>
                      </div>
                     
                      <div class="row " >
                          <div class="col-md-6">
                              <div class="form-group">
                      <label for="exampleInputPassword1">Room Type</label>
                      <asp:TextBox ID="lblroomtype" runat="server" class="form-control" placeholder="Enter Room Type"></asp:TextBox>
                    </div>
                              </div>
                          <div class="col-md-6">
                           <div class="form-group">
                              <label for="exampleInputConfirmPassword1">Upload Room Image</label><br />
                               <asp:FileUpload ID="FileUpload1" runat="server" />
                          </div>
                              </div>
                      </div>
                      <div class="row " >
                          
                          <div class="col-md-6">
                              <div class="form-group">
                              <label for="exampleInputConfirmPassword1">Room Price</label>
                                <asp:TextBox ID="lblroomprice" runat="server" class="form-control" placeholder="Enter Room Price"></asp:TextBox>
                          </div>
                              </div>
                          <div class="col-md-6">
                           
                              </div>
                      </div>
                    <div class="form-check form-check-flat form-check-primary">
                      <label class="form-check-label">
                        <input type="checkbox" class="form-check-input"/>
                        Remember me
                      </label>
                    </div>
        <asp:Button ID="Button1" runat="server" class="btn btn-gradient-primary mr-2" Text="Submit" />
                    <asp:Button ID="Button2" runat="server" class="btn btn-light" Text="Cancel" />
                   
                 </div>
                </div>
              </div>
            </div>
            
            
          </div>
        </div>
        <!-- content-wrapper ends -->
        <!-- partial:../../partials/_footer.html -->
        



</asp:Content>

