<%@ Page Language="C#" MasterPageFile="~/projectmanager/MasterPage.master" AutoEventWireup="true" CodeFile="pmchangepwd.aspx.cs" Inherits="projectmanager_pmchangepwd" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table>
<tr>
<td style="background-color:#ff9933;font-size:16px;font-weight:bolder;" colspan="3" align="center">
Change Password
   </td>
   </tr>
<tr>
<td style="background-color:#ff9933;font-size:16px;font-weight:bolder;">
    Project Manager_Id</td>
<td style="background-color: #e9e9e9" colspan="2"><asp:Label ID="lblid" runat="server" Text=""></asp:Label></td>

</tr>
<tr>
<td style="background-color:#ff9933;font-size:16px;font-weight:bolder;">
  Old Password</td>
<td style="background-color: #e9e9e9"><asp:TextBox ID="txtoldpwd" runat="server" 
        TextMode="Password" OnTextChanged="txtoldpwd_TextChanged"></asp:TextBox></td>
<td style="background-color: #e9e9e9"> <asp:Label ID="lblerror" runat="server" Font-Bold="True"></asp:Label>
<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="txtoldpwd"></asp:RequiredFieldValidator></td>
</tr>
<tr>
<td style="background-color:#ff9933;font-size:16px;font-weight:bolder;">
 New Password</td>
<td style="background-color: #e9e9e9"><asp:TextBox ID="txtnewpwd" runat="server" TextMode="Password"></asp:TextBox></td>
<td style="background-color: #e9e9e9"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtnewpwd"></asp:RequiredFieldValidator></td>
</tr>
<tr>
<td style="background-color:#ff9933;font-size:16px;font-weight:bolder;">
   Confirm Password</td>
<td style="background-color: #e9e9e9"><asp:TextBox ID="txtcpwd" runat="server" TextMode="Password"></asp:TextBox></td>
<td style="background-color: #e9e9e9"><asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Invalid Password" ControlToCompare="txtnewpwd" ControlToValidate="txtcpwd"></asp:CompareValidator></td>
</tr>
<tr>
<td style="background-color:#ff9933;font-size:16px;font-weight:bolder;" colspan="3">
   </td>
   </tr>
   <tr>
   <td style="background-color:#e9e9e9;font-size:16px;font-weight:bolder;" colspan="3" align="center">
       <asp:Button ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" />
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

