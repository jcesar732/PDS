<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="cadastro_produtos.aspx.cs" Inherits="WebApplication1.cadastro_produtos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2> Cadastro de produtos <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Incluir</asp:LinkButton></h2>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="codigo" DataSourceID="SqlDataSource1" OnPreRender="DataList1_PreRender">
        <ItemTemplate>
        <table>
            <tr style="padding:8px"> 
                <th style="padding:8px"> codigo </th>
                <th  style="padding:8px"> descricao </th>
                <th  style="padding:8px"> edição </th>
            </tr>
            <tr> 
                <th> <asp:Label ID="Label1" runat="server" Text='<%# Eval("codigo") %>' OnPreRender="Label1_PreRender" /> </th>
                <th> <asp:Label ID="Label2" runat="server" Text='<%# Eval("descricao") %>' /> </th>
                <th> <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" OnPreRender="LinkButton1_PreRender">Alterar</asp:LinkButton> <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" OnPreRender="LinkButton2_PreRender">Excluir</asp:LinkButton> </th>
            </tr>
        </table>
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PDSI_2017_Julio_TrindadeConnectionString %>" SelectCommand="SELECT [codigo], [descricao] FROM [Produto]"></asp:SqlDataSource>
</asp:Content>
