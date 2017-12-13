<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="funcionario_adicionar.aspx.cs" Inherits="WebApplication1.funcionario_adicionar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Label ID="Label1" runat="server" Text="Obs: Em motorista e técnico coloque sim ou não para ou respectivos campos"></asp:Label>
    <table>
                <tr style="padding:8px"> 
                    <th  style="padding:8px"> Nome </th>
                    <th  style="padding:8px"> Telefone </th>
                    <th  style="padding:8px"> Identidade </th>
                    <th  style="padding:8px"> Salário </th>
                    <th  style="padding:8px"> Carteira de motorista </th>
                    <th  style="padding:8px"> Motorista </th>
                    <th  style="padding:8px"> Técnico </th>
                </tr>
                <tr>
                    <th> <asp:TextBox ID="nome" runat="server"></asp:TextBox> </th>
                    <th> <asp:TextBox ID="telefone" runat="server"></asp:TextBox> </th>
                    <th> <asp:TextBox ID="identidade" runat="server"></asp:TextBox> </th>
                    <th> <asp:TextBox ID="salario" runat="server"></asp:TextBox> </th>
                    <th> <asp:TextBox ID="carteira_trabalho" runat="server"></asp:TextBox> </th>
                    <th> <asp:TextBox ID="motorista_bool" runat="server"></asp:TextBox> </th>
                    <th> <asp:TextBox ID="tecnico_bool" runat="server"></asp:TextBox> </th>                  
                </tr>
           </table>
    <asp:Button ID="Button1" runat="server" Text="Salvar" OnClick="Button1_Click" /> <asp:Button ID="Button2" runat="server" Text="Cancelar" OnClick="Button2_Click" />
</asp:Content>
