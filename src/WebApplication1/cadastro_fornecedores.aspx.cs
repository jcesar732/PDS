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
        int id_fornecedor;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
            //Text='<%# Eval("codigo") %>'
        //    Label1.Text = id_fornecedor.ToString();

            //id_fornecedor = 
         //   Session["idClienteExcluir"] = (sender as Button).CommandName;
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void idClienteLabel_PreRender(object sender, EventArgs e)
        {
            id_fornecedor = int.Parse((sender as Label).Text);
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {//editar
            Session["id_editar"] = (sender as LinkButton).CommandName;
            //PQ PODE SER 0 o valor de (sender as LinkButton).CommandName;

            //if ((sender as LinkButton).CommandName != "0")
         //   if (Session["id_editar"] != "0")
          //  {
                Response.Redirect("~/fornecedor_excluir.aspx");
          //  }
        }
        protected void LinkButton2_Click(object sender, EventArgs e)
        {//excluir
            Session["id_excluir"] = (sender as LinkButton).CommandName;
           // if ((sender as LinkButton).CommandName != "0")
            //{
                Response.Redirect("~/fornecedor_excluir.aspx");
            //}
        }

       /* protected void Button1_Click(object sender, EventArgs e)
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
          com.CommandText = "DELETE FROM Fornecedor WHERE codigo = 1 ";

          Response.Redirect("~/cadastro_fornecedores.aspx");
        }
      */

        protected void LinkButton1_PreRender(object sender, EventArgs e)
        {//editar
            (sender as LinkButton).CommandName = Convert.ToString(id_fornecedor);
            Session["id_editar"] = (sender as LinkButton).CommandName;

        }
        protected void LinkButton2_PreRender(object sender, EventArgs e)
        {//excluir
            (sender as LinkButton).CommandName = Convert.ToString(id_fornecedor);
            Session["id_excluir"] = (sender as LinkButton).CommandName;
        }
    }
}