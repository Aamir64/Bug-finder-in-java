<%@ Page Language="C#" MasterPageFile="~/projectmanager/MasterPage.master" AutoEventWireup="true" CodeFile="assignproj.aspx.cs" Inherits="projectmanager_assignproj" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table>
<tr>
<td style="background-color:#ff9933;font-size:16px;font-weight:bolder;"><asp:Label ID="Label1" runat="server" Text="Select Project Name:"></asp:Label></td>
<td style="background-color: #e9e9e9">
    <asp:DropDownList ID="ddlproj" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlproj_SelectedIndexChanged">
    </asp:DropDownList></td>
    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="ddlproj" InitialValue="--Select--"></asp:RequiredFieldValidator></td>
</tr>
<tr>
<td style="background-color:#ff9933;font-size:16px;font-weight:bolder;">
<asp:Label ID="Label2" runat="server" Text="Assiged By:"></asp:Label></td>
<td style="background-color: #e9e9e9">
  <asp:Label ID="lblassignby" runat="server" Text=""></asp:Label>
   </td>
</tr>
<tr>
<td style="background-color:#ff9933;font-size:16px;font-weight:bolder;">
<asp:Label ID="Label3" runat="server" Text="Assigned To:"></asp:Label></td>
<td style="background-color: #e9e9e9">
    <asp:DropDownList ID="ddlassignto" runat="server">
    </asp:DropDownList></td>
    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="ddlassignto" InitialValue="--Select--"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td style="background-color:#ff9933;" colspan="3"></td>
</tr>
<tr>
<td colspan="3" style="background-color: #e9e9e9" align="center">
    <asp:Button ID="Button1" runat="server" Text="Assign" OnClick="Button1_Click" />
    <asp:Button ID="Button2" runat="server" Text="Clear" OnClick="Button2_Click" />
    </td>
</tr>
<tr>
<td style="background-color:#ff9933;" colspan="3"></td>
</tr>
<tr>
<td  style="background-color: #e9e9e9" align="center" colspan="3">
    <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
    <asp:Label ID="lblby" runat="server" Text="" Visible="false"></asp:Label></td>
</tr>
</table>
</asp:Content>

