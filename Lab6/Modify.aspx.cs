using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Modify : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "")
        {
                try
                {
                    double input = double.Parse(TextBox2.Text);

                        if (input > 0)
                        {
                            if (DropDownList1.Items.FindByText(TextBox1.Text)==null)
                            {
                                SqlDataSource1.Insert();
                                TextBox1.Text = "";
                                TextBox2.Text = "";
                                Label3.Text = "Add successfully!";

                            }
                            else
                            {
                                Label3.Text = "Unit already exists!";
                            }
                        }
                        else
                        {
                            Label3.Text = "Please enter a positive number!";
                            TextBox2.Text = "";
                        }
 
                }
                catch
                {
                    Label3.Text = "Please enter the correct conversion factor !";
                    TextBox2.Text = "";
                }
        }
        else
        {
            Label3.Text = "Please enter the unit!";
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.Text == "Please Select")
        {
            Label3.Text = "Please select a unit!";    
        }
        else
        {
            if (DropDownList1.SelectedItem != null)
            {
                SqlDataSource1.Delete();
                Label3.Text = "Delete successfully!";
                Label4.Text = "";
            }
            else
            {
                Label3.Text = "Please select a unit!";
            }
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        if (dv == null)
        {
            Label3.Text = "DataTable is null!";
        }
        else
        {
                    if (DropDownList1.SelectedItem.Text == "Please Select")
                    {
                         Label3.Text = "Please select a unit!";
                         Label4.Text = "";
                    }
                    else
                    {
                        DataRow row = dv.Table.Rows[DropDownList1.SelectedIndex];
                        string s = Convert.ToString(row["Factor"]);
                        Label4.Text = s;
                    }

        }
    }

}