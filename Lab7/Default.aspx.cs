using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        HiddenField1.Value = "0";
        HiddenField2.Value = "0";
        HiddenField3.Value = "0";
        DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        string[] hd = { HiddenField1.Value, HiddenField2.Value, HiddenField3.Value };
        for (int i = 0; i < RadioButtonList1.Items.Count; i++)
        {
            DataRow row = dv.Table.Rows[i];
            string s = Convert.ToString(row["count"]);
            hd[i]= s;
        }
        if (RadioButtonList1.SelectedItem != null)
        {
            hd[RadioButtonList1.SelectedIndex] = (Convert.ToInt32(hd[RadioButtonList1.SelectedIndex]) + 1).ToString();
            Label2.Text = hd[RadioButtonList1.SelectedIndex];
            if (RadioButtonList1.SelectedIndex == 0)
            {
                SqlDataSource1.Update();
            }
            else if (RadioButtonList1.SelectedIndex == 1)
            {
                SqlDataSource2.Update();
            }
            else
            {
                SqlDataSource3.Update();
            }
            Response.Redirect("Votes.aspx");
        }
        else
        {
            Label1.Text = "Please select a candidate!";
        }
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void HiddenField1_ValueChanged1(object sender, EventArgs e)
    {

    }
}