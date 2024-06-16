using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Milkdairy : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Visual studio website\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    
        
        
    


  


    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "addtocart")
        {
            DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
            Response.Redirect("Addtocart.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + dlist.SelectedItem.ToString());

        }

        if (e.CommandName == "viewdetails")
        {
            Response.Redirect("Viewdetails.aspx?id=" + e.CommandArgument.ToString());
        }
       
    }
    /*protected void Button4_Click(object sender, EventArgs e)
    {
        string name = Label1.Text;
        int price = Label2.Text;
        string quantity = Label3.Text;

        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into carttable(name,productpic,price,quantity) values('" +  name + "','" + price + "','" + quantity + "')";
        cmd.ExecuteNonQuery();
        con.Close();
        
    }*/
}