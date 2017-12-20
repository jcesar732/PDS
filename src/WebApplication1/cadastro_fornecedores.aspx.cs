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
            
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void idClienteLabel_PreRender(object sender, EventArgs e)
        {
            id_fornecedor = int.Parse((sender as Label).Text);
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {//alterar
            Session["id_editar"] = (sender as LinkButton).CommandName;
            Response.Redirect("~/fornecedor_editar.aspx");
        }
        protected void LinkButton2_Click(object sender, EventArgs e)
        {//excluir
            Session["id_excluir"] = (sender as LinkButton).CommandName;
            Response.Redirect("~/fornecedor_excluir.aspx");
        }

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

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {//click incluir
            Response.Redirect("~/fornecedor_adcionar.aspx");
        }
        //fata o evento incluir
        
    }
}
