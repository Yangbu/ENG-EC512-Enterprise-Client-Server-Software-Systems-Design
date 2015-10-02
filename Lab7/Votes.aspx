<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Votes.aspx.cs" Inherits="Votes" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Current Votes Page</title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .newStyle1 {
            font-family: "Comic Sans MS";
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <div style="background-color: #C0C0C0; border-style: solid; border-width: 1px; margin: auto; width: 1009px; padding: 10px">
        <h1 class="auto-style1"><span class="newStyle1">Thank you for voting</span></h1>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Candidates]"></asp:SqlDataSource>
        <asp:Table align="center" ID="Table1" runat="server" style="text-align: center" Height="178px" Width="973px">
        </asp:Table>
    </div>
    </form>
</body>
</html>
