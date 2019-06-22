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

        DateTime seconddate = DateTime.Parse(chkout.Text);
        DateTime firstdate = DateTime.Parse(chkin.Text);
        TimeSpan diff = seconddate - firstdate;
        double nights = (diff).TotalDays;

        txtadults.Text = Request.QueryString["Adults"].ToString();
        txtchild.Text = Request.QueryString["Childs"].ToString();
        if (Request.QueryString["Type"].ToString() == "SINGLE")
            imgRoom.ImageUrl = "~/image/r1.jpg";
        if (Request.QueryString["Type"].ToString() == "DOUBLE")
            imgRoom.ImageUrl = "~/image/r2.jpg";
        if (Request.QueryString["Type"].ToString() == "LUXURY")
            imgRoom.ImageUrl = "~/image/r4.jpg";
        lblRoomType.Text = Request.QueryString["Type"].ToString();
        lblbasePrice.Text = Request.QueryString["Amount"];
        lblnights.Text = nights.ToString();
        int amount = Convert.ToInt32(Request.QueryString["Amount"]);
        lblroomprice.Text = (amount *  nights).ToString();

    }


    protected void btnBook_Click(object sender, EventArgs e)
    {
        if(Session["CustomerSession"] != null)
        {
            Response.Redirect("mybooking.aspx");
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
        }
    }
}