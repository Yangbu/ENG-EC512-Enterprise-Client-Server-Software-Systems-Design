<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sign in.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Log in</title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        
#login-box {
	width:333px;
	height: 352px;
    margin:0px auto;
	padding: 58px 76px 0 76px;
	color: #ebebeb;
	font: 12px Arial, Helvetica, sans-serif;
	background: url(img/login-box-backg.png) no-repeat left top;
}

#login-box img {
	border:none;
}

#login-box h2 {
	padding:0;
	margin:0;
	color: #ebebeb;
	font: bold 44px "Calibri", Arial;
}


#login-box-name {
	float: left;
	display:inline;
	width:80px;
	text-align: right;
	padding: 14px 10px 0 0;
	margin:0 0 7px 0;
}

#login-box-field {
	float: left;
	display:inline;
	width:230px;
	margin:0;
	margin:0 0 7px 0;
}


.form-login  {
	width: 205px;
	padding: 10px 4px 6px 3px;
	border: 1px solid #0d2c52;
	background-color:#1e4f8a;
	font-size: 16px;
	color: #ebebeb;
}


.login-box-options  {
	clear:both;
	padding-left:87px;
	font-size: 11px;
}

.login-box-options a {
	color: #ebebeb;
	font-size: 11px;
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
        <div style="height:50px;width:950px;margin:0 auto"">

            <ul id="nav">
                <li class="auto-style1"><a href="Default.aspx">Home</a></li>
              
            </ul>

        </div>


<div id="login-box">

<H2>Sign in</H2>
<br />
    <asp:Label ID="Label3" runat="server"></asp:Label>
<br />
<div id="login-box-name" style="margin-top:20px;">
    <asp:Label ID="Label1" runat="server" Text="Username:"></asp:Label></div><div id="login-box-field" style="margin-top:20px;"><asp:TextBox ID="TextBox1" runat="server" class="form-login" title="Username" value="" size="30" maxlength="2048"></asp:TextBox></div>
<div id="login-box-name">
    <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label></div><div id="login-box-field"><asp:TextBox ID="TextBox2" runat="server" class="form-login" title="Password" value="" size="30" maxlength="2048" TextMode="Password"></asp:TextBox></div>
<br />
    <span class="login-box-options"> 
<br />
<br />
    <asp:Button ID="Button1" runat="server" Text="LOGIN" width="103" height="42" style="margin-left:90px;cursor:pointer;" BackColor="#3366FF" ForeColor="White" OnClick="Button1_Click"/>
    <asp:Button ID="Button2" runat="server" Text="CANCEL" width="103" height="42" style="cursor:pointer;" BackColor="#FF3300" ForeColor="White" OnClick="Button2_Click"/>
    




    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [users] WHERE ([Name] = @newname)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="newname" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>

    




</div>

    </form>
</body>
</html>
