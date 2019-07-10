<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addbooking.aspx.cs" Inherits="_Default" %>

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
                <li class="breadcrumb-item active" aria-current="page">Add Booking</li>
              </ol>
            </nav>
          </div>
          <div class="row">
            <div class="col-md-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Add Room Booking</h4>
                  
                  <div class="forms-sample">
                    <div class="form-group">
                      <label for="exampleInputUsername1">Name</label>
        <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Enter Fullname"></asp:TextBox>
                     
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">Email address</label>
                      <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Email"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword1">Password</label>
                      <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Password"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputConfirmPassword1">Contact</label>
                      <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="Password"></asp:TextBox>
                    </div>
                      <div class="row " >
                          <div class="col-md-6">
                              <div class="form-group">
                              <label for="exampleInputConfirmPassword1">Check In Date</label>
                                <asp:TextBox ID="TextBox5" runat="server" class="form-control" placeholder="dd/mm/yyyy"></asp:TextBox>
                          </div>
                              </div>
                          <div class="col-md-6">
                           <div class="form-group">
                              <label for="exampleInputConfirmPassword1">Check Out Date</label>
                                <asp:TextBox ID="TextBox6" runat="server" class="form-control" placeholder="dd/mm/yyyy"></asp:TextBox>
                          </div>
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

