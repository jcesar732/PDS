﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class funcionario_adicionar : System.Web.UI.Page
    {
        bool motorista, tecnico;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (motorista_bool.Text == "sim")
            {
                
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {//incluir
            // Acessa a configuração da conexão
            string s = ConfigurationManager.ConnectionStrings["PDSI_2017_Julio_TrindadeConnectionString"].ConnectionString;

            // Cria Conexão com banco de dados
            SqlConnection sqlfornecedor = new SqlConnection(s);

            // Abre conexão com o banco de dados
            sqlfornecedor.Open();

            // Cria comando SQL
            SqlCommand com = sqlfornecedor.CreateCommand();

            // define SQL do comando
         //   com.CommandText = "insert into Funcionario(descricao) values (' " + TextBox1.Text + " ')";
            com.ExecuteNonQuery();
            Response.Redirect("~/cadastro_funcionario.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {//cancelar
            Response.Redirect("~/cadastro_funcionario.aspx");
        }
    }
}