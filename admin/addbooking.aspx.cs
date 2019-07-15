using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Globalization;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //protected void btnroombook_Click(object sender, EventArgs e)
    //{
    //    DataFunction objdf = new DataFunction();
    //    SqlParameter[] param = new SqlParameter[6];

    //    param[0] = new SqlParameter("@guestName", SqlDbType.Int);
    //    param[0].Value = txtaddbookname.Text.Trim();
    //    param[1] = new SqlParameter("@guestEmail", SqlDbType.Int);
    //    param[1].Value = txtaddbookemail.Text.Trim();
    //    param[2] = new SqlParameter("", SqlDbType.Int);
    //    param[2].Value = txtaddbookpass.Text.Trim();
    //    param[3] = new SqlParameter("@guestPhone", SqlDbType.Int);
    //    param[3].Value = txtaddbookcontact.Text.Trim();
    //    param[4] = new SqlParameter("@checkIn", SqlDbType.VarChar);
    //    param[4].Value = txtaddbookchkindate.Text.Trim();
        
    //    param[5] = new SqlParameter("@checkOut", SqlDbType.VarChar);
    //    param[5].Value = txtaddbookchkoutdate.Text.Trim();
         
        
    //    int result = objdf.ExecuteQuery(param, "usp_AddRoomDetails");

    //    if (result > 0)
    //    {
    //        Response.Write("<script>alert('Data Add Successfully')</script>");
    //    }

        
    //}
}