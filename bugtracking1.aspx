<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bugtracking1.aspx.cs" Inherits="bugtracking" %>
<%@ Register TagPrefix="cc" TagName="Header" Src="~/Header.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <cc:Header ID="header" runat="server" />
    <div>
    <table>
    <tr>
    <td colspan="2" align="center" style="background-color: #669999; text-align: Center; border-left: 1 solid #FFFFFF; border-right: 1 solid #000000; border-top: 1 solid #FFFFFF; border-bottom: 1 solid #000000; height: 25px;" >
    <font style="font-size: 12pt; color: #FFFFFF; font-weight: bold; font-family: Arial, Tahoma, Verdana, Helvetica">Search</td>
    </tr>
    <tr>
    <td style="background-color: #B3B300;"><asp:Label ID="Label1" runat="server" Text="Project Name" Font-Bold="True"></asp:Label></td>
    <td style="background-color: #E9E9E9"><asp:DropDownList ID="ddlproj" runat="server">
        </asp:DropDownList></td>
    </tr>
    <tr>
    <td style="background-color: #B3B300;"><asp:Label ID="Label2" runat="server" Text="Assigned To" Font-Bold="True"></asp:Label></td>
    <td style="background-color: #E9E9E9"><asp:DropDownList ID="ddlassignto" runat="server">
        </asp:DropDownList></td>
    </tr>
    <tr>
    <td style="background-color: #B3B300;"><asp:Label ID="Label3" runat="server" Text="Priority" Font-Bold="True"></asp:Label></td>
    <td style="background-color: #E9E9E9"><asp:DropDownList ID="ddlprio" runat="server">
        </asp:DropDownList></td>
    </tr>
       <tr>
    <td style="background-color: #B3B300;"><asp:Label ID="Label4" runat="server" Text="Status" Font-Bold="True"></asp:Label></td>
    <td style="background-color: #E9E9E9"><asp:DropDownList ID="ddlstatus" runat="server">
        </asp:DropDownList></td>
    </tr>
    <tr>
    <td colspan="2" align="center" style="background-color: #E9E9E9"><asp:Button ID="btnsearch" runat="server" Text="Search" OnClick="btnsearch_Click" /></td>
    </tr>
    </table>
    <table>
    <tr>
    <td align="center" style="background-color:#B3B300;">
    <asp:Label ID="lblbug" runat="server" Text="Bugs" Font-Size="25px" Font-Bold="true" Visible="False"></asp:Label>
    </td>
    </tr>
    <tr>
    <td style="background-color: #E9E9E9" align="center"><asp:Label ID="lblmsg" runat="server" Font-Bold="True"></asp:Label></td>
    </tr>
    <tr>
    <td>    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
    <Columns>
    <asp:BoundField HeaderText="Bug_Id" DataField="bug_id" />
    <asp:BoundField HeaderText="Bug_Name" DataField="bug_name" />
    <asp:BoundField HeaderText="Bug_Description" DataField="bug_desc" />
    <asp:BoundField HeaderText="Resoultion" DataField="resolution" />
    <asp:BoundField HeaderText="Assigned_By" DataField="assigned_by" />
    <asp:BoundField HeaderText="Date_Assigned" DataField="date_assigned" />
    <asp:BoundField HeaderText="Date Resolved" DataField="date_resolved" />
    </Columns>
    </asp:GridView>
    </td>
    </tr>
    </table>
    </div>
    </form>
</body>
</html>
