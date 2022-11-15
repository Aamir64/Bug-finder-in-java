<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div align="center">
<table >
<tr>
<td colspan="2" align="center" style="background-color: #ff9933;font-size:24px;">Login</td>
</tr>
<tr>
<td style="background-color: #ff9933"><asp:Label ID="Label1" runat="server" Text="Login" Font-Bold="True"></asp:Label></td>
<td style="background-color: #e9e9e9"><asp:TextBox ID="txtlogin" runat="server" 
        ontextchanged="txtlogin_TextChanged"></asp:TextBox></td>
</tr>
<tr>
<td style="background-color: #ff9933"><asp:Label ID="Label2" runat="server" Text="Password" Font-Bold="True"></asp:Label></td>
<td style="background-color: #e9e9e9"><asp:TextBox ID="txtpwd" runat="server" 
        TextMode="Password" ontextchanged="txtpwd_TextChanged"></asp:TextBox></td>
</tr>
<tr>
<td style="background-color: #ff9933" colspan="2"></td>
</tr>
<tr>
<td  colspan="2" align="center" style="background-color: #e9e9e9;">
    <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" /></td>
</tr>
<tr>
<td style="background-color: #ff9933" colspan="2"></td>
</tr>
<tr>
<td  colspan="2" align="center" style="background-color: #e9e9e9;">
    <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>  
    </td>
</tr>
</table>
</div>
</asp:Content>

