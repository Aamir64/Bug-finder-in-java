<%@ Page Language="C#" MasterPageFile="~/projectmanager/MasterPage.master" AutoEventWireup="true" CodeFile="editdev.aspx.cs" Inherits="projectmanager_editdev" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table>
<tr>
<td style="background-color:#ff9933;font-size:16px;font-weight:bolder;" colspan="3" align="center">
Edit Project Manager Details
   </td>
   </tr>
<tr>
<td style="background-color:#ff9933;font-size:16px;font-weight:bolder;">
   Project Manager_Id</td>
<td style="background-color: #e9e9e9" colspan="2"><asp:Label ID="lblid" runat="server" Text=""></asp:Label></td>

</tr>
<tr>
<td style="background-color:#ff9933;font-size:16px;font-weight:bolder;">
    Project Manager Name</td>
<td style="background-color: #e9e9e9"><asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
<td style="background-color: #e9e9e9">&nbsp;</td>
</tr>
<tr>
<td style="background-color:#ff9933;font-size:16px;font-weight:bolder;">
   Phone No</td>
<td style="background-color: #e9e9e9"><asp:TextBox ID="txtphno" runat="server"></asp:TextBox></td>
<td style="background-color: #e9e9e9">&nbsp;</td>

</tr>
<tr>
<td style="background-color:#ff9933;font-size:16px;font-weight:bolder;">
   Date of Join</td>
<td style="background-color: #e9e9e9"><asp:TextBox ID="txtdoj" runat="server"></asp:TextBox></td>
<td style="background-color: #e9e9e9">
<asp:Label ID="Label1" runat="server" Text="Enter Date in 'dd/mm/yyyy' Formate" Font-Size="13pt"></asp:Label>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtdoj"></asp:RequiredFieldValidator></td>
</tr>
<tr>
<td style="background-color:#ff9933;font-size:16px;font-weight:bolder;">
   Email</td>
<td style="background-color: #e9e9e9"><asp:TextBox ID="txtemail" runat="server"></asp:TextBox></td>
<td style="background-color: #e9e9e9"><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="txtemail"></asp:RequiredFieldValidator></td>
</tr>
<tr>
<td style="background-color:#ff9933;font-size:16px;font-weight:bolder;">
   Login</td>
<td style="background-color: #e9e9e9"><asp:TextBox ID="txtlogin" runat="server"></asp:TextBox></td>
<td style="background-color: #e9e9e9"><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="txtlogin"></asp:RequiredFieldValidator></td>
</tr>
<tr>
<td style="background-color:#ff9933;font-size:16px;font-weight:bolder;" colspan="3">
   </td>
   </tr>
   <tr>
<td style="background-color:#e9e9e9;font-size:16px;font-weight:bolder;" colspan="3" align="center">
   <asp:Button ID="btnadd" runat="server" Text="Update Details" OnClick="btnadd_Click" ></asp:Button>
   <asp:Button ID="btnclear" runat="server" Text="Cancel" CausesValidation="False"></asp:Button>   
   </td>
   </tr>
   <tr>
<td style="background-color:#ff9933;font-size:16px;font-weight:bolder;" colspan="3">
   </td>
   </tr>
   <tr>
   <td style="background-color:#e9e9e9;font-size:16px;font-weight:bolder;" colspan="3" align="center">
    <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
   </td>
   </tr>
</table>
</asp:Content>

