using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.Data;

public partial class Private_Profile_Page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string sw;
            try
            {
                string sq = string.Format("{0}", Request.QueryString["last"]);
                Label19.Text = sq;
                sw = string.Format("{0}", Request.QueryString["first"]);
            }
            catch
            {
                sw = "0";
            }
            if (sw == "1")
            {
                Panel1.Visible = false;
                Panel2.Visible = true;
                Panel3.Visible = true;
            }
            else
            {
                Panel1.Visible = true;
                Panel2.Visible = false;
                Panel3.Visible = false;
            }
  
            hello.Text = User.Identity.Name;

    }
    protected void Create_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox6.Text != "" && TextBox7.Text != "" && TextBox8.Text != "")
        {
            Label9.Text = "";
            Label10.Text = "";
            Label11.Text = "";
            Label12.Text = "";
            Label14.Text = "";
            Label15.Text = "";
            Label16.Text = "";
            try
            {
                if (Convert.ToInt32(TextBox2.Text) > 0)
                {
                    Label10.Text = "";

                }
                else
                {
                    Label10.Text = "Formal Error! ep:18";
                }
            }
            catch
            {
                Label10.Text = "Formal Error! ep:18";
            }
            try
            {
                if (Convert.ToInt64(TextBox4.Text) > 0)
                {
                    Label12.Text = "";

                }
                else
                {
                    Label12.Text = "Formal Error! ep:6177179422";
                }
            }
            catch
            {
                Label12.Text = "Formal Error! ep:6177179422";
            }
            try
            {
                if (Convert.ToInt32(TextBox7.Text) > 0)
                {
                    Label15.Text = "";
                }
                else
                {
                    Label15.Text = "Formal Error!  ep:19910305";
                }
            }
            catch
            {
                Label15.Text = "Formal Error!  ep:19910305";
            }
            try
            {
                string strRegex = @"^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"; Regex re = new Regex(strRegex);
                if (re.IsMatch(TextBox6.Text))
                {
                    Label14.Text = "";
                }
                else
                {
                    Label14.Text = "Formal Error! ep:123456789@gmail.com";
                }
            }
            catch
            {
                Label14.Text = "Formal Error! ep:123456789@gmail.com";
            }
            try
            {
                string strRegex = @"^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"; Regex re = new Regex(strRegex);
                if (Convert.ToInt32(TextBox2.Text) > 0 && Convert.ToInt64(TextBox4.Text) > 0 && re.IsMatch(TextBox6.Text))
                {
                    Label1.Text = DropDownList1.SelectedItem.Text;
                    Label9.Text = "";
                    Label10.Text = "";
                    Label11.Text = "";
                    Label12.Text = "";
                    Label14.Text = "";
                    Label15.Text = "";
                    Label16.Text = "";
                    SqlDataSource1.Insert();
                    SqlDataSource2.Insert();
                    Response.Redirect("/Default.aspx");
                }

            }
            catch
            {

            }


        }
        else
        {
            if (TextBox1.Text == "")
            {
                Label9.Text = "Name can not be empty!";
            }
            else
            {
                Label9.Text = "";
            }
            if (TextBox2.Text == "")
            {
                Label10.Text = "Age can not be empty!";
            }
            else
            {
                Label10.Text = "";
            }
            if (TextBox3.Text == "")
            {
                Label11.Text = "Address can not be empty!";
            }
            else
            {
                Label11.Text = "";
            }
            if (TextBox4.Text == "")
            {
                Label12.Text = "Telephone can not be empty!";
            }
            else
            {
                Label12.Text = "";
            }
            if (TextBox6.Text == "")
            {
                Label14.Text = "E-mail address can not be empty!";
            }
            else
            {
                Label14.Text = "";
            }
            if (TextBox7.Text == "")
            {
                Label15.Text = "Date of Birth can not be empty!";
            }
            else
            {
                Label15.Text = "";
            }
            if (TextBox8.Text == "")
            {
                Label16.Text = "Nationality can not be empty!";
            }
            else
            {
                Label16.Text = "";
            }

        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox6.Text != "" && TextBox7.Text != "" && TextBox8.Text != "")
        {
            Label9.Text = "";
            Label10.Text = "";
            Label11.Text = "";
            Label12.Text = "";
            Label14.Text = "";
            Label15.Text = "";
            Label16.Text = "";
            try
            {
                if (Convert.ToInt32(TextBox2.Text) > 0)
                {
                    Label10.Text = "";

                }
                else
                {
                    Label10.Text = "Formal Error! ep:18";
                }
            }
            catch
            {
                Label10.Text = "Formal Error! ep:18";
            }
            try
            {
                if (Convert.ToInt64(TextBox4.Text) > 0)
                {
                    Label12.Text = "";

                }
                else
                {
                    Label12.Text = "Formal Error! ep:6177179422";
                }
            }
            catch
            {
                Label12.Text = "Formal Error! ep:6177179422";
            }
            try
            {
                string strRegex = @"^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"; Regex re = new Regex(strRegex);
                if (re.IsMatch(TextBox6.Text))
                {
                    Label14.Text = "";
                }
                else
                {
                    Label14.Text = "Formal Error! ep:123456789@gmail.com";
                }
            }
            catch
            {
                Label14.Text = "Formal Error! ep:123456789@gmail.com";
            }
            try
            {
                if (Convert.ToInt32(TextBox7.Text) > 0)
                {
                    Label15.Text = "";
                }
                else
                {
                    Label15.Text = "Formal Error!  ep:19910305";
                }
            }
            catch
            {
                Label15.Text = "Formal Error!  ep:19910305";
            }
            try
            {
                string strRegex = @"^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"; Regex re = new Regex(strRegex);
                if (Convert.ToInt32(TextBox2.Text) > 0 && Convert.ToInt64(TextBox4.Text) > 0 && re.IsMatch(TextBox6.Text))
                {
                    Label9.Text = "";
                    Label10.Text = "";
                    Label11.Text = "";
                    Label12.Text = "";
                    Label14.Text = "";
                    Label15.Text = "";
                    Label16.Text = "";
                    Label17.Text = DropDownList1.SelectedItem.Text;
                    SqlDataSource5.Update();
                    Response.Redirect("/Private/Viewprofile.aspx");
                }

            }
            catch
            {

            }


        }
        else
        {
            if (TextBox1.Text == "")
            {
                Label9.Text = "Name can not be empty!";
            }
            else
            {
                Label9.Text = "";
            }
            if (TextBox2.Text == "")
            {
                Label10.Text = "Age can not be empty!";
            }
            else
            {
                Label10.Text = "";
            }
            if (TextBox3.Text == "")
            {
                Label11.Text = "Address can not be empty!";
            }
            else
            {
                Label11.Text = "";
            }
            if (TextBox4.Text == "")
            {
                Label12.Text = "Telephone can not be empty!";
            }
            else
            {
                Label12.Text = "";
            }
            if (TextBox6.Text == "")
            {
                Label14.Text = "E-mail address can not be empty!";
            }
            else
            {
                Label14.Text = "";
            }
            if (TextBox7.Text == "")
            {
                Label15.Text = "Date of Birth can not be empty!";
            }
            else
            {
                Label15.Text = "";
            }
            if (TextBox8.Text == "")
            {
                Label16.Text = "Nationality can not be empty!";
            }
            else
            {
                Label16.Text = "";
            }

        }
    }
    protected void SqlDataSource3_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        DataView dv = (DataView)SqlDataSource3.Select(DataSourceSelectArguments.Empty);
        DataRow row = dv.Table.Rows[Convert.ToInt32(Label19.Text)];
        string s = Convert.ToString(row["Name"]);
        TextBox1.Text = s;
        string s1 = Convert.ToString(row["Age"]);
        TextBox2.Text = s1;
        string s2 = Convert.ToString(row["Address"]);
        TextBox3.Text = s2;
        string s3 = Convert.ToString(row["Telephone"]);
        TextBox4.Text = s3;
        string s5 = Convert.ToString(row["E-mail address"]);
        TextBox6.Text = s5;
        string s6 = Convert.ToString(row["Date of Birth"]);
        TextBox7.Text = s6;
        string s7 = Convert.ToString(row["Nationality"]);
        TextBox8.Text = s7;
    }
}