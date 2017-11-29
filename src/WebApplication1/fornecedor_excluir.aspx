<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="fornecedor_excluir.aspx.cs" Inherits="WebApplication1.cruds.fornecedor_excluir" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <!--tabela de info fornecedor-->
    <!--tabela já filtrando pela session id_section-->
    <br />
    <asp:DataList ID="DataList1" runat="server" DataKeyField="codigo" DataSourceID="SqlDataSource2">
        <ItemTemplate>
            codigo:
            <asp:Label ID="codigoLabel" runat="server" Text='<%# Eval("codigo") %>' />
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
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PDSI_2017_Julio_TrindadeConnectionString %>" SelectCommand="SELECT [codigo], [nome], [telefone], [cidade], [estado], [email] FROM [Fornecedor] WHERE ([codigo] = @codigo)">
        <SelectParameters>
            <asp:SessionParameter Name="codigo" SessionField="id_excluir" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PDSI_2017_Julio_TrindadeConnectionString %>" SelectCommand="SELECT * FROM [Fornecedor] WHERE ([codigo] = @codigo)">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="" Name="codigo" SessionField="id_excluir" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    
    <asp:Button ID="Button1" runat="server" Text="Confirmar" OnClick="Button1_Click" />
</asp:Content>
