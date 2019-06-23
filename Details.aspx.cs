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
       if(Session["CustomerSession"] != null)
        {

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

        }

    }
}