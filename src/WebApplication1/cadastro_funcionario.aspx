<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="cadastro_funcionario.aspx.cs" Inherits="WebApplication1.cadastro_funcionario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h2> Cadastro de funcionários <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Incluir</asp:LinkButton></h2>

     <asp:DataList ID="DataList1" runat="server" DataKeyField="codigo" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <table>
                <tr style="padding:8px"> 
                    <th  style="padding:8px"> Codigo </th>
                    <th  style="padding:8px"> Nome </th>
                    <th  style="padding:8px"> Telefone </th>
                    <th  style="padding:8px"> Identidade </th>
                    <th  style="padding:8px"> Carteira de motorista </th>
                    <th  style="padding:8px"> Motorista </th>
                    <th  style="padding:8px"> Técnico </th>
                    <th  style="padding:8px"> Edição </th>
                </tr>
                <tr>
                    <th> <asp:Label ID="Label2" runat="server" Text='<%# Eval("codigo") %>' OnPreRender="Label1_PreRender" /> </th>
                    <th> <asp:Label ID="nomeLabel" runat="server" Text='<%# Eval("nome") %>' /> </th>
                    <th> <asp:Label ID="telefoneLabel" runat="server" Text='<%# Eval("telefone") %>' /> </th>
                    <th> <asp:Label ID="identidadeLabel" runat="server" Text='<%# Eval("identidade") %>' /> </th>
                    <th> <asp:Label ID="carteiraDeTrabalhoLabel" runat="server" Text='<%# Eval("carteiraDeTrabalho") %>' /> </th>
                    <th> <asp:Label ID="motoristaLabel" runat="server" Text='<%# Eval("motorista") %>' /> </th>
                    <th> <asp:Label ID="tecnicoLabel" runat="server" Text='<%# Eval("tecnico") %>' /> </th>
                    <th> <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton1_Click" OnPreRender="LinkButton1_PreRender">Editar</asp:LinkButton> <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton2_Click" OnPreRender="LinkButton2_PreRender">Excluir</asp:LinkButton></th>
                </tr>
           </table>

        </ItemTemplate>
    </asp:DataList>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PDSI_2017_Julio_TrindadeConnectionString %>" SelectCommand="SELECT [codigo], [nome], [telefone], [identidade], [carteiraDeTrabalho], [motorista], [tecnico] FROM [Funcionario]"></asp:SqlDataSource>
</asp:Content>
