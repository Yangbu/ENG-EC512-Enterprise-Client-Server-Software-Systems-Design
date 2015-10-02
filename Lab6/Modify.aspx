<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Modify.aspx.cs" Inherits="Modify" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color: #C0C0C0; border-style: solid; border-width: 1px; margin: auto; width: 640px; padding: 10px">
        <h1 style="text-align: center">Modify Converter</h1>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Unit" DataValueField="Id">
        <asp:ListItem Value="0">Please Select</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server"></asp:Label>
    
  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label1" runat="server" Text="Unit:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Conversion Factor:"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO Conversions(Unit, Factor) VALUES (@newUnit, @newFactor)" SelectCommand="SELECT * FROM [Conversions]" DeleteCommand="DELETE FROM Conversions WHERE (Id = @Id)">
            <DeleteParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Id" PropertyName="SelectedValue" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="newUnit" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox2" Name="newFactor" PropertyName="Text" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="color: #FF3300" Text="Delete" />
    
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Show Factor" />
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
