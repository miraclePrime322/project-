<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" 
    Inherits="WebFormsDemo.Search" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Поиск</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Поиск записей</h2>
        
        <asp:TextBox ID="txtSearch" runat="server" Width="300px" />
        <asp:Button ID="btnSearch" runat="server" 
            Text="Найти" OnClick="btnSearch_Click" />
        
        <br /><br />
        
        <asp:GridView ID="gridResults" runat="server" 
            AutoGenerateColumns="true" 
            EmptyDataText="Ничего не найдено" />
        
        <asp:Label ID="lblInfo" runat="server" />
    </form>
</body>
</html>
