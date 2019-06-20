using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        fillRoomDetails();
    }

    public void fillRoomDetails()
    {
        chkin.Text = Request.QueryString["CheckIn"].ToString();
        chkout.Text = Request.QueryString["CheckOut"].ToString();
        txtadults.Text = Request.QueryString["Adults"].ToString();
        txtchild.Text = Request.QueryString["Childs"].ToString();
        if (Request.QueryString["Type"].ToString() == "SINGLE")
            imgRoom.ImageUrl = "~/image/r1.jpg";
        if (Request.QueryString["Type"].ToString() == "DOUBLE")
            imgRoom.ImageUrl = "~/image/r2.jpg";
        if (Request.QueryString["Type"].ToString() == "LUXURY")
            imgRoom.ImageUrl = "~/image/r4.jpg";
        lblRoomType.Text = Request.QueryString["Type"].ToString();
        lblroomprice.Text = Request.QueryString["Amount"].ToString();

    }
}