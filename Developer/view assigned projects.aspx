<%@ Page Language="C#" MasterPageFile="~/Developer/developerMasterPage.master" AutoEventWireup="true" CodeFile="view assigned projects.aspx.cs" Inherits="Developer_view_assigned_projects" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4" onselectedindexchanged="GridView1_SelectedIndexChanged">
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <Columns>
            <asp:TemplateField HeaderText="Project ID">
            <ItemTemplate><%#Eval ("project_id") %></ItemTemplate></asp:TemplateField>
            <asp:TemplateField HeaderText="Project Name">
            <ItemTemplate><%#Eval ("project_name") %></ItemTemplate></asp:TemplateField>
        </Columns>
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
    </asp:GridView>
</asp:Content>

