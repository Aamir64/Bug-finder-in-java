<%@ Page Language="C#" MasterPageFile="~/projectmanager/MasterPage.master" AutoEventWireup="true" CodeFile="status.aspx.cs" Inherits="projectmanager_status" Title="Untitled Page" %>
<%-- Add content controls here --%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table>
<tr>
<td style="background-color:#ff9933;font-size:16px;font-weight:bolder;">
    Status_Id</td>
<td style="background-color: #e9e9e9" colspan="2">
    <asp:TextBox ID="TextBox1" runat="server" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
                                    </td>

</tr>
<tr>
<td style="background-color:#ff9933;font-size:16px;font-weight:bolder;">
    Status</td>
<td style="background-color: #e9e9e9"><asp:TextBox ID="txtstatus" runat="server"></asp:TextBox></td>
<td style="background-color: #e9e9e9"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtstatus"></asp:RequiredFieldValidator></td>
</tr>
<tr>
<td colspan="3" align="center" style="background-color: #e9e9e9">
    <asp:Button ID="btnadd" runat="server" Text="Add" OnClick="btnadd_Click" />
    <asp:Button ID="btnclear" runat="server" Text="Clear" CausesValidation="False" OnClick="btnclear_Click" />
    </td>
</tr>
<tr>
<td style="background-color: #e9e9e9" colspan="3" align="center">
    <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label></td>
</tr>
</table>
</asp:Content>