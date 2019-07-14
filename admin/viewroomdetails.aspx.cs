using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.IO;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        FillRoomDetails();
    }



    public void FillRoomDetails()
    {
        DataFunction objdf = new DataFunction();
        //SqlParameter[] param = new SqlParameter[0];

        DataSet ds = new DataSet();
        ds = objdf.FillDS("usp_SelectRoomDetails");


        Repeater1.DataSource = ds;
        Repeater1.DataBind();

    }


}