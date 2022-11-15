<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BugRecord1.aspx.cs" Inherits="BugRecord" %>
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
    <table style="border: 1 solid #000000">
    <tr>
    <td colspan="3" align="center" style="background-color: #ff9933; text-align: Center; border-left: 1 solid #FFFFFF; border-right: 1 solid #000000; border-top: 1 solid #FFFFFF; border-bottom: 1 solid #000000; height: 47px;" >
    <font style="font-size: 12pt; color: #FFFFFF; font-weight: bold; font-family: Arial, Tahoma, Verdana, Helvetica">Bug/Edit Bug</td>
    </tr>
    <tr>
    <td style="background-color: #E9E9E9" colspan="3"><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
    <td style="background-color: #ff9933; border-left: 1 solid #FFFFFF; border-right: 1 solid #000000; border-top: 1 solid #FFFFFF; border-bottom: 1 solid #000000">
    <asp:Label ID="Label1" runat="server" Text="Bug Name" Font-Bold="True"></asp:Label></td>
    <td style="background-color: #E9E9E9"><asp:TextBox ID="txtbugname" runat="server" Width="442px"></asp:TextBox></td>
    <td style="background-color: #E9E9E9"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Bug Name" ControlToValidate="txtbugname"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
    <td style="background-color: #ff9933; border-left: 1 solid #FFFFFF; border-right: 1 solid #000000; border-top: 1 solid #FFFFFF; border-bottom: 1 solid #000000">
    <asp:Label ID="Label2" runat="server" Text="Bug Description" Font-Bold="True"></asp:Label></td>
    <td style="background-color: #E9E9E9"><asp:TextBox ID="txtbugdesc" runat="server" TextMode="MultiLine" Width="260px"></asp:TextBox></td>
    <td style="background-color: #E9E9E9"><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Bug Description" ControlToValidate="txtbugdesc"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
    <td style="background-color: #ff9933; border-left: 1 solid #FFFFFF; border-right: 1 solid #000000; border-top: 1 solid #FFFFFF; border-bottom: 1 solid #000000">
    <asp:Label ID="Label3" runat="server" Text="Project" Font-Bold="True"></asp:Label></td>
    <td style="background-color: #E9E9E9"><asp:DropDownList ID="ddlproj" runat="server">
        </asp:DropDownList></td>
        <td style="background-color: #E9E9E9"><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Select Project" ControlToValidate="ddlproj"></asp:RequiredFieldValidator></td>
    </tr>
     <tr>
    <td style="background-color: #ff9933; border-left: 1 solid #FFFFFF; border-right: 1 solid #000000; border-top: 1 solid #FFFFFF; border-bottom: 1 solid #000000">
    <asp:Label ID="Label4" runat="server" Text="Priority" Font-Bold="True"></asp:Label></td>
    <td style="background-color: #E9E9E9"><asp:DropDownList ID="ddlprio" runat="server">
        </asp:DropDownList></td>
        <td style="background-color: #E9E9E9"><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Select Priority" ControlToValidate="ddlprio"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
    <td style="background-color: #ff9933; border-left: 1 solid #FFFFFF; border-right: 1 solid #000000; border-top: 1 solid #FFFFFF; border-bottom: 1 solid #000000">
    <asp:Label ID="Label5" runat="server" Text="Assigned By" Font-Bold="True"></asp:Label></td>
    <td style="background-color: #E9E9E9"><asp:Label ID="lblassignedby" runat="server" Text=""></asp:Label></td>
    <td style="background-color: #E9E9E9"></td>
    </tr>
    <tr>
    <td style="background-color: #ff9933; border-left: 1 solid #FFFFFF; border-right: 1 solid #000000; border-top: 1 solid #FFFFFF; border-bottom: 1 solid #000000">
    <asp:Label ID="Label6" runat="server" Text="Assigned To" Font-Bold="True"></asp:Label></td>
    <td style="background-color: #E9E9E9"><asp:DropDownList ID="ddlassignto" runat="server">
        </asp:DropDownList></td>
        <td style="background-color: #E9E9E9"><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Select Assigned To" ControlToValidate="ddlassignto"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
    <td style="background-color: #ff9933; border-left: 1 solid #FFFFFF; border-right: 1 solid #000000; border-top: 1 solid #FFFFFF; border-bottom: 1 solid #000000">
    <asp:Label ID="Label7" runat="server" Text="Assigned Date" Font-Bold="True"></asp:Label></td>
    <td style="background-color: #E9E9E9"><asp:TextBox ID="txtassigndate" runat="server"></asp:TextBox></td>
    <td style="background-color: #E9E9E9"></td>
    </tr>
       <tr>
    <td style="background-color: #ff9933; border-left: 1 solid #FFFFFF; border-right: 1 solid #000000; border-top: 1 solid #FFFFFF; border-bottom: 1 solid #000000">
    <asp:Label ID="Label8" runat="server" Text="Status" Font-Bold="True"></asp:Label></td>
    <td style="background-color: #E9E9E9"><asp:DropDownList ID="ddlstatus" runat="server">
        </asp:DropDownList></td>
        <td style="background-color: #E9E9E9"><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Select Status" ControlToValidate="ddlstatus"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
    <td style="background-color: #ff9933; border-left: 1 solid #FFFFFF; border-right: 1 solid #000000; border-top: 1 solid #FFFFFF; border-bottom: 1 solid #000000">
    <asp:Label ID="Label9" runat="server" Text="Date  Resolved" Font-Bold="True"></asp:Label></td>
    <td style="background-color: #E9E9E9"><asp:TextBox ID="txtdateresolve" runat="server"></asp:TextBox></td>
    <td style="background-color: #E9E9E9"></td>
    </tr>
    <tr>
    <td style="background-color: #ff9933; border-left: 1 solid #FFFFFF; border-right: 1 solid #000000; border-top: 1 solid #FFFFFF; border-bottom: 1 solid #000000">
    <asp:Label ID="Label10" runat="server" Text="Resolution" Font-Bold="True"></asp:Label></td>
    <td style="background-color: #E9E9E9"><asp:TextBox ID="txtresolution" runat="server" TextMode="MultiLine" Width="260px"></asp:TextBox></td>
    <td style="background-color: #E9E9E9"></td>
    </tr>
      <tr>
    <td style="background-color: #ff9933" colspan="3"></td>
    </tr>
    <tr>
    <td colspan="3" style="background-color: #E9E9E9" align="right">
    <asp:Button ID="btninsert" runat="server" Text="Insert"></asp:Button>
    <asp:Button ID="btnupdate" runat="server" Text="Update"></asp:Button>
    <asp:Button ID="btndelete" runat="server" Text="Delete"></asp:Button>
    <asp:Button ID="btnclear" runat="server" Text="Clear"></asp:Button>
    </td>
    </tr>
     <tr>
    <td style="background-color: #ff9933" colspan="3"></td>
    </tr>
    <tr>
    <td style="background-color: #E9E9E9" colspan="3">
    <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
    </td>
    </tr>
    </table>
    </div>
    </form>
</body>
</html>
