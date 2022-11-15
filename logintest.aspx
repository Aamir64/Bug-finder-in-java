<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="logintest.aspx.cs" Inherits="logintest" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table>
 <tr>
 <td colspan="4" style="background-color: #ff9933; text-align: Center; border-left: 1 solid #FFFFFF; border-right: 1 solid #000000; border-top: 1 solid #FFFFFF; border-bottom: 1 solid #000000">
 Login As
 </td>
 </tr>
    <tr>
    <td style="background-color: #e9e9e9"><asp:LinkButton ID="lnktest" runat="server" OnClick="lnktest_Click">Tester</asp:LinkButton></td>    
    </tr>
</table>
</asp:Content>

