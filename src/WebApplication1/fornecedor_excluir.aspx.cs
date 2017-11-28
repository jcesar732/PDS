using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.cruds
{
    public partial class fornecedor_excluir : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id_excluir"] != "0")
            {
                Label1.Text = "olá session";
            }
            if(Session["tipo"] == "excluir"){
                Label1.Text = "div excluir";
            }
        }
    }
}