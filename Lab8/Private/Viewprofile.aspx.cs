using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Drawing;

public partial class Private_Viewprofile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        hello.Text = User.Identity.Name;
        string sc = string.Format("{0}", Request.QueryString["first"]);
        if(sc =="1"){
            try
            {
                int t = 0;
                DataView dv = (DataView)SqlDataSource3.Select(DataSourceSelectArguments.Empty);
                for (int i = 0; i < dv.Table.Rows.Count; i++)
                {
                    DataRow row = dv.Table.Rows[i];
                    string s = Convert.ToString(row["Username"]);
                    if (s == hello.Text)
                    {
                        TextBox1.Visible = false;
                        TextBox2.Visible = false;
                        TextBox3.Visible = false;
                        TextBox4.Visible = false;
                        TextBox5.Visible = false;
                        TextBox6.Visible = false;
                        TextBox7.Visible = false;
                        TextBox8.Visible = false;
                        Label18.Text = "Please check the dropdownlist to view your profile";
                        t = 1;
                        break;
                    }
                }
                if (t == 0)
                {
                    Label18.Text = "Before delete your profile, You need to create a new profile";
                    Button5.Visible = true;
                    TextBox1.Visible = false;
                    TextBox2.Visible = false;
                    TextBox3.Visible = false;
                    TextBox4.Visible = false;
                    TextBox5.Visible = false;
                    TextBox6.Visible = false;
                    TextBox7.Visible = false;
                    TextBox8.Visible = false;
                }
            }
            catch
            {
              
            }
        }
        if (sc == "2")
        {
            try
            {
                int t = 0;
                DataView dv = (DataView)SqlDataSource3.Select(DataSourceSelectArguments.Empty);
                for (int i = 0; i < dv.Table.Rows.Count; i++)
                {
                    DataRow row = dv.Table.Rows[i];
                    string s = Convert.ToString(row["Username"]);
                    if (s == hello.Text)
                    {
                        TextBox1.Visible = false;
                        TextBox2.Visible = false;
                        TextBox3.Visible = false;
                        TextBox4.Visible = false;
                        TextBox5.Visible = false;
                        TextBox6.Visible = false;
                        TextBox7.Visible = false;
                        TextBox8.Visible = false;
                        Label18.Text = "Please check the dropdownlist to view your profile";
                        t = 1;
                        break;
                    }
                }
                if (t == 0)
                {
                    Label18.Text = "Before edit your profile, You need to create a new profile";
                    Button5.Visible = true;
                    TextBox1.Visible = false;
                    TextBox2.Visible = false;
                    TextBox3.Visible = false;
                    TextBox4.Visible = false;
                    TextBox5.Visible = false;
                    TextBox6.Visible = false;
                    TextBox7.Visible = false;
                    TextBox8.Visible = false;
                }
            }
            catch
            {

            }
        }
        if (sc == "3")
        {
            Label18.Text = "Please choose a person             ";
            Button5.Visible = false;
            TextBox1.Visible = false;
            TextBox2.Visible = false;
            TextBox3.Visible = false;
            TextBox4.Visible = false;
            TextBox5.Visible = false;
            TextBox6.Visible = false;
            TextBox7.Visible = false;
            TextBox8.Visible = false;
        }
        if (sc == "4")
        {
            Label18.Text = "You already have one, please check the dropdownlist to view your profile";
            Button5.Visible = false;
            TextBox1.Visible = false;
            TextBox2.Visible = false;
            TextBox3.Visible = false;
            TextBox4.Visible = false;
            TextBox5.Visible = false;
            TextBox6.Visible = false;
            TextBox7.Visible = false;
            TextBox8.Visible = false;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex == 0)
        {
            Label18.Text = "Please choose a person             ";
        }
        else
        {
            try
            {
                Label18.Text = "";
                DataView dv = (DataView)SqlDataSource3.Select(DataSourceSelectArguments.Empty);
                DataRow row = dv.Table.Rows[DropDownList1.SelectedIndex];
                Label18.Text = "                                   ";
                TextBox1.Visible = true;
                TextBox2.Visible = true;
                TextBox3.Visible = true;
                TextBox4.Visible = true;
                TextBox5.Visible = true;
                TextBox6.Visible = true;
                TextBox7.Visible = true;
                TextBox8.Visible = true;

                string s = Convert.ToString(row["Name"]);
                TextBox1.BorderWidth = 0;
                TextBox1.Text = s;
                string s1 = Convert.ToString(row["Age"]);
                TextBox2.BorderWidth = 0;
                TextBox2.Text = s1;
                string s2 = Convert.ToString(row["Address"]);
                TextBox3.BorderWidth = 0;
                TextBox3.Text = s2;
                string s3 = Convert.ToString(row["Telephone"]);
                TextBox4.BorderWidth = 0;
                TextBox4.Text = s3;
                string s4 = Convert.ToString(row["Gender"]);
                TextBox5.BorderWidth = 0;
                TextBox5.Text = s4;
                string s5 = Convert.ToString(row["E-mail address"]);
                TextBox6.BorderWidth = 0;
                TextBox6.Text = s5;
                string s6 = Convert.ToString(row["Date of Birth"]);
                TextBox7.BorderWidth = 0;
                TextBox7.Text = s6;
                string s7 = Convert.ToString(row["Nationality"]);
                TextBox8.BorderWidth = 0;
                TextBox8.Text = s7;
            }
            catch
            {
                Label18.Text = "Before view your profile, You need to create a new profile";
                Button5.Visible = true;
            }

        }

    }
    protected void SqlDataSource3_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            DataView dv = (DataView)SqlDataSource3.Select(DataSourceSelectArguments.Empty);
            DataRow row = dv.Table.Rows[DropDownList1.SelectedIndex];
            string s8 = Convert.ToString(row["Username"]);
            if (DropDownList1.SelectedIndex == 0)
            {
                Label18.Text = "Please choose a person";
            }
            else
            {
                if (s8 == hello.Text)
                {
                    Label19.Text = "1";
                    string url = string.Format("Profile Page.aspx?first={0}&last={1}", Label19.Text,DropDownList1.SelectedIndex);
                    Response.Redirect(url);
                }
                else
                {
                    Label18.Text = "You can not edit others' profile";
                }
            }
        }
        catch
        {
            Label18.Text = "Before edit, You need to create a new profile";
            Button5.Visible = true;
        }

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            DataView dv = (DataView)SqlDataSource3.Select(DataSourceSelectArguments.Empty);
            DataRow row = dv.Table.Rows[DropDownList1.SelectedIndex];
            string s8 = Convert.ToString(row["Username"]);
            if (DropDownList1.SelectedIndex == 0)
            {
                Label18.Text = "Please choose a person";
            }
            else
            {
                if (s8 == hello.Text)
                {
                    SqlDataSource6.Delete();
                    SqlDataSource5.Delete();
                    Label18.Text = "Delete successfully";
                    TextBox1.Visible = false;
                    TextBox2.Visible = false;
                    TextBox3.Visible = false;
                    TextBox4.Visible = false;
                    TextBox5.Visible = false;
                    TextBox6.Visible = false;
                    TextBox7.Visible = false;
                    TextBox8.Visible = false;
                }
                else
                {
                    Label18.Text = "You can not delete others' profile";
                }
            }
        }
        catch
        {
            Label18.Text = "Before delete, You need to create a new profile ";
            Button5.Visible = true;
        }

    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("Profile Page.aspx");
    }
}