using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Grouping_project : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection c = new SqlConnection(@"data source=(localdb)\v11.0; initial catalog=Tablelist3; integrated security=true");
        c.Open();
        SqlCommand cmd= new SqlCommand("list", c);
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@grcode", TextBox1.Text);
        cmd.Parameters.AddWithValue("@grdescription ", TextBox2.Text);
        cmd.Parameters.AddWithValue("@grouptype ", DropDownList1.SelectedValue);
        cmd.ExecuteNonQuery();
        c.Close();
        Label4.Text = "DATA STORED";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection c = new SqlConnection(@"data source=(localdb)\v11.0; initial catalog=Tablelist3; integrated security=true");
        c.Open();
        SqlCommand cmd = new SqlCommand("uptodate", c);
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@grcode", TextBox1.Text);
        cmd.Parameters.AddWithValue("@grdescription ", TextBox2.Text);
        cmd.Parameters.AddWithValue("@grouptype ", DropDownList1.SelectedValue);
        cmd.ExecuteNonQuery();
        c.Close();
        c.Close();
        Label4.Text = "DATA UPDATED";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection c = new SqlConnection(@"data source=(localdb)\v11.0; initial catalog=Tablelist3; integrated security=true");
        c.Open();
        SqlCommand cmd = new SqlCommand("delete1", c);
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@grcode", TextBox1.Text);
        cmd.Parameters.AddWithValue("@grdescription ", TextBox2.Text);
        cmd.Parameters.AddWithValue("@grouptype ", DropDownList1.SelectedValue);
        cmd.ExecuteNonQuery();
        c.Close();
        c.Close();
        Label4.Text = "DATA DELETED";
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox1.Focus();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        
         SqlConnection c = new SqlConnection(@"data source=(localdb)\v11.0; initial catalog=Tablelist3; integrated security=true");
         SqlDataAdapter de = new SqlDataAdapter("showdetails1", c);
         de.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;
         DataTable dt = new DataTable();
         de.Fill(dt);
         Repeater1.DataSource = dt;
         Repeater1.DataBind();
         Label4.Text = "data showing..";
        

    }
}