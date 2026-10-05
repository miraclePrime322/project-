using System;
using System.Web.Security;

namespace WebFormsDemo
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // Простая проверка (в реальном проекте — запрос к БД)
            if (txtEmail.Text == "admin@test.com" && 
                txtPassword.Text == "123456")
            {
                FormsAuthentication.RedirectFromLoginPage(
                    txtEmail.Text, false);
            }
            else
            {
                lblMessage.Text = "Неверный email или пароль";
            }
        }
    }
}
