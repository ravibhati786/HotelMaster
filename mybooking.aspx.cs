using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        fillMyBookings();
    }

    public void fillMyBookings()
    {

        lbldatefrom.Text = Request.QueryString["CheckIn"];
        lbldateto.Text = Request.QueryString["CheckOut"];
        lblguest.Text = (Convert.ToInt32(Request.QueryString["Adults"]) + Convert.ToInt32(Request.QueryString["Childs"])).ToString();
        lblroomtype.Text = Request.QueryString["Type"];
        lblNights.Text = Request.QueryString["Nights"];
        lblsubtotel.Text = Request.QueryString["Amount"];
        lbltotal.Text = (Convert.ToInt32(lblsubtotel.Text) - Convert.ToInt32(lbldiscount.Text)).ToString();

    }

    public void saveDetailsTemporary()
    {
        DataFunction objdf = new DataFunction();
        SqlParameter[] param = new SqlParameter[5];
        param[0] = new SqlParameter("@guestName", SqlDbType.VarChar);
        param[0].Value = txtfirstname.Text + " " + txtlastname.Text;
        param[1] = new SqlParameter("@guestEmail", SqlDbType.VarChar);
        param[1].Value = txtemail.Text;
        param[2] = new SqlParameter("@guestPhone", SqlDbType.VarChar);
        param[2].Value = txtphone.Text;
        param[3] = new SqlParameter("@guestEmail", SqlDbType.VarChar);
        param[3].Value = txtemail.Text;


    }
}