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
    int discountId = 100;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["CustomerSession"] != null)
        {
            spnErrorCoupon.Visible = false;
            fillMyBookings();
        }
        else
        {
            Response.Redirect("index.aspx");
        }
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
        SqlParameter[] param = new SqlParameter[12];
        param[0] = new SqlParameter("@guestName", SqlDbType.VarChar);
        param[0].Value = txtfirstname.Text + " " + txtlastname.Text;
        param[1] = new SqlParameter("@guestEmail", SqlDbType.VarChar);
        param[1].Value = txtemail.Text;
        param[2] = new SqlParameter("@guestPhone", SqlDbType.VarChar);
        param[2].Value = txtphone.Text;
        param[3] = new SqlParameter("@roomType", SqlDbType.VarChar);
        param[3].Value = (lblroomtype.Text).ToLower();
        param[4] = new SqlParameter("@checkIn", SqlDbType.Date);
        param[4].Value = lbldatefrom.Text;
        param[5] = new SqlParameter("@checkOut", SqlDbType.Date);
        param[5].Value = lbldateto.Text;
        param[6] = new SqlParameter("@adults", SqlDbType.Int);
        param[6].Value = Request.QueryString["Adults"];
        param[7] = new SqlParameter("@childs", SqlDbType.Int);
        param[7].Value = Request.QueryString["Childs"];
        param[8] = new SqlParameter("@total", SqlDbType.Int);
        param[8].Value = lbltotal.Text;
        param[9] = new SqlParameter("@customerId", SqlDbType.Int);
        param[9].Value = Session["CustomerSession"];
        param[10] = new SqlParameter("@discountId", SqlDbType.Int);
        param[10].Value = discountId;
        param[11] = new SqlParameter("@book_date", SqlDbType.Date);
        param[11].Value = System.DateTime.Now.Date;

        DataSet ds = new DataSet();
        ds = objdf.FillDS("usp_BookRoom", param);

        if(ds.Tables[0].Rows.Count >0)
        {
            Response.Write("<script> alert('Your Room is Booked.') </script>");
            Response.Redirect("Details.aspx?bookId="+ds.Tables[0].Rows[0]["roomBillId"]);
        }

    }

    protected void btnreserve_Click(object sender, EventArgs e)
    {
        saveDetailsTemporary();
    }

    protected void btnApply_Click(object sender, EventArgs e)
    {
        DataFunction objdf = new DataFunction();
        SqlParameter[] param = new SqlParameter[1];
        param[0] = new SqlParameter("@coupon", SqlDbType.VarChar);
        param[0].Value = txtCoupon.Text;

        DataSet ds = new DataSet();
        ds = objdf.FillDS("usp_ApplyCouponCode", param);
        if (ds.Tables[0].Rows.Count > 0)
        {
            discountId = Convert.ToInt32(ds.Tables[0].Rows[0]["discountId"]);
            int dis = Convert.ToInt32(ds.Tables[0].Rows[0]["discountPercent"]);
            int subtotal = Convert.ToInt32(lblsubtotel.Text);
            float discountamount = subtotal * dis / 100;
            lbldiscount.Text = discountamount.ToString();
            lbltotal.Text = (subtotal - discountamount).ToString();
        }
        else
        {
            spnErrorCoupon.Visible = true;
        }
    }
}