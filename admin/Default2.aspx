<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
    <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"/>



            <script type="text/javascript">
                $(document).ready(function () {

                    $(".myCal").datepicker({
                        dateFormat: "dd-M-yy",
                        uiLibrary: 'bootstrap',
                        minDate: 0,
                        onSelect: function (date) {
                            var date2 = $('.myCal').datepicker('getDate');
                            date2.setDate(date2.getDate() + 1);
                            $('.myCall').datepicker('setDate', date2);
                            //sets minDate to dt1 date + 1
                            $('.myCall').datepicker('option', 'minDate', date2);
                        }
                    });
                    $('.myCall').datepicker({
                        dateFormat: "dd-M-yy",
                        
                        onClose: function () {
                            var dt1 = $('.myCal').datepicker('getDate');
                            var dt2 = $('.myCall').datepicker('getDate');
                            //check to prevent a user from entering a date below date of dt1
                            if (dt2 <= dt1) {
                                var minDate = $('#dt2').datepicker('option', 'minDate');
                                $('.myCall').datepicker('setDate', minDate);
                            }
                        }
                    });
                });

    </script>
    <style>
        .myCal:focus{
            outline:none;
            box-shadow:none
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div class="row" style="margin-top:50px;margin-bottom:20px;box-shadow:1px 1px 6px silver;padding:20px">
            <div class="col-lg-5">
               
            </div>
            <div class="col-lg-2">
                
                <div class="input-group">
                                           
                                        <asp:TextBox ID="ablchkin" runat="server" CssClass="myCal" style="border:1px solid #ccc;box-shadow:none;padding:5px;margin-left:3px;" ></asp:TextBox>
                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                        </div>
                
 
            </div>
            <div class="col-lg-1">
                <asp:Label ID="Label8" runat="server" style="font-family: 'Raleway', sans-serif; font-size: 15px;font-weight: 500; line-height: 1.86;margin-left:20px">To</asp:Label>

             </div>
            <div class="col-lg-2">
                <asp:TextBox ID="ablchkout" CssClass="myCall form-control" runat="server" style="border:1px solid #ccc;box-shadow:none;padding:5px;"></asp:TextBox>                 
            </div>
            <div class="col-lg-2">
              
        </div>
   </div>
    </form>
</body>
</html>
