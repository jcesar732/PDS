<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="funcionario_editar.aspx.cs" Inherits="WebApplication1.funcionario_editar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="codigo" DataSourceID="SqlDataSource1">
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
            identidade:
            <asp:Label ID="identidadeLabel" runat="server" Text='<%# Eval("identidade") %>' />
            <br />
            carteiraDeTrabalho:
            <asp:Label ID="carteiraDeTrabalhoLabel" runat="server" Text='<%# Eval("carteiraDeTrabalho") %>' />
            <br />
            salario:
            <asp:Label ID="salarioLabel" runat="server" Text='<%# Eval("salario") %>' />
            <br />
            motorista:
            <asp:Label ID="motoristaLabel" runat="server" Text='<%# Eval("motorista") %>' />
            <br />
            tecnico:
            <asp:Label ID="tecnicoLabel" runat="server" Text='<%# Eval("tecnico") %>' />
            <br />
            <br />
        </ItemTemplate>  

</asp:DataList>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PDSI_2017_Julio_TrindadeConnectionString %>" SelectCommand="SELECT [codigo], [nome], [telefone], [identidade], [carteiraDeTrabalho], [salario], [motorista], [tecnico] FROM [Funcionario] WHERE ([codigo] = @codigo)">
            <SelectParameters>
                <asp:QueryStringParameter Name="codigo" QueryStringField="id_editar" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

        Nome : <asp:TextBox ID="nome" runat="server"></asp:TextBox><br /> 
        Telefone : <asp:TextBox ID="telefone" runat="server"></asp:TextBox><br />
        Identidade : <asp:TextBox ID="identidade" runat="server"></asp:TextBox><br />
        Carteira De Trabalho : <asp:TextBox ID="carteira_trabalho" runat="server"></asp:TextBox><br />
        Salário<asp:TextBox ID="salario" runat="server"></asp:TextBox><br />
        Motorista : <asp:TextBox ID="motorista" runat="server"></asp:TextBox><br />
        Técnico : <asp:TextBox ID="tecnico" runat="server"></asp:TextBox><br /><br />
    <asp:Button ID="Button1" runat="server" Text="Salvar" OnClick="Button1_Click" /> <asp:Button ID="Button2" runat="server" Text="Cancelar" OnClick="Button2_Click" />

</asp:Content>
