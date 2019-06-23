using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class Default4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        fillProfileBookings();
    }

    public void fillProfileBookings()
    {
        DataFunction objdf = new DataFunction();
        SqlParameter[] param = new SqlParameter[1];
        param[0] = new SqlParameter("@customerId", SqlDbType.Int);
        param[0].Value = Session["CustomerSession"];

        DataSet ds = new DataSet();
        ds = objdf.FillDS("usp_FetchBookingDetails", param);

        rptr_FillBookings.DataSource = ds;
        rptr_FillBookings.DataBind();
    }
}