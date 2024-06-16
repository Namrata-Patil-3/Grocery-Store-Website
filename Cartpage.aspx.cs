using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;


public partial class Cartpage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        string OrderDate = DateTime.Now.ToShortDateString();
        Session["Orderdate"] = OrderDate;
        orderid();        
    }
    public void orderid()
    {
        String alpha = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
        Random r = new Random();
        char[] myArray = new char[5];
        for (int i = 0; i < 5; i++)
        {
            myArray[i] = alpha[(int)(35 * r.NextDouble())];
        }
        String orderid;
        orderid = "Order_id:" + DateTime.Now.Hour.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + new string(myArray) + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString();
        Session["Orderid"] = orderid;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string mainconn = ConfigurationManager.ConnectionStrings["jacob"].ConnectionString;
        SqlConnection scon = new SqlConnection(mainconn);

        foreach (GridViewRow gr in GridView1.Rows)
        {
            string sqlquery="INSERT INTO orderdetails(orderdate, orderid, CustomerName, productname, quantity, totalprice) VALUES('" + Session["Orderdate"] + "','" + Session["Orderid"] + "','" + Session["username"] + "', @productname, @quantity, @price)";
            SqlCommand cmd = new SqlCommand(sqlquery, scon);
            cmd.Parameters.AddWithValue("@productname", gr.Cells[2].Text);
            cmd.Parameters.AddWithValue("@quantity", gr.Cells[5].Text);
            cmd.Parameters.AddWithValue("@price", gr.Cells[4].Text);
            scon.Open();
            cmd.ExecuteNonQuery();
            scon.Close();


        }
        Response.Redirect("Placeorder.aspx");

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
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
}
