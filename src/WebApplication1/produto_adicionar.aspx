<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="produto_adicionar.aspx.cs" Inherits="WebApplication1.produto_adicionar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 53px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
     <table>
            <tr style="padding:8px"> 
                <th style="padding:8px"> nome do produto</th>
            </tr>
            <tr> 
                <th> <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> </th>
            </tr>
        </table>
    <asp:Button ID="Button1" runat="server" Text="Salvar" OnClick="Button1_Click" /> <asp:Button ID="Button2" runat="server" Text="Cancelar" OnClick="Button2_Click" />
</asp:Content>
