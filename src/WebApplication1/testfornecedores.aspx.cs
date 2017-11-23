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
    public partial class testfornecedores : System.Web.UI.Page
    {
        int id, x;
     
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["id_excluir"]= id;
        }

        protected void LinkButton1_PreRender(object sender, EventArgs e)
        {//pegar id do fornecedor da label
            //pegou o id -> tem que colocar o link button por ultimo
            (sender as LinkButton).CommandName = id.ToString();
            //chamar o comando sql pra fazer o comando
            //excluir
            id = int.Parse((sender as LinkButton).CommandName);
            Session["id_excluir"] = (sender as LinkButton).CommandName;
        }

        public void getexcluir(object sender, EventArgs e)
        {
            //int.Parse((sender as Label).Text) = id.ToString();
            // Acessa a configuração da conexão
            string s = ConfigurationManager.ConnectionStrings["PDSI_2017_Julio_TrindadeConnectionString"].ConnectionString;

            // Cria Conexão com banco de dados
            SqlConnection sqlfornecedor = new SqlConnection(s);

            // Abre conexão com o banco de dados
            sqlfornecedor.Open();

            // Cria comando SQL
            SqlCommand com = sqlfornecedor.CreateCommand();

            // define SQL do comando
            com.CommandText = "DELETE FROM Fornecedor WHERE codigo = " + int.Parse((sender as LinkButton).CommandName) + " ";
        }

        protected void codigoLabel_PreRender(object sender, EventArgs e)
        {//prerender da label pra pegar id do banco
            //int.Parse((sender as Label).Text) = id.ToString();
            // Acessa a configuração da conexão
            string s = ConfigurationManager.ConnectionStrings["PDSI_2017_Julio_TrindadeConnectionString"].ConnectionString;

            // Cria Conexão com banco de dados
            SqlConnection sqlfornecedor = new SqlConnection(s);

            // Abre conexão com o banco de dados
            sqlfornecedor.Open();

            // Cria comando SQL
            SqlCommand com = sqlfornecedor.CreateCommand();

            // define SQL do comando
            com.CommandText = "DELETE FROM Fornecedor WHERE codigo = " + Session["id_excluir"] + " ";
        }
    }
}