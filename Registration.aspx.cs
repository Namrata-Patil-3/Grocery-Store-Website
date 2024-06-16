using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Registration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Visual studio website\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Btn_Click(object sender, EventArgs e)
    {
       
        {

            con.Open();
            SqlCommand cmd = new SqlCommand(@"INSERT INTO log(username, pass, mobileno, emailid, address)VALUES('"+ Txt1.Text + "','" + Txt5.Text + "','" + Txt2.Text + "','" + Txt3.Text + "','" + Txt4.Text + "')", con);
            cmd.ExecuteNonQuery();

            
            con.Close();
            Label2.Text = "Registered Successfully";
            Response.Redirect("Login.aspx");
        }
        
    }
}