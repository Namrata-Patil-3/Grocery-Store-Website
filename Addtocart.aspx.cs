using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Addtocart : System.Web.UI.Page
{
    SqlConnection scon = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Grocery store website\App_Data\Database.mdf;Integrated Security=True;User Instance=True");

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            
            if(Session["username"]==null)
            {
                Response.Redirect("Login.aspx");

            }
            
            
            Session["addproducts"]="false";
            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("Sno");
            dt.Columns.Add("Id");
            dt.Columns.Add("Name");
            dt.Columns.Add("Productpic");
           
            dt.Columns.Add("Price");
            dt.Columns.Add("Quantity");
            dt.Columns.Add("totalprice");

            if (Request.QueryString["Id"] != null)
            {
                if (Session["buyitems"] == null)
                {
                    dr = dt.NewRow();

                    SqlConnection scon = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Grocery store website\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
                   
                    
                    SqlDataAdapter da = new SqlDataAdapter("select * from Table3 where id=" + Request.QueryString["Id"],scon);
                    
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["Sno"] = 1;
                    dr["Id"] = ds.Tables[0].Rows[0]["id"].ToString();
                    dr["Name"] = ds.Tables[0].Rows[0]["name"].ToString();
                    dr["Productpic"] = ds.Tables[0].Rows[0]["productpic"].ToString();
                   
                    dr["Price"] = ds.Tables[0].Rows[0]["price"].ToString();
                    dr["Quantity"] = Request.QueryString["Quantity"];

                    int Price1=Convert.ToInt32(ds.Tables[0].Rows[0]["price"].ToString());
                    int Quantity1 = Convert.ToInt32(Request.QueryString["Quantity"].ToString());
                    int TotalPrice = Price1 * Quantity1;
                    dr["totalprice"] = TotalPrice;
                    

                    dt.Rows.Add(dr);

                    scon.Open();
                    SqlCommand cmd = new SqlCommand("INSERT INTO carttable(id, username, productname, productpic, price, quantity) VALUES('" + dr["Id"] + "', '" + Session["username"] + "','" + dr["Name"] + "','" + dr["Productpic"] + "','" + dr["Price"] + "','" + dr["Quantity"] + "')",scon);
                    cmd.ExecuteNonQuery();
                    scon.Close();

                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    Session["buyitems"] = dt;
                    Button2.Enabled=true;

                    GridView1.FooterRow.Cells[5].Text = "Total Amount";
                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                    Response.Redirect("Addtocart.aspx");
                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    int sr;
                    sr = dt.Rows.Count;
                    dr = dt.NewRow();
                    String mycon = (@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Grocery store website\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
                    SqlConnection scon = new SqlConnection(mycon);
                    String myquery = "select * from Table3 where id=" + Request.QueryString["Id"];
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = myquery;
                    cmd.Connection = scon;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["Sno"] =sr + 1;
                    dr["Id"] = ds.Tables[0].Rows[0]["id"].ToString();
                    dr["Name"] = ds.Tables[0].Rows[0]["name"].ToString();
                    dr["Productpic"] = ds.Tables[0].Rows[0]["productpic"].ToString();
                    dr["Price"] = ds.Tables[0].Rows[0]["price"].ToString();
                    dr["Quantity"] = Request.QueryString["Quantity"];

                    int Price = Convert.ToInt32(ds.Tables[0].Rows[0]["price"].ToString());
                    int Quantity = Convert.ToInt32(Request.QueryString["Quantity"].ToString());
                    int TotalPrice = Price * Quantity;
                    dr["totalprice"] = TotalPrice;

                    dt.Rows.Add(dr);

                    scon.Open();
                    SqlCommand cmd1 = new SqlCommand("INSERT INTO carttable(id, username, productname, productpic, price, quantity) VALUES('" + dr["Id"] + "', '" + Session["username"] + "','" + dr["Name"] + "','" + dr["Productpic"] + "','" + dr["Price"] + "','" + dr["Quantity"] + "')",scon);
                    cmd1.ExecuteNonQuery();
                    scon.Close();

                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    Session["buyitems"] = dt;
                    Button2.Enabled=true;

                    GridView1.FooterRow.Cells[5].Text = "Total Amount";
                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                    


                    Response.Redirect("Addtocart.aspx");
                }
            }
        
        else
        {
            
            dt= (DataTable)Session["buyitems"];
            GridView1.DataSource = dt;
            GridView1.DataBind();
            if (GridView1.Rows.Count > 0)
            {
                GridView1.FooterRow.Cells[5].Text = "Total Amount";
                GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
            }
        }
        
    }
    string OrderDate=DateTime.Now.ToShortDateString();
    Session["Orderdate"]=OrderDate;
    orderid();
    }
    public int grandtotal()
    {
        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];
        int nrow = dt.Rows.Count;
        int i = 0;
        int gtotal = 0;
        while (i < nrow)
        {
            gtotal=gtotal+Convert.ToInt32(dt.Rows[i]["price"].ToString());
            i=i+1;
        }
        return gtotal;
    }
    public void orderid()
    {
        String alpha = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
        Random r = new Random();
        char[] myArray = new char[5];
        for (int i = 0; i < 5; i++)
        {
            myArray[i]=alpha[(int)(35*r.NextDouble())];
        }
        String orderid;
        orderid="Order_id:"+DateTime.Now.Hour.ToString()+DateTime.Now.Second.ToString()+DateTime.Now.Day.ToString()+DateTime.Now.Month.ToString()+DateTime.Now.Year.ToString()+new string(myArray)+DateTime.Now.Minute.ToString()+DateTime.Now.Second.ToString();
        Session["Orderid"]=orderid;
    }
    

    
    protected void Button2_Click(object sender, EventArgs e)
    {
        DataTable dt;
        dt = (DataTable)Session["buyitems"];
        for (int i = 0; i <= dt.Rows.Count - 1; i++)
        {
            SqlConnection scon = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Grocery store website\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
            scon.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO orderdetails(orderdate, orderid, CustomerName, productname, quantity, totalprice) VALUES('" + Session["Orderdate"] + "','" + Session["Orderid"] + "','"+Session["username"]+"','" + dt.Rows[i]["Name"] + "','" + dt.Rows[i]["Quantity"] + "','" + dt.Rows[i]["Price"] + "')",scon);
            cmd.ExecuteNonQuery();
            scon.Close();
        }
        if (Session["username"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            if (GridView1.Rows.Count.ToString() == "0")
            {
                Response.Write("<script>alert('Your cart is Empty. You cannot Place an orderid')</script>");
            }
            else
            {
                Response.Redirect("Placeorder.aspx");

            }
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
    {
        
    
        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];
        for (int i = 0; i <= dt.Rows.Count - 1; i++)
        {
            int sr;
            int sr1;
            string qdata;
            string dtdata;
            sr=Convert.ToInt32(dt.Rows[0]["Sno"].ToString());
            TableCell cell=GridView1.Rows[e.RowIndex].Cells[0];
            qdata = cell.Text;
            dtdata=sr.ToString();
            sr1=Convert.ToInt32(qdata);
            TableCell Id = GridView1.Rows[e.RowIndex].Cells[1];

            if(sr==sr1)
            {
                dt.Rows[0].Delete();
                dt.AcceptChanges();
                scon.Open();
                SqlCommand cmd = new SqlCommand("Delete from carttable where id='" + Id.Text + "' and username='" + Session["username"] + "'", scon);
                cmd.ExecuteNonQuery();
                scon.Close();
                break;
            }
        }
        for(int i=1; i<=dt.Rows.Count; i++)
        {
            dt.Rows[i-1]["Sno"]=i;
            dt.AcceptChanges();
        }
        Session["buyitems"]=dt;
        Response.Redirect("Addtocart.aspx");
    }
    
}

