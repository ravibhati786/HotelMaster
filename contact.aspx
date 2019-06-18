<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style>
		
		table{
		border:none;
		margin:30px 20px;
		}
		
		.textbox{
		         width:325px;
				 height:30px;
				 border-radius:2px;
				 outline:none;
				 border:1px solid gray;
				 padding:5px;
				 margin-bottom:10px;
				
				 }
		.textarea{
		          width:325px;
				  height:150px;
				  resize:none;
				  border-radius:2px;
				  outline:none;
				  border:1px solid gray;
		}
		.btnsend{
		          height:50px;
				  width:115px;
				  background-color:#000;
				  color:white;
				  outline:none;
				  border:none;
				  margin:10px 10px 10px 84px ; 
		}
            .lbltext{
    font-family: 'Raleway', sans-serif;
    font-size: 16px;
    font-weight: 500;
    line-height: 1.86;
    text-align: left;
    color: #000;
    margin-right:10px;
            }
	 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="map" style="margin-left:20px;margin-right:20px">
	  
	  <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3783.248204870528!2d73.81300306436873!3d18.517682574096728!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc2bfa2dfab7a85%3A0x771e89770c4697a3!2sMIT+School+of+Management!5e0!3m2!1sen!2sin!4v1542882755104"  height="500" frameborder="0" style="border:0;width:100%" allowfullscreen></iframe>
	  </div>
	  <div class="contact" style="margin-left:20px">
	  <table>
	      <tr>
				<td>
                    <asp:Label ID="Label1" CssClass="lbltext" runat="server" Text="Name :"></asp:Label></td>
				<td><asp:TextBox ID="txtconname" runat="server" class="textbox" ></asp:TextBox></td>
		  </tr>
		  
	      <tr>
				<td><asp:Label ID="Label2" runat="server" CssClass="lbltext" Text="Email :"></asp:Label></td>
				<td><asp:TextBox ID="txtconemail" runat="server" class="textbox" ></asp:TextBox></td>
		  </tr>
		  
	      <tr>
				<td><asp:Label ID="Label3" runat="server" CssClass="lbltext" Text="Message :"></asp:Label></td>
				<td><asp:TextBox ID="txtconmsg" runat="server" CssClass="textarea" ></asp:TextBox></td>
		  </tr>
		  
	      <tr>
				<td colspan="2"><asp:Button ID="btnconsend" runat="server"  class="btnsend" Text="SEND" /></td>
				<td></td>
		  </tr>
	  </table>
	  </div>

</asp:Content>

