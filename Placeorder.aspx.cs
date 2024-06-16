using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Placeorder : System.Web.UI.Page
{
    SqlConnection scon = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Visual studio website\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        scon.Open();
        SqlCommand cmd = new SqlCommand("INSERT INTO Customerdetailstable(CustomerName, MobileNo, City, Address, Landmark, HouseNo, Pincode) values('"+Session["username"]+ "', '"+txt2.Text+"','"+txt7.Text+"','"+txt4.Text+"','"+txt8.Text+"','"+txt3.Text+"','"+txt1.Text+"')", scon);
        cmd.ExecuteNonQuery();
        scon.Close();
        
        
        Response.Write("<script>alert('Order Placed Thank You!')</script>");
        Response.Write("<script>alert('Your order is Delivered in 2 hours.')</script>");

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Invoice2.aspx");
    }
}