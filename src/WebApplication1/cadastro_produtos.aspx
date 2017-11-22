<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="cadastro_produtos.aspx.cs" Inherits="WebApplication1.cadastro_produtos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2> Cadastro de produtos <asp:Button ID="Button1" runat="server" Text="Incluir" /></h2>

    
    <asp:DataList ID="DataList1" runat="server" DataKeyField="codigo" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <asp:Button ID="Button2" runat="server" Text="Excluir" OnClick="Button2_Click" />
            <asp:Button ID="Button3" runat="server" Text="Alterar" OnClick="Button3_Click" />   
            <br  />
            codigo:
            <asp:Label ID="codigoLabel" runat="server" Text='<%# Eval("codigo") %>' />
            <br />
            descricao:
            <asp:Label ID="descricaoLabel" runat="server" Text='<%# Eval("descricao") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PDSI_2017_Julio_TrindadeConnectionString %>" SelectCommand="SELECT [codigo], [descricao] FROM [Produto]"></asp:SqlDataSource>
</asp:Content>
