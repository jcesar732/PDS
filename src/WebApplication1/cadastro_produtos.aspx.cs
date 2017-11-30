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
    public partial class cadastro_produtos : System.Web.UI.Page
    {
        int id_produto;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Label1_PreRender(object sender, EventArgs e)
        {//prerender do codigo
            id_produto = int.Parse((sender as Label).Text);
        }
      
        protected void DataList1_PreRender(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {//alterar
            Session["id_editar"] = (sender as LinkButton).CommandName;
            Response.Redirect("~/produtos_alterar.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {//excluir
            Session["id_excluir"] = (sender as LinkButton).CommandName;
            Response.Redirect("~/produto_excluir.aspx");
        }

        protected void LinkButton1_PreRender(object sender, EventArgs e)
        {//editar
            (sender as LinkButton).CommandName = Convert.ToString(id_produto);
            Session["id_editar"] = (sender as LinkButton).CommandName;
        }

        protected void LinkButton2_PreRender(object sender, EventArgs e)
        {//excluir
            (sender as LinkButton).CommandName = Convert.ToString(id_produto);
            Session["id_excluir"] = (sender as LinkButton).CommandName;
        }
        
        protected void LinkButton3_Click(object sender, EventArgs e)
        {//click incluir
            Response.Redirect("~/produto_adicionar.aspx");
        }
    }
}