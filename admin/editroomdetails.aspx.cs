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

    }



    protected void btnroomedit_Click(object sender, EventArgs e)
    {
        fillroomdetailsforupdate();
    }



    public void fillroomdetailsforupdate()
    {
        DataFunction objdf = new DataFunction();
        SqlParameter[] param = new SqlParameter[1];
        param[0] = new SqlParameter("@doorno", SqlDbType.Int);
        param[0].Value = txteditroomnumber.Text.Trim();


        DataSet ds = new DataSet();
        ds = objdf.FillDS("usp_SelecrtRoomDetailsForUpdate", param);       

        if(ds.Tables[0].Rows.Count > 0)
        {
            txtroomnumber.Text = ds.Tables[0].Rows[0]["doorNo"].ToString();
            txtmaxcapacity.Text = ds.Tables[0].Rows[0]["maxCapacity"].ToString();
            txtroomtype.Text = ds.Tables[0].Rows[0]["roomType"].ToString();
            txtmaxadults.Text = ds.Tables[0].Rows[0]["roomMaxAdults"].ToString();
            txtmaxchild.Text = ds.Tables[0].Rows[0]["roomMaxChildren"].ToString();
            imgroom.ImageUrl = ds.Tables[0].Rows[0]["roomImgURL"].ToString();
            txtroomprice.Text = ds.Tables[0].Rows[0]["roomprice"].ToString();
        }
    }

    

    protected void btnupdateroomdetails_Click(object sender, EventArgs e)
    {
        DataFunction objdf = new DataFunction();
        SqlParameter[] param = new SqlParameter[7];

        param[0] = new SqlParameter("@roomnumber", SqlDbType.Int);
        param[0].Value = txtroomnumber.Text.Trim();
        param[1] = new SqlParameter("@maxcapacity", SqlDbType.Int);
        param[1].Value = txtmaxcapacity.Text.Trim();
        param[2] = new SqlParameter("@roommaxchild", SqlDbType.Int);
        param[2].Value = txtmaxchild.Text.Trim();
        param[3] = new SqlParameter("@roommaxadults", SqlDbType.Int);
        param[3].Value = txtmaxadults.Text.Trim();
        param[4] = new SqlParameter("@roomtype", SqlDbType.VarChar);
        param[4].Value = txtroomtype.Text.Trim();
        if (RoomImageFileUpload.HasFile)
        {
            if (checkextension(RoomImageFileUpload.FileName))
            {

                if (RoomImageFileUpload.PostedFile.ContentLength < 1000000)
                {
                    string path = Server.MapPath("RoomImage");
                    path = path + "\\" + RoomImageFileUpload.FileName;

                    RoomImageFileUpload.SaveAs(path);
                    param[5] = new SqlParameter("@roomimageupload", SqlDbType.VarChar);
                    param[5].Value = "~\\admin\\RoomImage\\" + RoomImageFileUpload.FileName;
                }
            }
        }
        param[6] = new SqlParameter("@roomprice", SqlDbType.Int);
        param[6].Value = txtroomprice.Text.Trim();

        int result = objdf.ExecuteQuery(param,"usp_AddRoomDetails");

        if (result > 0)
        {
            Response.Write("<script>alert('Data Update Successfully')</script>");
        }

        txtroomnumber.Text = "";
        txtmaxcapacity.Text = "";
        txtmaxadults.Text = "";
        txtmaxchild.Text = "";
        txtroomtype.Text = "";
        txtroomprice.Text = "";

    }

    private bool checkextension(string filename)
    {

        string ex = Path.GetExtension(filename).ToLower();
        switch (ex)
        {
            case ".jpg": return true;
            case ".jpeg": return true;
            case ".png": return true;
            default: return false;



        }
    }
}

