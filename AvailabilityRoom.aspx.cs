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
    
}