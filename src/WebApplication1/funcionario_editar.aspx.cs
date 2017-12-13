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
        bool motorista_oo;
        bool tecnico_oo; 
       protected void Page_Load(object sender, EventArgs e)
        {
            if (motorista.Text == "sim")
            {
                motorista_oo = true;
            }
            else motorista_oo = false;

            if (tecnico.Text == "sim")
            {
                tecnico_oo = true;
            }
            else tecnico_oo = false;
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
            com.CommandText = "UPDATE Funcionario SET nome = ' " + nome.Text + "  ', telefone = " + telefone.Text + ", identidade = " + identidade.Text + ", carteiraDeTrabalho = " + carteira_trabalho.Text + ", salario = " + salario.Text + ", motorista =  '" + motorista_oo + "', tecnico = '" + tecnico_oo + "'   WHERE codigo = " + Session["id_editar"] + "; ";
            com.ExecuteNonQuery();
            Response.Redirect("~/cadastro_funcionario.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {//cancelar
            Response.Redirect("~/cadastro_funcionario.aspx");
        }
    }
}