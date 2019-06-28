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
        fillAllBookings();
        fillProfile();
    }

    public void fillAllBookings()
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

    public void fillProfile()
    {
        DataFunction objdf = new DataFunction();
        SqlParameter[] param = new SqlParameter[1];
        param[0] = new SqlParameter("@customerId", SqlDbType.Int);
        param[0].Value = Session["CustomerSession"];

        DataSet ds = new DataSet();
        ds = objdf.FillDS("usp_FetchProfileDetails", param);

        if(ds.Tables[0].Rows.Count >0)
        {
            txtName.Value = ds.Tables[0].Rows[0]["customerName"].ToString();
            txtPhone.Value = ds.Tables[0].Rows[0]["customerContact"].ToString();
            txtEmail.Value = ds.Tables[0].Rows[0]["customerEmail"].ToString();
        }

    }

    protected void btnUpdateProfile_Click(object sender, EventArgs e)
    {
        DataFunction objdf = new DataFunction();
        SqlParameter[] param = new SqlParameter[4];
        param[0] = new SqlParameter("@customerId", SqlDbType.Int);
        param[0].Value = Session["CustomerSession"];
        param[1] = new SqlParameter("@customerName", SqlDbType.VarChar);
        param[1].Value = txtName.Value;
        param[2] = new SqlParameter("@customerPhone", SqlDbType.Decimal);
        param[2].Value = txtPhone.Value;
        param[3] = new SqlParameter("@customerEmail", SqlDbType.VarChar);
        param[3].Value = txtEmail.Value;

        int result = objdf.ExecuteQuery(param, "usp_UpdateProfileInfo");
        if(result>0)
        {
            fillProfile();
        }

    }

    protected void btnUpdatePass_Click(object sender, EventArgs e)
    {
        DataFunction objdf = new DataFunction();
        SqlParameter[] param = new SqlParameter[3];
        param[0] = new SqlParameter("@customerId", SqlDbType.Int);
        param[0].Value = Session["CustomerSession"];
        param[1] = new SqlParameter("@currentPass", SqlDbType.VarChar);
        param[1].Value = txtName.Value;
        param[2] = new SqlParameter("@newPassword", SqlDbType.Decimal);
        param[2].Value = txtPhone.Value;

        int result = objdf.ExecuteQuery(param, "usp_UpdateProfilePass");

    }
}