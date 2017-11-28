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
        public int id;
     
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_PreRender(object sender, EventArgs e)
        {
           (sender as LinkButton).CommandName = Convert.ToString(id);

           Session["id_excluir"] = (sender as LinkButton).CommandName;
        }
        //pegou o id

        protected void codigoLabel_PreRender(object sender, EventArgs e)
        {//prerender da label pra pegar id do banco
            /*
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
            */


            id = int.Parse((sender as Label).Text);
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            //LinkButton1_PreRender();

            Session["id_excluir"] = (sender as LinkButton).CommandName;
            if ((sender as LinkButton).CommandName != "0"){
                Response.Redirect("~/fornecedor_excluir.aspx");
            }
        }
    }
}