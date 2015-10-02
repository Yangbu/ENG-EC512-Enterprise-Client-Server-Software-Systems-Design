<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Profile Page.aspx.cs" Inherits="Private_Profile_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Profile Page</title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            text-align: left;
        }
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
                <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
            </ul>

        </div>
    <div class="auto-style1">
    
        <div class="auto-style1">
            <div  style="background-image:url(img/bg2.jpg); height:700px;width:950px;margin:0 auto" class="auto-style2">
                <br />
                <br />
                <asp:Panel ID="Panel3" runat="server">                <asp:Button ID="Button3" runat="server" Text="Edit Old Information" OnClick="Button3_Click" BackColor="Orange" BorderColor="#FF9900" Font-Size="X-Large" ForeColor="White" Height="40px" style="text-align: center; font-weight: 700;cursor:pointer" Width="351px"/>
</asp:Panel>                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Name" runat="server" Text="Name:" CssClass="newStyle1"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Width="258px" Height="35px" style="font-size: x-large" ></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label9" runat="server" style="color: #FF3300; font-size: x-large"></asp:Label>
        <br />
                <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Age" runat="server" Text="Age:" CssClass="newStyle1"></asp:Label>
        &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Width="258px" Height="35px" style="font-size: x-large"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label10" runat="server" style="color: #FF3300; font-size: x-large"></asp:Label>
        <br />
                <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Address" runat="server" Text="Address:" CssClass="newStyle1"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" Width="258px" Height="35px" style="font-size: x-large"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label11" runat="server" style="color: #FF3300; font-size: x-large"></asp:Label>
        <br />
                <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Telephone" runat="server" Text="Telephone:" CssClass="newStyle1"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server" Width="258px" Height="35px" style="font-size: x-large"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label12" runat="server" style="color: #FF3300; font-size: x-large"></asp:Label>
        <br />
                <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Gender" runat="server" Text="Gender:" CssClass="newStyle1"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" style="font-size: x-large">
            <asp:ListItem Value="0">Male</asp:ListItem>
            <asp:ListItem Value="1">Female</asp:ListItem>
        </asp:DropDownList>
&nbsp;<br />
                <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Emailaddress" runat="server" Text="E-mail address:" CssClass="newStyle1"></asp:Label>
                &nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox6" runat="server" onclick="this.value = ''" Width="258px" style="color: #000000; font-size: x-large;" Height="35px" ForeColor="Black"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label14" runat="server" style="color: #FF3300; font-size: x-large"></asp:Label>
        <br />
                <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="DateofBirth" runat="server" Text="Date of Birth:" CssClass="newStyle1"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="TextBox7" runat="server" onclick="this.value = ''" Width="258px" style="color: #000000; font-size: x-large;" Height="35px" ForeColor="Black"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label15" runat="server" style="color: #FF3300; font-size: x-large"></asp:Label>
        <br />
                <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Nationality" runat="server" Text="Nationality:" CssClass="newStyle1"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox8" runat="server" Width="258px" Height="35px" style="font-size: x-large"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label16" runat="server" style="color: #FF3300; font-size: x-large"></asp:Label>
        <br />
                <br />
                <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Panel ID="Panel1" runat="server">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button1" runat="server" OnClick="Create_Click" Text="Create Profile" BackColor="Red" BorderColor="#FF9900" Font-Size="X-Large" ForeColor="White" Height="40px" style="text-align: center; font-weight: 700;cursor:pointer" Width="258px" /></asp:Panel>
                <asp:Panel ID="Panel2" runat="server">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Submit Change" BackColor="Blue" BorderColor="#FF9900" Font-Size="X-Large" ForeColor="White" Height="40px" style="text-align: center; font-weight: 700;cursor:pointer" Width="258px" /></asp:Panel>
        <br />
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [old users]" InsertCommand="INSERT INTO [old users] (Name) VALUES (@newname)">
                    <InsertParameters>
                        <asp:ControlParameter ControlID="hello" Name="newname" PropertyName="Text" />
                    </InsertParameters>
                </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [profiles]" OnSelecting="SqlDataSource3_Selecting"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [profiles]" UpdateCommand="UPDATE profiles SET Name = @newname, Age = @newage, Address = @newadd, Telephone = @newtele, Gender = @newgender, [E-mail address] = @newemail, [Date of Birth] = @newdate, Nationality = @newnation, Username = @newuser WHERE(Username = @newuser)">
                    <UpdateParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="newname" PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextBox2" Name="newage" PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextBox3" Name="newadd" PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextBox4" Name="newtele" PropertyName="Text" />
                        <asp:ControlParameter ControlID="Label17" Name="newgender" PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextBox6" Name="newemail" PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextBox7" Name="newdate" PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextBox8" Name="newnation" PropertyName="Text" />
                        <asp:ControlParameter ControlID="hello" Name="newuser" PropertyName="Text" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:Label ID="Label17" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="Label19" runat="server" Visible="False"></asp:Label>

                       


        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO profiles(Name, Age, Address, Telephone, Gender, [E-mail address], [Date of Birth], Nationality,Username) VALUES (@newname, @newage, @newaddress, @newtelephone, @newgender, @newemail, @newdate, @newnationality, @newuser)" SelectCommand="SELECT * FROM [profiles]">
            <InsertParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="newname" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox2" Name="newage" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox3" Name="newaddress" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox4" Name="newtelephone" PropertyName="Text" />
                <asp:ControlParameter ControlID="Label1" Name="newgender" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox6" Name="newemail" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox7" Name="newdate" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox8" Name="newnationality" PropertyName="Text" />
                <asp:ControlParameter ControlID="hello" Name="newuser" PropertyName="Text" />
            </InsertParameters>
        </asp:SqlDataSource>
        &nbsp;<br />
            </div>
    
        
    
    </div>
    </form>
</body>
</html>
