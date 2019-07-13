<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage2.master" AutoEventWireup="true" CodeFile="editstaffdetails.aspx.cs" Inherits="_Default" %>

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
                <li class="breadcrumb-item active" aria-current="page">Edit Staff Details</li>
              </ol>
            </nav>
          </div>
          <div class="row">
            <div class="col-md-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Edit Staff Details</h4>
                  
                  <div class="forms-sample">
                      
                      <div class="row " >
                          <div class="col-md-6">
                              <div class="form-group">
                      <label for="exampleInputUsername1">Staff Id</label>
        <asp:TextBox ID="txtstaffid" runat="server" class="form-control" placeholder="Enter staff id"></asp:TextBox>
                     
                    </div>
                              </div>
                          <div class="col-md-6">
                           <div class="form-group">
                               <asp:Button ID="btnedit" runat="server" style="margin-top:15px" CssClass="btn btn-danger" Text="Edit" />
                      </div>
                              </div>
                      </div>
                      
                      <div class="row " >
                          <div class="col-md-6">
                              <div class="form-group">
                      <label for="exampleInputUsername1">Staff Image</label><br />
                                  <asp:Image ID="imgstaff" runat="server" Width="100" Height="100" />
        
                    </div>
                              </div>
                          <div class="col-md-6">
                           <div class="form-group">
                     
                                </div>
                              </div>
                      </div>
                      
                     <div class="row " >
                          <div class="col-md-6">
                              <div class="form-group">
                      <label for="exampleInputUsername1">Name</label>
        <asp:TextBox ID="txtstaffname" runat="server" class="form-control" placeholder="Enter name"></asp:TextBox>
                     
                    </div>
                              </div>
                          <div class="col-md-6">
                           <div class="form-group">
                      <label for="exampleInputEmail1">Email</label>
                      <asp:TextBox ID="txtstaffemail" runat="server" class="form-control" placeholder="Enter email"></asp:TextBox>
                    </div>
                              </div>
                      </div>
                      <div class="row " >
                          
                          <div class="col-md-6">
                              <div class="form-group">
                              <label for="exampleInputConfirmPassword1">Joining Date</label>
                                <asp:TextBox ID="txtstaffjoindate" runat="server" class="form-control" placeholder="dd/mm/yyyy"></asp:TextBox>
                          </div>
                              </div>
                          <div class="col-md-6">
                           <div class="form-group">
                      <label for="exampleInputConfirmPassword1">Designation</label>
                      <asp:TextBox ID="txtstaffdesg" runat="server" class="form-control" placeholder="Enter designation"></asp:TextBox>
                    </div>
                              </div>
                      </div>
                     
                      <div class="row " >
                          <div class="col-md-6">
                              <div class="form-group">
                      <label for="exampleInputPassword1">Gender</label>
                      <br/>
                      <asp:TextBox ID="txtstaffgender" runat="server" class="form-control" placeholder="Enter Gender"></asp:TextBox>
                              </div>
                              </div>
                          <div class="col-md-6">
                           <div class="form-group">
                              <label for="exampleInputConfirmPassword1">Upload Staff New Image</label><br />
                               <asp:FileUpload ID="FileUpload1" runat="server" />
                          </div>
                              </div>
                      </div>
                      <div class="row " >
                          
                          <div class="col-md-6">
                              <div class="form-group">
                              <label for="exampleInputConfirmPassword1">Mobile Number</label>
                                <asp:TextBox ID="txtstaffmobno" runat="server" class="form-control" placeholder="Enter mobile number"></asp:TextBox>
                          </div>
                              </div>
                          <div class="col-md-6">
                           <div class="form-group">
                              <label for="exampleInputConfirmPassword1">Birth Date</label>
                                <asp:TextBox ID="txtdob" runat="server" class="form-control" placeholder="dd/mm/yyyy"></asp:TextBox>
                          </div>
                              </div>
                      </div>

                      <div class="row " >
                          
                          <div class="col-md-12">
                              <div class="form-group">
                              <label for="exampleInputConfirmPassword1">Address</label>
                                <asp:TextBox ID="txtstaffaddress" runat="server"  class="form-control" placeholder="" style="height:50px"></asp:TextBox>
                          </div>
                              </div>
                          
                      </div>

                    <div class="form-check form-check-flat form-check-primary">
                      <label class="form-check-label">
                        <input type="checkbox" class="form-check-input"/>
                        Remember me
                      </label>
                    </div>
        <asp:Button ID="Button1" runat="server" class="btn btn-gradient-primary mr-2" Text="Update Edit" />
                    <asp:Button ID="Button2" runat="server" class="btn btn-light" Text="Cancel" />
                   
                 </div>
                </div>
              </div>
            </div>
            
            
          </div>
        </div>
        
        </asp:Content>



