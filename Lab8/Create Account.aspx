<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Create Account.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create Account</title>
    <style type="text/css">
        body{
}

.clear {
	clear: both;
            height: 87px;
        }

#container{
	background: url('../img/Signup/container.png') no-repeat;
	width: 754px;
	height: 420px;
	padding: 50px 0;
	margin:20px auto;
	#border:1px red solid;
	position:relative;
}

#container h1{
	font-family: Cantarell, Verdana, sans-serif;
	text-align:center;
	font-size:24px;
	text-shadow: 1px 2px 2px #222;
}
#container h2{
	font-family: Cantarell, Verdana, sans-serif;
	text-align:center;
	font-size:20px;
	text-shadow:none;
}

#container span{
	margin-left:10px;
	margin-right:10px;
	color:black;
            text-align: left;
        }

#container input, #container select{
	background: url('../img/Signup/input.png') no-repeat;
    color: #888;
    border: 1px solid #ccc;
	font-family: Cantarell, Verdana, sans-serif;
    font-weight: bold;
    font-size: 15px;
    width: 300px;
    height: 35px;
    padding: 0 25px;
    margin: 20px 0;
    float: left;

    border-radius: 6px;
    #-moz-border-radius: 6px;
    #-webkit-border-radius: 6px;
}

#container input.next, #container input.submit{
        border-style: none;
            border-color: inherit;
            border-width: medium;
            background: url('../img/Signup/button.png') no-repeat;
            cursor: pointer;
            width: 85px;
            height: 38px;
            position: relative;
            bottom: 2px;
    left: 610px;
}

#container input.submit{
	background:url('../img/Signup/send.png')
}

#container label{
	color: #666;
    font-size: 12px;
    font-weight: bold;
    line-height: 14px;
    float: right;
    margin: 23px -25px;
	width: 270px;
}

.form { 
	margin: 66px 72px 0 72px; 
}

#container #first, #second{
	display:none;
}

#container #first{
	display:block;
}
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            color: #FF3300;
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
*{
    margin:0;
    padding:0;
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
        .auto-style3 {
            text-align: center;
            font-size: xx-large;
        }
        </style>
</head>
<body style="background-image:url(img/bg.jpg)"> 

    <form id="form1" runat="server">
        <div style="height:50px;width:950px;margin:0 auto";">

            <ul id="nav">
                <li class="auto-style1"><a href="Default.aspx">Home</a></li>
                
              
            </ul>

        </div>
    <div style="height:500px;width:50%; background-color:#ffffff;margin:0px auto;">
            <h1 class="auto-style1">&nbsp;</h1>
            <h1 class="auto-style3">SIGN UP FOR <span><span class="auto-style2">NEW</span> </span>USER</h1>

                    &nbsp;&nbsp;
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    <asp:Label ID="username1" runat="server" Text="User name:" Font-Size="Large"></asp:Label>

                    &nbsp;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="username" runat="server" Width="271px" Height="30px" Font-Size="X-Large"></asp:TextBox>
                    &nbsp;<asp:Label ID="Label1" runat="server" Font-Size="Large" style="color: #FF3300"></asp:Label>
                    <br />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="password1" runat="server" Text="Password:" Font-Size="Large"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="password" runat="server" Width="271px" Height="30px" Font-Size="X-Large" TextMode="Password"></asp:TextBox>
                    &nbsp;<asp:Label ID="Label2" runat="server" Font-Size="Large" style="color: #FF3300"></asp:Label>
                    <br />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="rpassword1" runat="server" Text="Re-enter Password:" Font-Size="Large"></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="rpassword" runat="server" Width="271px" Height="30px" Font-Size="X-Large" TextMode="Password"></asp:TextBox>
                    &nbsp;<asp:Label ID="Label3" runat="server" Font-Size="Large" style="color: #FF3300"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="submit" name="submit" runat="server" OnClick="submit_Click" BackColor="#FF3300" Font-Size="Large" ForeColor="White" style="font-weight: 700;cursor:pointer;" Text="submit" Width="271px" Height="30px" />
    
    
                    &nbsp;&nbsp;&nbsp;
    
    
                    <asp:Button ID="already" name="already" runat="server" OnClick="already_Click" Font-Size="Large" ForeColor="#0066FF" style="font-weight: 700;cursor:pointer;" Text="Already has an account" Width="271px" Height="30px" BackColor="White" BorderColor="White" BorderStyle="None" />
    
    
                    <asp:HiddenField ID="hashpass" runat="server" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO users(Name, Password) VALUES (@newname, @newpass)" SelectCommand="SELECT * FROM [users]">
                <InsertParameters>
                    <asp:ControlParameter ControlID="username" Name="newname" PropertyName="Text" />
                    <asp:ControlParameter ControlID="hashpass" Name="newpass" PropertyName="Value" />
                </InsertParameters>
            </asp:SqlDataSource>
    
    
                    </div>
    </form>
</body>
</html>
