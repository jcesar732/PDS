using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class produto_excluir : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["id_excluir"].ToString() != "0"){
                Label1.Text = "" + Session["id_excluir"] + "";
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
            com.CommandText = "delete from Produto where codigo = ' "+ Session["id_excluir"] + " ' ";
            com.ExecuteNonQuery();
            Response.Redirect("~/cadastro_produtos.aspx");
        }
    }
}