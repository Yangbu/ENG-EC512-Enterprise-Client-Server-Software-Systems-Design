using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Security;

public partial class Personal_Page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (User.Identity.IsAuthenticated)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = true;
            Panel4.Visible = true;
            Panel5.Visible = true;
            Panel6.Visible = true;
            hello.Text = User.Identity.Name;

        }
        else
        {
            Panel1.Visible = true;
            Panel2.Visible = true;
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel5.Visible = false;
            Panel6.Visible = false;
            

        }
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        DataView dv = (DataView)SqlDataSource3.Select(DataSourceSelectArguments.Empty);
        for (int i = 0; i < dv.Count; i++)
        {
            DataRow row = dv.Table.Rows[i];
            string s = Convert.ToString(row["Name"]);
            if ((s) == hello.Text)
            {
                first.Text = "4";
                string url = string.Format("Private/Viewprofile.aspx?first={0}", first.Text);
                Response.Redirect(url);
            }
        }
        Response.Redirect("Private/Profile Page.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        first.Text = "1";
        string url = string.Format("Private/Viewprofile.aspx?first={0}", first.Text);
        Response.Redirect(url);
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        first.Text = "2";
        string url = string.Format("Private/Viewprofile.aspx?first={0}", first.Text);
        Response.Redirect(url);
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        first.Text = "3";
        string url = string.Format("Private/Viewprofile.aspx?first={0}", first.Text);
        Response.Redirect(url);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void logout_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Panel1.Visible = true;
        Panel2.Visible = true;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;
        Panel6.Visible = false;

    }
    protected void delete_Click(object sender, EventArgs e)
    {
        Panel7.Visible = false;
        Panel8.Visible = true;
        Panel5.Visible = false;
        Panel9.Visible = true;

    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Panel1.Visible = true;
        Panel2.Visible = true;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;
        Panel6.Visible = false;
        Panel7.Visible = true;
        Panel8.Visible = false;
        Panel5.Visible = false;
        Panel9.Visible = false;
        SqlDataSource1.Delete();
        try
        {
            SqlDataSource2.Delete();
            SqlDataSource3.Delete();

        }
        catch
        {

        }
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        Panel7.Visible = true;
        Panel8.Visible = false;
        Panel5.Visible = true;
        Panel9.Visible = false;
    }
}