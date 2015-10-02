<%@ Page Language="C#" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="_default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>OnlineConversion</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color: #C0C0C0; border-style: solid; border-width: 1px; margin: auto; width: 640px; padding: 10px">
        <h1 style="text-align: center">Length Converter</h1>
    
        <asp:Label ID="Label3" runat="server" Text="Convert what quantity?" style="font-weight: 700"></asp:Label>
    
        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" AutoPostBack="True"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="From:"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Unit" DataValueField="Factor">
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="To:"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="Unit" DataValueField="Factor">
        </asp:DropDownList>
    
        &nbsp;&nbsp;&nbsp;
    
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Convert" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Conversions]"></asp:SqlDataSource>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Modify Database" style="color: #FF0000" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="Result:" style="font-weight: 700"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox>
    
    </div>
    </form>
</body>
</html>
