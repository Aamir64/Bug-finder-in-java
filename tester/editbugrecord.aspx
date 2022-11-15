<%@ Page Language="C#" MasterPageFile="~/tester/testerMasterPage.master" AutoEventWireup="true" CodeFile="editbugrecord.aspx.cs" Inherits="tester_editbugrecord" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <table>
    <tr>
    <td colspan="2" align="center" style="background-color: #ff9933; text-align: Center; border-left: 1 solid #FFFFFF; border-right: 1 solid #000000; border-top: 1 solid #FFFFFF; border-bottom: 1 solid #000000; height: 25px;" >
    <font style="font-size: 12pt; color: #FFFFFF; font-weight: bold; font-family: Arial, Tahoma, Verdana, Helvetica">Search</td>
    </tr>
    <tr>
    <td style="background-color: #ff9933;"><asp:Label ID="Label1" runat="server" Text="Project Name" Font-Bold="True"></asp:Label></td>
    <td style="background-color: #e9e9e9"><asp:DropDownList ID="ddlproj" runat="server">
        </asp:DropDownList></td>
    </tr>
    <tr>
    <td style="background-color: #ff9933;"><asp:Label ID="Label3" runat="server" Text="Priority" Font-Bold="True"></asp:Label></td>
    <td style="background-color: #e9e9e9"><asp:DropDownList ID="ddlprio" runat="server">
        </asp:DropDownList></td>
    </tr>
       <tr>
    <td style="background-color: #ff9933;"><asp:Label ID="Label4" runat="server" Text="Status" Font-Bold="True"></asp:Label></td>
    <td style="background-color: #e9e9e9"><asp:DropDownList ID="ddlstatus" runat="server">
        </asp:DropDownList></td>
    </tr>
    <tr>
    <td colspan="2" align="center" style="background-color: #e9e9e9"><asp:Button ID="btnsearch" runat="server" Text="Search" OnClick="btnsearch_Click" /></td>
    </tr>
    </table>
    <table>
      <tr>
    <td align="center" style="background-color:#ff9933;">
    <asp:Label ID="lblbug" runat="server" Text="Bugs" Font-Size="25px" Font-Bold="true" Visible="False"></asp:Label>
    </td>
    </tr>
    <tr>
    <td style="background-color: #e9e9e9" align="center"><asp:Label ID="lblmsg" runat="server" Font-Bold="True"></asp:Label></td>
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
    <asp:TemplateField HeaderText="Bug Id">
    <ItemTemplate>
        <asp:Label ID="Label5" runat="server" Text='<%#Eval("bug_id")%>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
        <asp:Label ID="lblid" runat="server" Text='<%#Eval("bug_id")%>'></asp:Label>
    </EditItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Bug_Name">
    <ItemTemplate>
    <asp:Label ID="Label6" runat="server" Text='<%#Eval("bug_name")%>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
    <asp:TextBox ID="txtbugname" runat="server" Text='<%#Eval("bug_name")%>'></asp:TextBox>
    </EditItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Bug_Description">
    <ItemTemplate>
    <asp:Label ID="Label7" runat="server" Text='<%#Eval("bug_desc")%>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
    <asp:TextBox ID="txtbugdesc" runat="server" Text='<%#Eval("bug_desc")%>'></asp:TextBox>
    </EditItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Resolution">
    <ItemTemplate>
    <asp:Label ID="Label8" runat="server" Text='<%#Eval("resolution")%>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
    <asp:TextBox ID="txtres" runat="server" Text='<%#Eval("resolution")%>'></asp:TextBox>
    </EditItemTemplate>
    </asp:TemplateField>
      <asp:TemplateField HeaderText="Assigned By">
    <ItemTemplate>
        <asp:Label ID="Label9" runat="server" Text='<%#Eval("assigned_by")%>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
        <asp:Label ID="lblass" runat="server" Text='<%#Eval("assigned_by")%>'></asp:Label>
    </EditItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Assigned Date">
    <ItemTemplate>
    <asp:Label ID="Label10" runat="server" Text='<%#Eval("date_assigned")%>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
    <asp:TextBox ID="txtassign" runat="server" Text='<%#Eval("date_assigned")%>'></asp:TextBox>
    </EditItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Resolved Date">
    <ItemTemplate>
    <asp:Label ID="Label11" runat="server" Text='<%#Eval("date_resolved")%>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
    <asp:TextBox ID="txtresdate" runat="server" Text='<%#Eval("date_resolved")%>'></asp:TextBox>
    </EditItemTemplate>
    </asp:TemplateField>
    </Columns>
    </asp:GridView>
    </td>
    </tr>
    </table>
</asp:Content>

