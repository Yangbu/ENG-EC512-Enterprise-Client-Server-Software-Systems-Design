using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.Data;
using System.Web.Security;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

    }
    protected void submit_Click(object sender, EventArgs e)
    {
        if (username.Text == "")
        {
            Label1.Text = "Please enter a user name";
            Label2.Text = "";
            Label3.Text = "";
            return;
        }
                if (username.Text.Length < 4 || username.Text.Length > 12)
        {
            Label1.Text = "Enter a user name between 4 to 12 characters";
            Label2.Text = "";
            Label3.Text = "";
            return;
        }
        if (password.Text == "")
        {
            Label2.Text = "Please enter a password";
            Label1.Text = "";
            Label3.Text = "";
            return;
        }
        if (password.Text.Length < 6 || password.Text.Length > 12)
        {
            Label2.Text = "Enter a password between 6 to 12 characters";
            Label1.Text = "";
            Label3.Text = "";
            return;
        }
        string strRegex = @"((?=.*\d)(?=.*\D)|(?=.*[a-zA-Z])(?=.*[^a-zA-Z]))^.{6,12}$"; Regex re = new Regex(strRegex);
        if (!re.IsMatch(password.Text))
        {
            Label2.Text = "Contain at least two kinds from numbers,characters,letters";
            Label1.Text = "";
            Label3.Text = "";
            return;
        }
        if (password.Text != rpassword.Text)
        {
            Label3.Text = "Passwords do not match";
            Label2.Text = "";
            Label1.Text = "";
            return;
        }
        if (rpassword.Text == "")
        {
            Label1.Text = "Please re-enter the password";
            Label2.Text = "";
            Label3.Text = "";
            return;
        }
        DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        for (int i = 0; i < dv.Table.Rows.Count;i++ )
        {
            DataRow row = dv.Table.Rows[i];
            string s = Convert.ToString(row["Name"]);
            if (s == username.Text)
            {
                Label1.Text = "User name already exists.";
                Label2.Text = "";
                Label3.Text = "";
                break;
            }
        }
        if (Label1.Text == "")
        {
            hashpass.Value = FormsAuthentication.HashPasswordForStoringInConfigFile(password.Text, "SHA1");
            SqlDataSource1.Insert();
            Label1.Text = "User Added";
            FormsAuthentication.RedirectFromLoginPage(username.Text, false);
        }



    }
    protected void already_Click(object sender, EventArgs e)
    {
        Response.Redirect("Sign in.aspx");
    }
}