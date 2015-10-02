using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        double result = 0;
        try
        {
            double input = double.Parse(TextBox1.Text);
            if (input > 0)
            {
                if (DropDownList1.SelectedItem.Text == "Please Select" || DropDownList2.SelectedItem.Text == "Please Select")
                {
                    Label5.Text = "Please Select two units!";
                }
                else 
                {
                    if (DropDownList1.SelectedValue == DropDownList2.SelectedValue)
                    {
                        Label5.Text = "Invalid conversion between the same unit!";
                        TextBox2.Text = "";
                    }
                    else
                    {
                        result = input * Convert.ToDouble(DropDownList1.SelectedValue) / Convert.ToDouble(DropDownList2.SelectedValue);
                        Label5.Text = "";
                        TextBox2.Text = Convert.ToString(result);
                    }

                }
            }
            else
            {
                Label5.Text = "Please enter a positive number";
                TextBox2.Text = "invalid input";
            }
        }
        catch
        {
            Label5.Text = "Please enter the correct number!";
            TextBox2.Text = "invalid input";
        }
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Modify.aspx");
    }
}