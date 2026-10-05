using System;
using System.Data;

namespace WebFormsDemo
{
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // При первом открытии — показываем все данные
                LoadData("");
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            LoadData(txtSearch.Text.Trim());
        }

        private void LoadData(string filter)
        {
            // Здесь должен быть запрос к базе данных.
            // Для примера создаём тестовую таблицу.
            DataTable dt = new DataTable();
            dt.Columns.Add("ID", typeof(int));
            dt.Columns.Add("Название", typeof(string));
            dt.Columns.Add("Описание", typeof(string));

            dt.Rows.Add(1, "Товар А", "Описание товара А");
            dt.Rows.Add(2, "Товар Б", "Описание товара Б");
            dt.Rows.Add(3, "Услуга В", "Описание услуги В");
            dt.Rows.Add(4, "Товар Г", "Описание товара Г");

            // Фильтрация по введённому тексту
            if (!string.IsNullOrEmpty(filter))
            {
                DataView dv = dt.DefaultView;
                dv.RowFilter = $"Название LIKE '%{filter}%' OR Описание LIKE '%{filter}%'";
                gridResults.DataSource = dv;
            }
            else
            {
                gridResults.DataSource = dt;
            }

            gridResults.DataBind();
            lblInfo.Text = $"Найдено записей: {gridResults.Rows.Count}";
        }
    }
}
