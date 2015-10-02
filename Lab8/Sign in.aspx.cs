using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Security;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         try  //catches blank User name
        {
            DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
           for (int i = 0; i < dv.Table.Rows.Count;i++ )
            {
            DataRow row = dv.Table.Rows[i];
            string s = Convert.ToString(row["Name"]);
            if (s != TextBox1.Text)
            {
                break;
            }else{
            string hashpass = FormsAuthentication.HashPasswordForStoringInConfigFile(TextBox2.Text, "SHA1");
            DataRow row1 = dv.Table.Rows[i];
            string temppass = Convert.ToString(row["Password"]);
            if (temppass == hashpass)
            {
                //authenticated
                FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, false);
                return;
            }


            }
             }

        }
        catch
        {
            //Not authenticated
        }
        Label3.Text = "Login failed. Please check your username and password";
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
            
    }
}