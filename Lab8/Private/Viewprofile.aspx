<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Viewprofile.aspx.cs" Inherits="Private_Viewprofile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .newStyle1 {
            font-family: "Buxton Sketch";
            font-size: xx-large;
        }
        #nav,#nav ul {
    list-style: none outside none;
    margin: 0;
    padding: 0;
}
#nav {
    background: url('img/menu_bg.png') no-repeat scroll 0 0 transparent;
    clear: both;
    font-size: 12px;
    height: 58px;
    padding: 0 0 0 9px;
    position: relative;
    width: 957px;
}
#nav ul {
    background-color: #222;
    border:1px solid #222;
    border-radius: 0 5px 5px 5px;
    border-width: 0 1px 1px;
    box-shadow: 0 5px 5px rgba(0, 0, 0, 0.5);
    left: -9999px;
    overflow: hidden;
    position: absolute;
    top: -9999px;
    z-index: 2;

    -moz-transform: scaleY(0);
    -ms-transform: scaleY(0);
    -o-transform: scaleY(0);
    -webkit-transform: scaleY(0);
    transform: scaleY(0);

    -moz-transform-origin: 0 0;
    -ms-transform-origin: 0 0;
    -o-transform-origin: 0 0;
    -webkit-transform-origin: 0 0;
    transform-origin: 0 0;

    -moz-transition: -moz-transform 0.1s linear;
    -ms-transition: -ms-transform 0.1s linear;
    -o-transition: -o-transform 0.1s linear;
    -webkit-transition: -webkit-transform 0.1s linear;
    transition: transform 0.1s linear;
}
#nav li {
    background: url('img/menu_line.png') no-repeat scroll right 5px transparent;
    float: left;
    position: relative;
}
#nav li a {
    color: #FFFFFF;
    display: block;
    float: left;
    font-weight: normal;
    height: 30px;
    padding: 23px 20px 0;
    position: relative;
    text-decoration: none;
    text-shadow: 1px 1px 1px #000000;
}
#nav li:hover > a {
    color: #00B4FF;
}
#nav li:hover, #nav a:focus, #nav a:hover, #nav a:active {
    background: none repeat scroll 0 0 #121212;
    outline: 0 none;
}
#nav li:hover ul.subs {
    left: 0;
    top: 53px;
    width: 180px;

    -moz-transform: scaleY(1);
    -ms-transform: scaleY(1);
    -o-transform: scaleY(1);
    -webkit-transform: scaleY(1);
    transform: scaleY(1);
}
#nav ul li {
    background: none;
    width: 100%;
}
#nav ul li a {
    float: none;
}
#nav ul li:hover > a {
    background-color: #121212;
    color: #00B4FF;
}
header {
    background-color:#212121;
    box-shadow: 0 -1px 2px #111111;
    color:#fff;
    display:block;
    height:70px;
    position:relative;
    width:100%;
    z-index:100;
}
header h2{
    font-size:22px;
    font-weight:normal;
    left:50%;
    margin-left:-400px;
    padding:22px 0;
    position:absolute;
    width:540px;
}
header a.stuts,a.stuts:visited{
    border:none;
    text-decoration:none;
    color:#fcfcfc;
    font-size:14px;
    left:50%;
    line-height:31px;
    margin:23px 0 0 110px;
    position:absolute;
    top:0;
}
header .stuts span {
    font-size:22px;
    font-weight:bold;
    margin-left:5px;
}
        .newStyle2 {
            font-family: "Buxton Sketch";
            font-size: x-large;
        }
                .auto-style1 {
            font-size: medium;
        }
    </style>
</head>

<body style="background-image:url(img/bg.jpg)">
    <form id="form1" runat="server">
        <div style="height:50px;width:950px;margin:0 auto";">

            <ul id="nav">
                <li class="auto-style1"><a href="/Default.aspx">Home</a></li>
              <asp:Label ID="hello" runat="server" Text="user" Visible="False"></asp:Label>
            </ul>

            <br />

        </div>
            <div  style="background-image:url(img/carton.jpg); height:700px;width:950px;margin:0 auto">
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label18" runat="server" CssClass="newStyle2" Font-Size="XX-Large" style="color: #FF0000"></asp:Label>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button style="cursor:pointer;" ID="Button5" runat="server" BackColor="#996633" Font-Size="Large" ForeColor="White" Text="Create a Profile" Visible="False" OnClick="Button5_Click"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Edit" BackColor="Blue" Font-Size="Large" style="color: #FFFFFF;cursor:pointer;" />
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Text="Delete" BackColor="#FF3300" Font-Size="Large" OnClick="Button3_Click" style="color: #FFFFFF;cursor:pointer;" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
        &nbsp;&nbsp;&nbsp;

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="Name" DataValueField="Id" style="font-size: large">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [profiles]" OnSelecting="SqlDataSource3_Selecting"></asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="View" BackColor="#CC33FF" Font-Size="Large" style="color: #FFFFFF;cursor:pointer" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                <br />

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" Text="Name:" style="font-size: xx-large"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;  
                        <asp:TextBox ID="TextBox1" runat="server" Font-Size="Large" ReadOnly="True"></asp:TextBox>
                        <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label3" runat="server" Text="Age:" style="font-size: xx-large"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp&nbsp;
                        <asp:TextBox ID="TextBox2" runat="server" Font-Size="Large" ReadOnly="True"></asp:TextBox>
                        <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label4" runat="server" Text="Address:" style="font-size: xx-large"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox3" runat="server" Font-Size="Large" ReadOnly="True"></asp:TextBox>
                        <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label5" runat="server" Text="Telephone:" style="font-size: xx-large"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox4" runat="server" Font-Size="Large" ReadOnly="True"></asp:TextBox>
                        <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label6" runat="server" Text="Gender:" style="font-size: xx-large"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox5" runat="server" Font-Size="Large" ReadOnly="True"></asp:TextBox>
                        <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label7" runat="server" Text="E-mail address:" style="font-size: xx-large"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox6" runat="server" Font-Size="Large" ReadOnly="True"></asp:TextBox>
                        <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label8" runat="server" Text="Date of Birth:" style="font-size: xx-large"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox7" runat="server" Font-Size="Large" ReadOnly="True"></asp:TextBox>
                        <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label9" runat="server" Text="Nationality:" style="font-size: xx-large"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox8" runat="server" Font-Size="Large" ReadOnly="True"></asp:TextBox>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [profiles]" UpdateCommand="UPDATE profiles SET Name = @newname, Age = @newage, Address = @newadd, Telephone = @newtele, Gender = @newgender, [E-mail address] = @newemail, [Date of Birth] = @newdate, Nationality = @newnation, Username = @newuser WHERE Username = @newuser">
                    <UpdateParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="newname" PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextBox2" Name="newage" PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextBox3" Name="newadd" PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextBox4" Name="newtele" PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextBox5" Name="newgender" PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextBox6" Name="newemail" PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextBox7" Name="newdate" PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextBox8" Name="newnation" PropertyName="Text" />
                        <asp:ControlParameter ControlID="hello" Name="newuser" PropertyName="Text" />
                    </UpdateParameters>
                </asp:SqlDataSource>

                       


                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM profiles WHERE (Username = @newuser)" SelectCommand="SELECT * FROM [profiles]">
                    <DeleteParameters>
                        <asp:ControlParameter ControlID="hello" Name="newuser" PropertyName="Text" />
                    </DeleteParameters>
                </asp:SqlDataSource>

                       



                       



                       



                       



                       



                       



                       



                       


                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [old users] WHERE (Name = @newname)" SelectCommand="SELECT * FROM [old users]">
                    <DeleteParameters>
                        <asp:ControlParameter ControlID="hello" Name="newname" PropertyName="Text" />
                    </DeleteParameters>
                </asp:SqlDataSource>
                <asp:Label ID="Label19" runat="server" Visible="False"></asp:Label>

                       



        </div>
    </form>
</body>
</html>
