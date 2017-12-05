<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="produto_alterar.aspx.cs" Inherits="WebApplication1.produto_alterar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            descricao:
            <asp:Label ID="descricaoLabel" runat="server" Text='<%# Eval("descricao") %>' />
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PDSI_2017_Julio_TrindadeConnectionString %>" SelectCommand="SELECT [descricao] FROM [Produto] WHERE ([codigo] = @codigo)">
         <SelectParameters>
             <asp:SessionParameter Name="codigo" SessionField="id_editar" Type="Int32" />
         </SelectParameters>
    </asp:SqlDataSource>
     
     <!--<table>
            <tr style="padding:8px"> 
                <th style="padding:8px"> nome do produto</th>
            </tr>
            <tr> 
                <th> </th>
            </tr>
        </table>-->
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Salvar" OnClick="Button1_Click" /> <asp:Button ID="Button2" runat="server" Text="Cancelar" OnClick="Button2_Click" />
</asp:Content>
