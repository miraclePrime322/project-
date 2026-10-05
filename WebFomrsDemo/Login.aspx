<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" 
    Inherits="WebFormsDemo.Login" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Вход в систему</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Вход</h2>
        <table>
            <tr>
                <td>Email:</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" />
                    <asp:RequiredFieldValidator 
                        ID="rfvEmail" runat="server"
                        ControlToValidate="txtEmail"
                        ErrorMessage="Введите email" 
                        ForeColor="Red" />
                </td>
            </tr>
            <tr>
                <td>Пароль:</td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
                    <asp:RequiredFieldValidator 
                        ID="rfvPassword" runat="server"
                        ControlToValidate="txtPassword"
                        ErrorMessage="Введите пароль" 
                        ForeColor="Red" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnLogin" runat="server" 
                        Text="Войти" OnClick="btnLogin_Click" />
                </td>
            </tr>
        </table>
        <asp:Label ID="lblMessage" runat="server" ForeColor="Red" />
    </form>
</body>
</html>
