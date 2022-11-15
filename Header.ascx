<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Header.ascx.cs" Inherits="Header" %>

<table><tr><td valign="top" >


  <table id="Menu_holder" runat="Server" >
  
   <tr>
    <td>
        <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/images/radar.gif"  >HyperLink</asp:HyperLink>
    </td>
    <td style="background-color: #E9E9E9">
        <asp:HyperLink ID="HyperLink3" runat="server" ImageUrl="~/images/bug_logo.gif" NavigateUrl="~/bugtracking.aspx">HyperLink</asp:HyperLink>
    </td>
    <td style="background-color: #E9E9E9">
        <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl="~/images/icon_add.gif" NavigateUrl="~/logintest.aspx">HyperLink</asp:HyperLink>
    </td>
    <td style="background-color: #E9E9E9">
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Administration.aspx" ImageUrl="~/images/icon_admin.gif">HyperLink</asp:HyperLink>
    </td>
    </tr>
  </table>

</td>
    </tr></table>