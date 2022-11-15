<%@ Page Language="C#" MasterPageFile="~/projectmanager/MasterPage.master" AutoEventWireup="true" CodeFile="prioritylist.aspx.cs" Inherits="projectmanager_prioritylist" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table>
<tr>
<td>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" >
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
    <asp:TemplateField HeaderText="Priority Id">
    <ItemTemplate>
    <asp:Label ID="Label1" runat="server" Text='<%#Eval("priority_id")%>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
    <asp:Label ID="lblid" runat="server" Text='<%#Eval("priority_id")%>'></asp:Label>
    </EditItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Priority">
    <ItemTemplate>
    <asp:Label ID="Label3" runat="server" Text='<%#Eval("priority_desc")%>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txtname" runat="server" Text='<%#Eval("priority_desc")%>'></asp:TextBox>
    </EditItemTemplate>
    </asp:TemplateField>
    
    </Columns>
    </asp:GridView>
</td>
</tr>
    
</table>
</asp:Content>

