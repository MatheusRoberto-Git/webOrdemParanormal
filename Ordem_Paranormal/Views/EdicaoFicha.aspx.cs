using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ordem_Paranormal.Views
{
    public partial class EdicaoFicha : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<string> colunas = GetColumnsFromTable("ORIGENS", "Data Source=DESKTOP-KIOKGGB\\SQLEXPRESS;Initial Catalog=Ordem_Paranormal;Integrated Security=True");

                foreach (string coluna in colunas)
                {
                    ddlOrigem.Items.Add(coluna);
                }
            }
        }

        public List<string> GetColumnsFromTable(string Origens, string connectionString)
        {
            List<string> columns = new List<string>();

            string query = $"SELECT ORIGEM FROM Origens";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);

                connection.Open();

                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    columns.Add(reader.GetString(0));                    
                }
            }

            return columns;
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {            
            Session["OrigemSelecionada"] = ddlOrigem.SelectedValue;
            Session["ClasseSelecionada"] = ddlClasse.SelectedValue;
            Response.Redirect("telaFichasMestre.aspx");
        }
    }
}