<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addstaffdetails.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="content-wrapper">
          <div class="page-header">
            <h3 class="page-title">
              Staff
            </h3>
            <nav aria-label="breadcrumb">
              <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Staff</a></li>
                <li class="breadcrumb-item active" aria-current="page">Add Staff Details</li>
              </ol>
            </nav>
          </div>
          <div class="row">
            <div class="col-md-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Add Staff Details</h4>
                  
                  <div class="forms-sample">
                     <div class="row " >
                          <div class="col-md-6">
                              <div class="form-group">
                      <label for="exampleInputUsername1">Name</label>
        <asp:TextBox ID="lblroomnumber" runat="server" class="form-control" placeholder="Enter name"></asp:TextBox>
                     
                    </div>
                              </div>
                          <div class="col-md-6">
                           <div class="form-group">
                      <label for="exampleInputEmail1">Email</label>
                      <asp:TextBox ID="lblmaxcapacity" runat="server" class="form-control" placeholder="Enter email"></asp:TextBox>
                    </div>
                              </div>
                      </div>
                      <div class="row " >
                          
                          <div class="col-md-6">
                              <div class="form-group">
                              <label for="exampleInputConfirmPassword1">Joining Date</label>
                                <asp:TextBox ID="lblmaxchild" runat="server" class="form-control" placeholder="dd/mm/yyyy"></asp:TextBox>
                          </div>
                              </div>
                          <div class="col-md-6">
                           <div class="form-group">
                      <label for="exampleInputConfirmPassword1">Designation</label>
                      <asp:TextBox ID="lblmaxadults" runat="server" class="form-control" placeholder="Enter designation"></asp:TextBox>
                    </div>
                              </div>
                      </div>
                     
                      <div class="row " >
                          <div class="col-md-6">
                              <div class="form-group">
                      <label for="exampleInputPassword1">Gender</label>
                      <br/>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="100%" Height="30">
                        <asp:ListItem Value="0">select</asp:ListItem>
                        <asp:ListItem Value="1">Male</asp:ListItem>
                        <asp:ListItem Value="2">Female</asp:ListItem>
                                  </asp:DropDownList>
                              </div>
                              </div>
                          <div class="col-md-6">
                           <div class="form-group">
                              <label for="exampleInputConfirmPassword1">Upload Staff Image</label><br />
                               <asp:FileUpload ID="FileUpload1" runat="server" />
                          </div>
                              </div>
                      </div>
                      <div class="row " >
                          
                          <div class="col-md-6">
                              <div class="form-group">
                              <label for="exampleInputConfirmPassword1">Mobile Number</label>
                                <asp:TextBox ID="lblroomprice" runat="server" class="form-control" placeholder="Enter mobile number"></asp:TextBox>
                          </div>
                              </div>
                          <div class="col-md-6">
                           <div class="form-group">
                              <label for="exampleInputConfirmPassword1">Birth Date</label>
                                <asp:TextBox ID="Txtdob" runat="server" class="form-control" placeholder="dd/mm/yyyy"></asp:TextBox>
                          </div>
                              </div>
                      </div>

                      <div class="row " >
                          
                          <div class="col-md-12">
                              <div class="form-group">
                              <label for="exampleInputConfirmPassword1">Address</label>
                                <asp:TextBox ID="TextBox1" runat="server"  class="form-control" placeholder="" style="height:50px"></asp:TextBox>
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

