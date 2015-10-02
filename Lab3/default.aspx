<%@ Page Language="C#" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="_default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Find Anagrams</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color: #C0C0C0; border-style: solid; border-width: 1px; margin: auto; width: 800px; padding: 10px">
    
        <h1 style="text-align: center">Find Anagrams</h1>
        <br />
        Enter a character string:&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" Width="147px"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:CheckBox ID="CheckBox1" runat="server" Text="Eliminate Duplicates" OnCheckedChanged="CheckBox1_CheckedChanged" />
        <br />
        <br />
        <asp:ListBox ID="ListBox1" runat="server" style="height:85px;width:150px;"></asp:ListBox>
    
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Find Anagrams" />
        <br />
        <br />
    
    </div>
        <asp:Label ID="Label1" runat="server" Text="result"></asp:Label>
    </form>
</body>
</html>
