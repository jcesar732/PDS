<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="cadastro_fornecedores.aspx.cs" Inherits="WebApplication1.cadastro_fornecedores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2> Cadastro de fornecedores <!-- link button incluir--> </h2>
    
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>


    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" DataKeyField="codigo">
        <AlternatingItemStyle BackColor="White" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#E3EAEB" />
        <ItemTemplate>
            <!-- precisam de modal-->
           <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" OnPreRender="LinkButton1_PreRender">Editar</asp:LinkButton>
           <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" OnPreRender="LinkButton2_PreRender">Excluir</asp:LinkButton>

            <br />
            codigo
            <asp:Label ID="codigoLabel" runat="server" Text='<%# Eval("codigo") %>' OnPreRender="idClienteLabel_PreRender" />
            <br />
            nome:
            <asp:Label ID="nomeLabel" runat="server" Text='<%# Eval("nome") %>' />
            <br />
            telefone:
            <asp:Label ID="telefoneLabel" runat="server" Text='<%# Eval("telefone") %>' />
            <br />
            cidade:
            <asp:Label ID="cidadeLabel" runat="server" Text='<%# Eval("cidade") %>' />
            <br />
            estado:
            <asp:Label ID="estadoLabel" runat="server" Text='<%# Eval("estado") %>' />
            <br />
            email:
            <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
            <br />
            cpf:
            <asp:Label ID="cpfLabel" runat="server" Text='<%# Eval("cpf") %>' />
            <br />
            cnpj:
            <asp:Label ID="cnpjLabel" runat="server" Text='<%# Eval("cnpj") %>' />
            <br />
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PDSI_2017_Julio_TrindadeConnectionString %>" SelectCommand="SELECT [codigo], [nome], [telefone], [cidade], [estado], [email], [cpf], [cnpj] FROM [Fornecedor]"></asp:SqlDataSource>
</asp:Content>
