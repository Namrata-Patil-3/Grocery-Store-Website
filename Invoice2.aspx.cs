using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Invoice2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("Login.aspx");
        }

    }
    int sum = 0;
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        
    

        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Label x = (Label)e.Row.FindControl("Label1");
            sum = sum + int.Parse(x.Text);
        }
        if (e.Row.RowType == DataControlRowType.Footer)
        {
            Label x = (Label)e.Row.FindControl("lbltotal");
            x.Text = sum.ToString();
        }
    
   
    
    
    }
    protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}