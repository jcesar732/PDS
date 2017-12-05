using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.cruds
{
    public partial class fornecedor_excluir : System.Web.UI.Page
    {
        int contator_excluir;
        protected void Page_Load(object sender, EventArgs e)
        {
            //contador
            contator_excluir = int.Parse(Session["id_excluir"].ToString()) + 1;

            if (Session["id_excluir"].ToString() == "0")
            { 
                Label1.Text = "Deseja excluir o fornecedor de ID: " + Session["id_excluir"] + ""; 
            }
            else {
                Label1.Text = "" + Session["id_excluir"] + contator_excluir + "";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {//excluir 
            // Acessa a configuração da conexão
            string s = ConfigurationManager.ConnectionStrings["PDSI_2017_Julio_TrindadeConnectionString"].ConnectionString;

            // Cria Conexão com banco de dados
            SqlConnection sqlfornecedor = new SqlConnection(s);

            // Abre conexão com o banco de dados
            sqlfornecedor.Open();

            // Cria comando SQL
            SqlCommand com = sqlfornecedor.CreateCommand();

            // define SQL do comando
            com.CommandText = "Delete from Fornecedor where codigo = ' " + Session["id_excluir"] + " ' ";
            com.ExecuteNonQuery();
            Response.Redirect("~/cadastro_fornecedores.aspx");
        }

    }
}