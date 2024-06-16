using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Invoice : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


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
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}