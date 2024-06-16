using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Addproducts : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Grocery store website\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Btn1_Click(object sender, EventArgs e)
    {
        FU1.SaveAs(Server.MapPath("~/image/") + Path.GetFileName(FU1.FileName));
        string link = "image/" + Path.GetFileName(FU1.FileName);
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into Table3(name,price,quantity,description,productpic,category) values('" + txt1.Text + "','" + txt2.Text + "','" + txt3.Text + "','" + txt4.Text + "','" + link + "','"+DropDownList1.SelectedItem.Text+"')";
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("Addproducts.aspx");    
    }
    protected void Btn3_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "delete from Table3 Where name='" + txt1.Text + "'";

        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("Addproducts.aspx");
    }
    protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
       
                con.Open();
                SqlCommand cmd = new SqlCommand("Delete from Table3 where name=@name", con);
                cmd.ExecuteNonQuery();
                con.Close();
                
    
    }
    protected void GridView2_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        //GridView2.DataBind();
    }
    protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        
    }
}