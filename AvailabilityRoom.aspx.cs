using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        divsingle.Visible = false;
        divdouble.Visible = false;
        divluxury.Visible = false;
        fillAvailabilityPage();
    }

    public void fillAvailabilityPage()
    {
        ablchkin.Text = Request.QueryString["CheckIN"].ToString();
        ablchkout.Text = Request.QueryString["CheckOUT"].ToString();
        ddladults.SelectedValue = (Request.QueryString["Adult"]);
        ddladults.SelectedValue = (Request.QueryString["Child"]);
        DataFunction objdf = new DataFunction();
        SqlParameter[] param = new SqlParameter[1];
        param[0] = new SqlParameter("@guest", SqlDbType.Int);
        param[0].Value = Convert.ToInt32(ddladults.SelectedValue) + Convert.ToInt32(ddlchilds.SelectedValue);

        DataSet ds = new DataSet();
        ds = objdf.FillDS("usp_CheckRoomAvailability", param);

        if (ds.Tables[0].Rows.Count > 0)
        {
            foreach(DataRow dr in ds.Tables[0].Rows)
            {
                if(dr["roomType"].ToString() == "single")
                {
                    divsingle.Visible = true;
                    lblSingleAmt.Text = dr["roomPrice"].ToString();
                }
                if(dr["roomType"].ToString() == "double")
                {
                    divdouble.Visible = true;
                    lblDoubleAmt.Text = dr["roomPrice"].ToString();
                }
                if (dr["roomType"].ToString() == "luxury")
                {
                    divluxury.Visible = true;
                    lblLuxuryAmt.Text = dr["roomPrice"].ToString();
                }
            }
        }


    }

    protected void lnkbtnDoubleBook_Click(object sender, EventArgs e)
    {
        Response.Redirect("roomdetail.aspx?CheckIn=" + ablchkin.Text + "&CheckOut=" + ablchkout.Text + "&Adults=" + ddladults.SelectedValue + "&Childs=" + ddlchilds.SelectedValue + "&Type=" + "DOUBLE" + "&Amount=" + lblDoubleAmt.Text);
    }

    protected void lnkbtnLuxuryBook_Click(object sender, EventArgs e)
    {
        Response.Redirect("roomdetail.aspx?CheckIn=" + ablchkin.Text + "&CheckOut=" + ablchkout.Text + "&Adults=" + ddladults.SelectedValue + "&Childs=" + ddlchilds.SelectedValue + "&Type=" + "LUXURY" + "&Amount=" + lblLuxuryAmt.Text);
    }

    protected void lknbtnSingleBook_Click(object sender, EventArgs e)
    {
        Response.Redirect("roomdetail.aspx?CheckIn=" + ablchkin.Text + "&CheckOut=" + ablchkout.Text + "&Adults=" + ddladults.SelectedValue + "&Childs=" + ddlchilds.SelectedValue + "&Type=" + "SINGLE" + "&Amount=" + lblSingleAmt.Text);
    }
}