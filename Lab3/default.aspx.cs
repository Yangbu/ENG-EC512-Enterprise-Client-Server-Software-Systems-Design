using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ListBox1.Items.Clear();
        char[] sum = TextBox1.Text.ToCharArray();
        StringBuilder first = new StringBuilder();
        showSort(sum, first);
    }
    public void showSort(char[] num, StringBuilder firstNum)
    {
        for (int i = 0; i < num.Length; i++)
        {
            char temp = num[i];
            num[i] = num[0];
            num[0] = temp;
            char num0 = num[0];
            char[] newArray = new char[num.Length - 1];
            for (int j = 0; j < num.Length - 1; j++)
            {
                newArray[j] = num[j + 1];
            }
            if (num.Length == 1)
            {
                String result = firstNum.Append(num[0]).ToString();
                ListBox1.Items.Add(result);
            }
            else
            {
                StringBuilder ls = new StringBuilder(firstNum.ToString());
                showSort(newArray, ls.Append(num[0]));
            }
        }
    }
}