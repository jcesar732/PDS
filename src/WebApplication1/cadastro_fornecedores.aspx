<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="cadastro_fornecedores.aspx.cs" Inherits="WebApplication1.cadastro_fornecedores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2> Cadastro de fornecedores <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click1">Incliur</asp:LinkButton> </h2>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" DataKeyField="codigo">
        <AlternatingItemStyle BackColor="White" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#E3EAEB" />
        <ItemTemplate>

        <table>
            <tr style="padding:8px"> 
                <th style="padding:8px"> codigo </th>
                <th  style="padding:8px"> nome </th>
                <th  style="padding:8px"> telefone </th>
                <th style="padding:8px"> cidade </th>
                <th  style="padding:8px"> email </th>
                <th style="padding:8px"> edição </th>
            </tr>
            <tr> 
                <th> <asp:Label ID="Label2" runat="server" Text='<%# Eval("codigo") %>' OnPreRender="idClienteLabel_PreRender" /> </th>
                <th> <asp:Label ID="Label3" runat="server" Text='<%# Eval("nome") %>' /></th>
                <th> <asp:Label ID="Label4" runat="server" Text='<%# Eval("telefone") %>' /></th>
                <th> <asp:Label ID="Label6" runat="server" Text='<%# Eval("cidade") %>' /></th>
                <th> <asp:Label ID="Label7" runat="server" Text='<%# Eval("email") %>' /></th>
                <th> <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton1_Click" OnPreRender="LinkButton1_PreRender">Editar</asp:LinkButton> <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" OnPreRender="LinkButton2_PreRender">Excluir</asp:LinkButton> </th>
            </tr>
        </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PDSI_2017_Julio_TrindadeConnectionString %>" SelectCommand="SELECT [codigo], [nome], [telefone], [cidade], [estado], [email], [cpf], [cnpj] FROM [Fornecedor]"></asp:SqlDataSource>
</asp:Content>
