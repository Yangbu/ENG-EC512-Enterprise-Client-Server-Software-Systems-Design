<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Voting Page</title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <div style="background-color: #C0C0C0; border-style: solid; border-width: 1px; margin: auto; width: 518px; padding: 10px">
    
           <br />
           <strong><span class="auto-style1">Please select a candidate:<br />
           <br />
           </span></strong><asp:RadioButtonList ID="RadioButtonList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="Id" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
        </asp:RadioButtonList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server"></asp:Label>
           <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Vote" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Candidates]" UpdateCommand="UPDATE Candidates SET count = @newCount1 WHERE name = 'Candidate 1'">
            <UpdateParameters>
                <asp:ControlParameter ControlID="Label2" Name="newCount1" PropertyName="Text" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Candidates]" UpdateCommand="UPDATE Candidates SET count = @newCount1 WHERE name = 'Candidate 2'">
            <UpdateParameters>
                <asp:ControlParameter ControlID="Label2" Name="newCount1" PropertyName="Text" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Candidates]" UpdateCommand="UPDATE Candidates SET count = @newCount1 WHERE name = 'Candidate 3'">
            <UpdateParameters>
                <asp:ControlParameter ControlID="Label2" Name="newCount1" PropertyName="Text" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:HiddenField ID="HiddenField1" runat="server" OnValueChanged="HiddenField1_ValueChanged1" Value="string" />
        <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
        <asp:HiddenField ID="HiddenField2" runat="server" Value="string" />
        <asp:HiddenField ID="HiddenField3" runat="server" Value="string" />
        </div>
           </form>
</body>
</html>
