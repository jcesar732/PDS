<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="fornecedor_editar.aspx.cs" Inherits="WebApplication1.fornecedor_editar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <!-- colocar um datalist e filtrar pelo codigo do fornecedor -->
  
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
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
  
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PDSI_2017_Julio_TrindadeConnectionString %>" SelectCommand="SELECT [nome], [telefone], [cidade], [estado], [email] FROM [Fornecedor] WHERE ([codigo] = @codigo)">
        <SelectParameters>
            <asp:SessionParameter Name="codigo" SessionField="id_editar" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
  
    Nome :<asp:TextBox ID="nome_fornecedor" runat="server"></asp:TextBox><br />
    Telefone :<asp:TextBox ID="telefone" runat="server"></asp:TextBox><br />
    Cidade :<asp:TextBox ID="cidade" runat="server"></asp:TextBox><br />
    Estado :<asp:TextBox ID="estado" runat="server"></asp:TextBox><br />
    Email :<asp:TextBox ID="email" runat="server"></asp:TextBox><br />

    <asp:Button ID="Button1" runat="server" Text="Salvar" OnClick="Button1_Click" /> <asp:Button ID="Button2" runat="server" Text="Cancelar" OnClick="Button2_Click" />
</asp:Content>
