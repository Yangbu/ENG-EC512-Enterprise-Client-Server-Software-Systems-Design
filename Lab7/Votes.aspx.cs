using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Drawing;

public partial class Votes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int sum = 0;
        double per = 0;
        DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            DataRow dr = dv.Table.Rows[i];
            sum += Convert.ToInt32(dr["count"]);
        }
        DataRow row = dv.Table.Rows[0];
        TableRow t = new TableRow();
        TableCell t1 = new TableCell();
        TableCell t2 = new TableCell();
        TableCell t3 = new TableCell();
        t1.Text = "Candidate";
        t2.Text = "Votes";
        t3.Text = "Percentage";
        t.Cells.Add(t1);
        t.Cells.Add(t2);
        t.Cells.Add(t3);
        t1.BorderWidth = 1;
        t1.BorderColor = Color.Black;
        t1.ForeColor = Color.Brown;
        t1.Width = 100;
        t2.BorderWidth = 1;
        t2.ForeColor = Color.Blue;
        t2.BorderColor = Color.Black;
        t2.Width = 40;
        t3.BorderWidth = 1;
        t3.ForeColor = Color.Red;
        t3.BorderColor = Color.Black;
        t3.Width = 40;
        Table1.Rows.Add(t);
        foreach (DataRow dr in dv.Table.Rows)
        {
            TableRow r = new TableRow();
            TableCell c1 = new TableCell();
            TableCell c2 = new TableCell();
            TableCell c3 = new TableCell();
            r.Cells.Add(c1);
            r.Cells.Add(c2);
            r.Cells.Add(c3);
            c1.BorderWidth = 1;
            c1.BorderColor = Color.Black;
            c1.Width = 100;
            c2.BorderWidth = 1;
            c2.BorderColor = Color.Black;
            c2.Width = 40;
            c3.BorderWidth = 1;
            c3.BorderColor = Color.Black;
            c3.Width = 40;
            c1.Text = dr["name"].ToString();
            c2.Text = dr["count"].ToString();
            per = Convert.ToDouble(dr["count"]) / Convert.ToDouble(sum);
            c3.Text = (per*100).ToString()+"%";
            Table1.Rows.Add(r);
        }
    }
}