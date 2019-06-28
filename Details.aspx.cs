using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Globalization;

public partial class Default4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       if(Session["CustomerSession"] != null)
        {
            fillDetailsPage();
        }
    }

    public void fillDetailsPage()
    {
        DataFunction objdf = new DataFunction();
        SqlParameter[] param = new SqlParameter[1];
        param[0] = new SqlParameter("@bookId", SqlDbType.Int);
        param[0].Value = Request.QueryString["bookId"];

        DataSet ds = new DataSet();
        ds = objdf.FillDS("usp_FetchDetailsOfParticularBooking", param);

        if(ds.Tables[0].Rows.Count>0)
        {
            lblbookingid.Text = ds.Tables[0].Rows[0]["roomBillId"].ToString();
            lblBy.Text = ds.Tables[0].Rows[0]["customerName"].ToString();
            DateTime dt = Convert.ToDateTime(ds.Tables[0].Rows[0]["book_Date"]);
            lblon.Text = dt.ToShortDateString();
            DateTime checkIn = Convert.ToDateTime(ds.Tables[0].Rows[0]["checkIn"]);
            DateTime checkOut = Convert.ToDateTime(ds.Tables[0].Rows[0]["checkOut"]);
            lblCheckIn.Text = checkIn.ToString("MMM") + " "+  checkIn.Day;
            lblNights.Text = ds.Tables[0].Rows[0]["Nights"].ToString();
            lblCheckOut.Text = checkOut.ToString("MMM") + " "+ checkOut.Day;
            lblGuests.Text = ds.Tables[0].Rows[0]["Guests"].ToString();
            lblRoomType.Text = new CultureInfo("en-US").TextInfo.ToTitleCase(ds.Tables[0].Rows[0]["roomType"].ToString());
            lblGuestName.Text = ds.Tables[0].Rows[0]["guestName"].ToString();
            lblGuestPhone.Text = ds.Tables[0].Rows[0]["guestPhone"].ToString();
            lblGuestMail.Text = ds.Tables[0].Rows[0]["guestEmail"].ToString();
            lblTariff.Text = ds.Tables[0].Rows[0]["roomPrice"].ToString();
            double price = (Convert.ToDouble(lblTariff.Text) * Convert.ToDouble(lblNights.Text));
            lblRoomPrice.Text = price.ToString();

            int dis = Convert.ToInt32(ds.Tables[0].Rows[0]["discountPercent"]);
            int subtotal = Convert.ToInt32(lblRoomPrice.Text);
            float discountamount = subtotal * dis / 100;
            lblDiscount.Text = discountamount.ToString();
            lbltotal.Text = (subtotal - discountamount).ToString();
        }

    }
}