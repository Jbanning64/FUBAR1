<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Data.aspx.cs" Inherits="FUBAR1.Data" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CathodeConnString %>" SelectCommand="SELECT * FROM [cathode]"></asp:SqlDataSource>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="serialnumber" HeaderText="serialnumber" SortExpression="serialnumber" />
                <asp:BoundField DataField="furnace" HeaderText="furnace" SortExpression="furnace" />
                <asp:CheckBoxField DataField="active" HeaderText="active" SortExpression="active" />
                <asp:BoundField DataField="badge_id" HeaderText="badge_id" SortExpression="badge_id" />
                <asp:BoundField DataField="created_at" HeaderText="created_at" SortExpression="created_at" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
