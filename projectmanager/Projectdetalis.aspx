<%@ Page Language="C#" MasterPageFile="~/projectmanager/MasterPage.master" AutoEventWireup="true" CodeFile="Projectdetalis.aspx.cs" Inherits="projectmanager_Projectdetalis" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table>
<tr>
<td style="background-color:#ff9933;font-size:16px;font-weight:bolder; height: 21px;" colspan="3" align="center">
Project&nbsp; Details
   </td>
   </tr>
<tr>
<td style="background-color:#ff9933;font-size:16px;font-weight:bolder;">
    Project_Id</td>
<td style="background-color: #e9e9e9" colspan="2"><asp:Label ID="lblid" runat="server" Text=""></asp:Label></td>

</tr>
<tr>
<td style="background-color:#ff9933;font-size:16px;font-weight:bolder;">
   Project Name</td>
<td style="background-color: #e9e9e9"><asp:TextBox ID="txtproj" runat="server"></asp:TextBox></td>
<td style="background-color: #e9e9e9"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtproj"></asp:RequiredFieldValidator></td>
</tr>
<tr>
<td style="background-color:#ff9933;font-size:16px;font-weight:bolder;">
   Project Manager Name</td>
<td style="background-color: #e9e9e9">
    <asp:DropDownList ID="ddlproj" runat="server">
    </asp:DropDownList>
</td>
<td style="background-color: #e9e9e9"><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="ddlproj" InitialValue="--Select--"></asp:RequiredFieldValidator></td>

</tr>
<tr>
<td style="background-color:#ff9933;font-size:16px;font-weight:bolder;" colspan="3">
   </td>
   </tr>
   <tr>
<td style="background-color:#e9e9e9;font-size:16px;font-weight:bolder;" colspan="3" align="center">
   <asp:Button ID="btnadd" runat="server" Text="Add Details" OnClick="btnadd_Click" ></asp:Button>
   <asp:Button ID="btnclear" runat="server" Text="Clear" OnClick="btnclear_Click" CausesValidation="False"></asp:Button>   
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

