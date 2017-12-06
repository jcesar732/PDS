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
    public partial class funcionario_excluir : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id_excluir"].ToString() != "0")
            {
                Label1.Text = "Deseja excluir o produto de ID: " + Session["id_excluir"] + "";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Acessa a configuração da conexão
            string s = ConfigurationManager.ConnectionStrings["PDSI_2017_Julio_TrindadeConnectionString"].ConnectionString;

            // Cria Conexão com banco de dados
            SqlConnection sqlfornecedor = new SqlConnection(s);

            // Abre conexão com o banco de dados
            sqlfornecedor.Open();

            // Cria comando SQL
            SqlCommand com = sqlfornecedor.CreateCommand();


            // define SQL do comando
            com.CommandText = "Delete from Funcionario where codigo = ' " + Session["id_excluir"] + " ' ";
            com.ExecuteNonQuery();
            Response.Redirect("~/cadastro_funcionarios.aspx");
        }
    }
}