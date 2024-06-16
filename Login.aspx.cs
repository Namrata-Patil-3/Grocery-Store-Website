using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Grocery store website\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (! IsPostBack)
        {
            if (Session["username"] != null)
            {
                Response.Redirect("Vegetable.aspx");
            }
 
        }
        


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        
        con.Open();
        SqlCommand cmd=con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from log where username= '"+txtuser.Text+"' and pass='"+txtpass.Text+"'";

        cmd.ExecuteNonQuery();
        SqlDataReader read= cmd.ExecuteReader();
        

        if(txtuser.Text=="admin" & txtpass.Text=="1234") 
        {
            L1.Text = "Admin Login Successfully!";
            L1.ForeColor = System.Drawing.Color.DarkGreen;
            Response.Redirect("Addproducts.aspx");
        }
        else if (read.Read())
        {
            Session["username"] = txtuser.Text;
            Session["pass"] = txtpass.Text;
            Session["buyitems"] = null;
            
            Response.Redirect("Vegetable.aspx");
        }
        else
        {
            L1.ForeColor = System.Drawing.Color.Red;
            L1.Text="Login Failed";
        }

        con.Close();
        
        
    }
    

}