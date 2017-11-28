<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="testfornecedores.aspx.cs" Inherits="WebApplication1.testfornecedores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
    <h2> Teste de Cadastro de fornecedores</h2>

    <asp:DataList ID="DataList1" runat="server" DataKeyField="codigo" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            
            codigo:
            <asp:Label ID="codigoLabel" runat="server" Text='<%# Eval("codigo") %>' OnPreRender="codigoLabel_PreRender" />
            <br />
            nome:
            <asp:Label ID="nomeLabel" runat="server" Text='<%# Eval("nome") %>' />
            
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" OnPreRender="LinkButton1_PreRender" OnClick="LinkButton1_Click">LinkButton</asp:LinkButton>
            <br />

        </ItemTemplate>
    </asp:DataList>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PDSI_2017_Julio_TrindadeConnectionString %>" SelectCommand="SELECT [codigo], [nome] FROM [Fornecedor]"></asp:SqlDataSource>


</asp:Content>
