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
        fillAvailabilityPage();
    }

    public void fillAvailabilityPage()
    {
        String checkInDate = Request.QueryString["CheckIN"];
        String checkOutDate = Request.QueryString["CheckOUT"];

        ablchkin.Text = checkInDate;
        ablchkout.Text = checkOutDate;

        DataFunction objdf = new DataFunction();
        SqlParameter[] param = new SqlParameter[2];
        param[0] = new SqlParameter("@checkin", SqlDbType.Date);
        param[0].Value = checkInDate;
        param[1] = new SqlParameter("@checkout", SqlDbType.Date);
        param[1].Value = checkOutDate;

        DataSet ds = new DataSet();
        ds = objdf.FillDS("usp_CheckRoomAvailability", param);


    }
}