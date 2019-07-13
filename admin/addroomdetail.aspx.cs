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

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnaddroomdetails_Click(object sender, EventArgs e)
    {
        DataFunction objdf = new DataFunction();
        SqlParameter[] param = new SqlParameter[4];

        param[0] = new SqlParameter("@roomnumber", SqlDbType.Int);
        param[0].Value = txtroomnumber.Text.Trim();
        param[1] = new SqlParameter("@maxcapacity", SqlDbType.Int);
        param[1].Value = txtmaxcapacity.Text.Trim();
        param[1] = new SqlParameter("@roommaxchild", SqlDbType.Int);
        param[1].Value = txtmaxchild.Text.Trim();
        param[1] = new SqlParameter("@roommaxadults", SqlDbType.Int);
        param[1].Value = txtmaxadults.Text.Trim();
        param[1] = new SqlParameter("@roomtype", SqlDbType.Int);
        param[1].Value = txtroomtype.Text.Trim();
        param[1] = new SqlParameter("@roomprice", SqlDbType.Int);
        param[1].Value = txtroomprice.Text.Trim();
    }
}