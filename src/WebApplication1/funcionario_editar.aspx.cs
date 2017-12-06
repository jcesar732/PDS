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
    public partial class funcionario_editar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {//salvar
            // Acessa a configuração da conexão
            string s = ConfigurationManager.ConnectionStrings["PDSI_2017_Julio_TrindadeConnectionString"].ConnectionString;

            // Cria Conexão com banco de dados
            SqlConnection sqlfornecedor = new SqlConnection(s);

            // Abre conexão com o banco de dados
            sqlfornecedor.Open();

            // Cria comando SQL
            SqlCommand com = sqlfornecedor.CreateCommand();

            // define SQL do comando
            com.CommandText = "UPDATE Funcionario SET nome = ' " + nome.Text + " ', telefone = ' " + telefone.Text + " ', identidade = ' " + identidade.Text + " ', carteiraDeTrabalho = ' " + carteira_trabalho.Text + " ', motorista =  " + motorista + ", tecnico = " + tecnico + "   WHERE codigo = " + Session["id_editar"] + "; ";
            com.ExecuteNonQuery();
            Response.Redirect("~/cadastro_fornecedores.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {//cancelar
            Response.Redirect("~/cadastro_funcionario.aspx");
        }
    }
}