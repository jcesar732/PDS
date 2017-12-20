<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="fornecedor_adcionar.aspx.cs" Inherits="WebApplication1.fornecedor_adcionar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table>
            <tr style="padding:8px"> 
                <th style="padding:8px"> nome do fornecedor</th>
                <th style="padding:8px"> telefone </th>
                <th style="padding:8px"> cidade </th>
                <th style="padding:8px"> estado </th>
                <th style="padding:8px"> email </th>
            </tr>
            <tr> 
                <th> <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> </th>
                <th><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox> </th>
                <th><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox> </th>
                <th> <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox> </th>
                <th><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox> </th>
            </tr>
        </table>
    <asp:Button ID="Button1" runat="server" Text="Salvar" OnClick="Button1_Click" />
    <asp:Button ID="Button2" runat="server" Text="Cancelar" OnClick="Button2_Click" />
</asp:Content>
