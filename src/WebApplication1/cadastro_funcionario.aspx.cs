using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class cadastro_funcionario : System.Web.UI.Page
    {
        int id_funcionario;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {//incluir
            Response.Redirect("~/funcionario_adicionar.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {//editar
            Session["id_editar"] = (sender as LinkButton).CommandName;
            Response.Redirect("~/produto_alterar.aspx");
        }

        protected void LinkButton1_PreRender(object sender, EventArgs e)
        {//editar
            (sender as LinkButton).CommandName = Convert.ToString(id_funcionario);
            Session["id_editar"] = (sender as LinkButton).CommandName;
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {//excluir
            Session["id_excluir"] = (sender as LinkButton).CommandName;
            Response.Redirect("~/produto_excluir.aspx");
        }

        protected void LinkButton2_PreRender(object sender, EventArgs e)
        {//excluir
            (sender as LinkButton).CommandName = Convert.ToString(id_funcionario);
            Session["id_excluir"] = (sender as LinkButton).CommandName;
        }
    }
}