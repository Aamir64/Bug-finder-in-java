<%@ Page Language="C#" MasterPageFile="~/projectmanager/MasterPage.master" AutoEventWireup="true" CodeFile="projectlist.aspx.cs" Inherits="projectmanager_projectlist" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table>
<tr>
<td>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDataBound="GridView1_RowDataBound" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowCommand="GridView1_RowCommand">
    <Columns>
    <asp:TemplateField>
    <ItemTemplate>
    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit">Edit</asp:LinkButton>
    </ItemTemplate>
    <EditItemTemplate>
    <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Update" OnClientClick="javascript:return confirm('Are you sure want to Update?')">Update</asp:LinkButton>
    <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Delete" OnClientClick="javascript:return confirm('Are you sure want to Delete?')">Delete</asp:LinkButton>
    <asp:LinkButton ID="LinkButton4" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
    </EditItemTemplate>    
    </asp:TemplateField>
    <asp:TemplateField HeaderText="ProjectId">
    <ItemTemplate>
    <asp:Label ID="Label1" runat="server" Text='<%#Eval("project_id")%>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
    <asp:Label ID="lblid" runat="server" Text='<%#Eval("project_id")%>'></asp:Label>
    </EditItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Project Name">
    <ItemTemplate>
    <asp:Label ID="Label3" runat="server" Text='<%#Eval("project_name")%>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txtname" runat="server" Text='<%#Eval("project_name")%>'></asp:TextBox>
    </EditItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Developer Name">
    <ItemTemplate>
    <asp:Label ID="Label4" runat="server" Text='<%#Eval("employee_id")%>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
    <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="true"></asp:DropDownList>
    </EditItemTemplate>
    </asp:TemplateField>
    </Columns>
    </asp:GridView>
</td>
</tr>
    
</table>
</asp:Content>

