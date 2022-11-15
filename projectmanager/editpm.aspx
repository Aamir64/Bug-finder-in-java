<%@ Page Language="C#" MasterPageFile="~/projectmanager/MasterPage.master" AutoEventWireup="true" CodeFile="editpm.aspx.cs" Inherits="projectmanager_editpm" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table>
<tr>
<td align="center" style="background-color:#ff9933;font-size:16px;font-weight:bolder;">Project Manager Details<asp:Label 
        ID="Label12" runat="server"></asp:Label>
    </td>

</tr>
<tr>
<td>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowCommand="GridView1_RowCommand" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
    <Columns>
    <asp:TemplateField >
    <ItemTemplate>
       <asp:LinkButton ID="LinkButton1" runat="server" Text="Edit" CommandName="Edit"></asp:LinkButton>
    </ItemTemplate>
    <EditItemTemplate>    
      <asp:LinkButton ID="LinkButton2" runat="server" Text="Update" CommandName="Update" OnClientClick="javascript:return confirm('Are you sure want to Update?')"></asp:LinkButton>
      <asp:LinkButton ID="LinkButton3" runat="server" Text="Delete" CommandName="Delete" OnClientClick="javascript:return confirm('Are you Sure want to Delete?');"></asp:LinkButton>
      <asp:LinkButton ID="LinkButton4" runat="server" Text="Cancel" CommandName="Cancel">Cancel</asp:LinkButton>
    </EditItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="SNo">
<ItemTemplate>
<%#Container.DataItemIndex+1 %>
 </ItemTemplate>
 <EditItemTemplate>
 <%#Container.DataItemIndex+1 %>
 </EditItemTemplate>
  </asp:TemplateField>
  <asp:TemplateField HeaderText="Project Manager ID">
  <ItemTemplate>
  <asp:Label ID="Label11" runat="server" Text='<%#Eval("projmger_id")%>'></asp:Label>
  </ItemTemplate>
  <EditItemTemplate>
   <asp:Label ID="lblid" runat="server" Text='<%#Eval("projmger_id")%>'></asp:Label>
  </EditItemTemplate>
  </asp:TemplateField>
  <asp:TemplateField HeaderText="Project Manager Name">
  <ItemTemplate>
      <asp:Label ID="Label2" runat="server" Text='<%#Eval("projmger_name")%>'></asp:Label>
  </ItemTemplate>
  <EditItemTemplate>
  <asp:TextBox ID="txtname" runat="server" Text='<%#Eval("projmger_name")%>'></asp:TextBox>
  </EditItemTemplate>
  </asp:TemplateField>
    <asp:TemplateField HeaderText="Phone No">
  <ItemTemplate>
      <asp:Label ID="Label3" runat="server" Text='<%#Eval("phoneno")%>'></asp:Label>
  </ItemTemplate>
  <EditItemTemplate>
  <asp:TextBox ID="txtphno" runat="server" Text='<%#Eval("phoneno")%>'></asp:TextBox>
  </EditItemTemplate>
  </asp:TemplateField>
    <asp:TemplateField HeaderText="Email">
  <ItemTemplate>
      <asp:Label ID="Label4" runat="server" Text='<%#Eval("email")%>'></asp:Label>
  </ItemTemplate>
  <EditItemTemplate>
  <asp:TextBox ID="txtemail" runat="server" Text='<%#Eval("email")%>'></asp:TextBox>
  </EditItemTemplate>
  </asp:TemplateField>
    <asp:TemplateField HeaderText="Date of Join">
  <ItemTemplate>
      <asp:Label ID="Label5" runat="server" Text='<%#Eval("doj")%>'></asp:Label>
  </ItemTemplate>
  <EditItemTemplate>
  <asp:TextBox ID="txtdoj" runat="server" Text='<%#Eval("doj")%>'></asp:TextBox>
  </EditItemTemplate>
  </asp:TemplateField>
    <asp:TemplateField HeaderText="Login">
  <ItemTemplate>
      <asp:Label ID="Label6" runat="server" Text='<%#Eval("login")%>'></asp:Label>
  </ItemTemplate>
  <EditItemTemplate>
  <asp:TextBox ID="txtlogin" runat="server" Text='<%#Eval("login")%>'></asp:TextBox>
  </EditItemTemplate>
  </asp:TemplateField>
    </Columns>
    </asp:GridView>
</td>
</tr>
</table>
</asp:Content>

