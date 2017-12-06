using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class fornecedor_editar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {//salvar -> update
            // Acessa a configuração da conexão
            string s = ConfigurationManager.ConnectionStrings["PDSI_2017_Julio_TrindadeConnectionString"].ConnectionString;

            // Cria Conexão com banco de dados
            SqlConnection sqlfornecedor = new SqlConnection(s);

            // Abre conexão com o banco de dados
            sqlfornecedor.Open();

            // Cria comando SQL
            SqlCommand com = sqlfornecedor.CreateCommand();
            
            // define SQL do comando
            com.CommandText = "UPDATE Fornecedor SET nome = ' " + nome_fornecedor.Text + " ', telefone = ' " + telefone.Text + " ', cidade = ' " + cidade.Text + " ', estado = ' " + estado.Text + " ', email = ' " + email.Text + " '  WHERE codigo = " + Session["id_editar"] + "; ";
            com.ExecuteNonQuery();
            Response.Redirect("~/cadastro_fornecedores.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {//cancelar
            Response.Redirect("~/cadastro_fornecedores.aspx");
        }
    }
}
