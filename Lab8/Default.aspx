<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Personal_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .grid_1_of_4{
	display: block;
	float:left;
	margin-left: 2%;
}
.grid_1_of_4:first-child { 
	margin-left: 0; 
} 
.images_1_of_4 {
	text-align:center;
	width: 19.333333%;
	padding:6% 2%;
	cursor:pointer;
	border-radius: 50%;
	-webkit-border-radius: 50%;
	-moz-border-radius: 50%;
	-o-border-radius: 50%;		
	-webkit-transition: all 0.4s ease-out;
	-moz-transition: all 0.4s ease-out;
	-o-transition: all 0.4s ease-out;
	transition: all 0.4s ease-out;
}
.bg1{
	background: #E74C3C;
	box-shadow: 0 6px #C0392B;
	-webkit-box-shadow: 0 6px #C0392B;
	-moz-box-shadow: 0 6px #C0392B;
	-o-box-shadow: 0 6px #C0392B;
}
.bg1:hover{
	box-shadow: 0 8px #C0392B;
	-webkit-box-shadow: 0 8px #C0392B;
	-moz-box-shadow: 0 8px #C0392B;
	-o-box-shadow: 0 8px #C0392B;
	top: 10px;
}
.bg2{
	background: #F1C40F;
	box-shadow: 0 6px #F39C12;
	-webkit-box-shadow: 0 6px #F39C12;
	-moz-box-shadow: 0 6px #F39C12;
	-o-box-shadow: 0 6px #F39C12;
}
.bg2:hover{
	box-shadow: 0 8px #F39C12;
	-webkit-box-shadow: 0 8px #F39C12;
	-moz-box-shadow: 0 8px #F39C12;
	-o-box-shadow: 0 8px #F39C12;
	top: 10px;
}
.bg3{
	background: #1ABC9C;
	box-shadow: 0 6px #16A086;
	-webkit-box-shadow: 0 6px #16A086;
	-moz-box-shadow: 0 6px #16A086;
	-o-box-shadow: 0 6px #16A086;
}
.bg3:hover{
	box-shadow: 0 8px #16A086;
	-webkit-box-shadow: 0 8px #16A086;
	-moz-box-shadow: 0 8px #16A086;
	-o-box-shadow: 0 8px #16A086;
	top: 10px;
}
.bg4{
	background: #a4c639;
	box-shadow: 0 6px #97B734;
	-webkit-box-shadow: 0 6px #97B734;
	-moz-box-shadow: 0 6px #97B734;
	-o-box-shadow: 0 6px #97B734;
}
.bg4:hover{
	box-shadow: 0 8px #97B734;
	-webkit-box-shadow: 0 8px #97B734;
	-moz-box-shadow: 0 8px #97B734;
	-o-box-shadow: 0 8px #97B734;
}
/*  GRID OF FOUR   ============================================================================= */
.col_1_of_4{
	display: block;
	float:left;
	margin-left: 2%;
}
.col_1_of_4:first-child { margin-left: 0; } /* all browsers except IE6 and lower */
	
.span_1_of_4 {
	width: 19.333333%;
	padding:4% 2%;
}
.span_1_of_4  h3{
	font-size: 1.8em;
	color: white;
	font-family: 'Cagliostro', sans-serif;
	text-transform: capitalize;
	text-shadow: 0 1px 0 white;
}
.span_1_of_4  p {
	font-size:0.8725em;
	padding:0.5em 0;
	color: white;
	line-height: 1.8em;
}
.text1-nav{
	margin-top: 6%;
}
.text1-nav ul li:before {
	float: left;
	margin-top: 8px;
	margin-right: 6px;
	content: url('../images/right_a.png');
	vertical-align: middle;
}
.text1-nav ul li a{
	display: block;
	font-size: 0.8725em;
	text-transform: capitalize;
	color: #555555;
	letter-spacing: 0px;
	line-height: 2.5em;
}
.text1-nav ul li a:hover{
	color: #16A086;
}
            #nav, #nav ul {
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
                    border: 1px solid #222;
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
            font-size: medium;
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
                background-color: #212121;
                box-shadow: 0 -1px 2px #111111;
                color: #fff;
                display: block;
                height: 70px;
                position: relative;
                width: 100%;
                z-index: 100;
            }

                header h2 {
                    font-size: 22px;
                    font-weight: normal;
                    left: 50%;
                    margin-left: -400px;
                    padding: 22px 0;
                    position: absolute;
                    width: 540px;
                }

                header a.stuts, a.stuts:visited {
                    border: none;
                    text-decoration: none;
                    color: #fcfcfc;
                    font-size: 14px;
                    left: 50%;
                    line-height: 31px;
                    margin: 23px 0 0 110px;
                    position: absolute;
                    top: 0;
                }

                header .stuts span {
                    font-size: 22px;
                    font-weight: bold;
                    margin-left: 5px;
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
                    <li>
             <asp:Panel ID="Panel1" runat="server" >
            <a href="Sign in.aspx"><span class="auto-style1">Sign in</span></a>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
             </asp:Panel>
            </li>
                <li>
              <asp:Panel ID="Panel2" runat="server" >
             <a href="Create Account.aspx"><span class="auto-style1">Create Account</span></a>
                  </asp:Panel>
                </li>
                <li>
              <asp:Panel ID="Panel4" runat="server" >
             <asp:LinkButton ID="logout" runat="server" OnClick="logout_Click">Sign out</asp:LinkButton>
                  </asp:Panel>
                </li>
                <li>
              <asp:Panel ID="Panel6" runat="server" >
             <asp:LinkButton ID="LinkButton1" runat="server" OnClick="delete_Click">Delete Account</asp:LinkButton>
                  </asp:Panel>
                </li>
                <li>
              <asp:Panel ID="Panel3" runat="server" >
             <a><span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hello</span>
                 &nbsp;
                 <asp:Label ID="hello" runat="server" Text="user"></asp:Label></a>
                  </asp:Panel>
                </li>
            </ul>

        </div>
        <div style="width:950px;margin:0 auto"" class="bg1">
            <asp:Panel ID="Panel7" runat="server"><img src="img/white1.jpg" style="height: 494px; width: 100%;" /></asp:Panel>
            <asp:Panel ID="Panel8" runat="server" Visible="False"><img src="img/bye2.jpg" style="height: 494px; width: 100%;" /></asp:Panel>
            
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM users WHERE (Name = @newname)" SelectCommand="SELECT * FROM [users]" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" OnSelecting="SqlDataSource1_Selecting">
            <DeleteParameters>
                <asp:ControlParameter ControlID="hello" Name="newname" PropertyName="Text" />
            </DeleteParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [profiles]" DeleteCommand="DELETE FROM profiles WHERE (Username = @newuser )">
            <DeleteParameters>
                <asp:ControlParameter ControlID="hello" Name="newuser" PropertyName="Text" />
            </DeleteParameters>
        </asp:SqlDataSource>
        <asp:Panel ID="Panel5" runat="server">
            <div style="width:950px;margin:0 auto"">
	<div class="grids_1_of_4">
				<div class="grid_1_of_4 images_1_of_4 bg1">
					<asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/img/icon3.png" OnClick="ImageButton1_Click" />
				</div>
				<div class="grid_1_of_4 images_1_of_4 bg2">
                    <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/img/icon1.png" OnClick="ImageButton2_Click" />
				</div>
				<div class="grid_1_of_4 images_1_of_4 bg3 hide">
                    <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="~/img/icon2.png" OnClick="ImageButton3_Click" />
				</div>
				<div class="grid_1_of_4 images_1_of_4 bg4 hide">
                    <asp:ImageButton ID="ImageButton8" runat="server" ImageUrl="~/img/icon4.png" OnClick="ImageButton4_Click" />
				</div>
			<div class="clear"></div>
			</div>
			<div class="section group">
				<div class="col_1_of_4 span_1_of_4">
					<h3>Create a profile</h3>
					<p>Create your own profile right now</p>
					
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<h3>Delete a profile</h3>
					<p>In order to avoid changing much information, just delete the whole profile<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [old users]" DeleteCommand="DELETE FROM [old users] WHERE (Name = @newname)">
                        <DeleteParameters>
                            <asp:ControlParameter ControlID="hello" Name="newname" PropertyName="Text" />
                        </DeleteParameters>
                        </asp:SqlDataSource>
                    </p>
				</div>
				<div class="col_1_of_4 span_1_of_4 hide">
					<h3>Edit &nbsp;&nbsp;a profile</h3>
					<p>Whenever you have any new information, you can edit your profile here</p>
				</div>
				<div class="col_1_of_4 span_1_of_4 hide">
					<h3>View other profiles</h3>
					<p>Here, you can always view others' profiles to learn from each other</p>
				</div>
			<div class="clear"></div>
			</div>
    </div></asp:Panel>
        <asp:Panel ID="Panel9" runat="server" Visible="False">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button style="cursor:pointer;" ID="Button1" runat="server" Text="Yes, see you" Width="475px" Height="71px" BackColor="#33CCFF" Font-Size="X-Large" ForeColor="White" OnClick="Button1_Click" />
            <asp:Button style="cursor:pointer;" ID="Button2" runat="server" Text="No, come back " Width="475px" Height="71px" BackColor="Red" Font-Size="X-Large" ForeColor="White" OnClick="Button2_Click1"/></asp:Panel>
        <asp:Label ID="first" runat="server" Visible="False"></asp:Label>
    </form>
</body>
</html>
