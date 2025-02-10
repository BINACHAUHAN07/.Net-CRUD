using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadRecord();
        }
    }

    SqlConnection conn = new SqlConnection("Data Source=AARTI_PRAJAPATI;Initial Catalog=binaa;User ID=sa;Password=abc@123#;TrustServerCertificate=True;");
    protected void Button1_Click(object sender, EventArgs e)
    {

        int id = int.Parse(TextBox1.Text);
        string name = TextBox2.Text, city = DropDownList1.SelectedValue, email = TextBox3.Text, phone = TextBox4.Text, gender = RadioButtonList1.SelectedValue;
        decimal salary = decimal.Parse(TextBox5.Text);
        string language = string.Join(",", CheckBoxList1.Items.Cast<ListItem>()
                              .Where(i => i.Selected)
                              .Select(i => i.Value));

        conn.Open();
        SqlCommand cmd = new SqlCommand("Insert into bina_crud values('" + id + "','" + name + "','" + city + "','" + email + "','" + phone + "','" + salary + "','" + gender + "','" + language + "')", conn);

        cmd.ExecuteNonQuery();
        conn.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Sucessfully Inserted');", true);
        LoadRecord();
    }
    void LoadRecord()
    {
        SqlCommand cmd = new SqlCommand("select * from bina_crud", conn);
        SqlDataAdapter sd = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sd.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();

    }



    protected void Button2_Click(object sender, EventArgs e)
    {

        int id = int.Parse(TextBox1.Text);
        string name = TextBox2.Text, city = DropDownList1.SelectedValue, email = TextBox3.Text, phone = TextBox4.Text, gender = RadioButtonList1.SelectedValue;
        decimal salary = decimal.Parse(TextBox5.Text);
        string language = string.Join(",", CheckBoxList1.Items.Cast<ListItem>()
                              .Where(i => i.Selected)
                              .Select(i => i.Value));
        conn.Open();
        SqlCommand cmd = new SqlCommand("Update bina_crud set Name='" + name + "',City='" + city + "',Email='" + email + "',Phone='" + phone + "',Salary='" + salary + "',Gender='" + gender + "',Language='" + language + "' where Id='" + id + "' ", conn);

        cmd.ExecuteNonQuery();
        conn.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Sucessfully Update');", true);
        LoadRecord();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        int id = int.Parse(TextBox1.Text);
        conn.Open();
        SqlCommand cmd = new SqlCommand("Delete bina_crud where Id='" + id + "'", conn);
        cmd.ExecuteNonQuery();
        conn.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Deleted');", true);
        LoadRecord();
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        int id = int.Parse(TextBox1.Text);

        SqlCommand cmd = new SqlCommand("Select * from bina_crud", conn);
        SqlDataAdapter sd = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sd.Fill(dt);

        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    

    protected void Button5_Click(object sender, EventArgs e)
    {
        TextBox1.Text = string.Empty; 
        TextBox2.Text = string.Empty; 
        TextBox3.Text = string.Empty;
        TextBox4.Text = string.Empty; 
        TextBox5.Text = string.Empty;

        RadioButtonList1.ClearSelection(); 

      
        foreach (ListItem item in CheckBoxList1.Items)
        {
            item.Selected = false; 
        }

    }

}