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
    public partial class cadastro_fornecedores : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {//incluir

            Response.Redirect("~/cadastro_fornecedores.aspx");
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {
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
        //  com.CommandText = "DELETE FROM Fornecedor WHERE nome = " + codigoLabel.Text + " ";

          Response.Redirect("~/cadastro_fornecedores.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {//alterar

            Response.Redirect("~/cadastro_fornecedores.aspx");
        }
    }
}