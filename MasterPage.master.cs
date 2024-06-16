using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class MasterPage : System.Web.UI.MasterPage
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            Button1.Text = Session["username"].ToString();
            Button2.Visible = true;

        }
        else
        {
            //Label1.Text = "You can Login here";
            Button2.Visible = false;

        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Beauty.aspx");
        //Label1.Text = "You have logged out successfully...";
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Cartpage.aspx");
    }
    protected void Menu2_MenuItemClick(object sender, MenuEventArgs e)
    {

    }
    
}
