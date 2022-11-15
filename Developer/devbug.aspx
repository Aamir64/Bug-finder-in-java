<%@ Page Language="C#" MasterPageFile="~/Developer/developerMasterPage.master" AutoEventWireup="true" CodeFile="devbug.aspx.cs" Inherits="Developer_devbug" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <table>
    <tr>
    <td colspan="2" align="center" style="background-color: #ff9933; text-align: Center; border-left: 1 solid #FFFFFF; border-right: 1 solid #000000; border-top: 1 solid #FFFFFF; border-bottom: 1 solid #000000; height: 25px;" >
    <font style="font-size: 12pt; color: #FFFFFF; font-weight: bold; font-family: Arial, Tahoma, Verdana, Helvetica">Search</td>
    </tr>
    <tr>
    <td style="background-color: #ff9933;"><asp:Label ID="Label1" runat="server" Text="Project Name" Font-Bold="True"></asp:Label></td>
    <td style="background-color: #e9e9e9"><asp:DropDownList ID="ddlproj" runat="server">
        </asp:DropDownList></td>
    </tr>
    <tr>
    <td style="background-color: #ff9933;"><asp:Label ID="Label3" runat="server" Text="Priority" Font-Bold="True"></asp:Label></td>
    <td style="background-color: #e9e9e9"><asp:DropDownList ID="ddlprio" runat="server">
        </asp:DropDownList></td>
    </tr>
       <tr>
    <td style="background-color: #ff9933;"><asp:Label ID="Label4" runat="server" Text="Status" Font-Bold="True"></asp:Label></td>
    <td style="background-color: #e9e9e9"><asp:DropDownList ID="ddlstatus" runat="server">
        </asp:DropDownList></td>
    </tr>
    <tr>
    <td colspan="2" align="center" style="background-color: #e9e9e9"><asp:Button ID="btnsearch" runat="server" Text="Search" OnClick="btnsearch_Click" /></td>
    </tr>
    </table>
    <table>
    <tr>
    <td align="center" style="background-color:#ff9933;">
    <asp:Label ID="lblbug" runat="server" Text="Bugs" Font-Size="25px" Font-Bold="true" Visible="False"></asp:Label>
    </td>
    </tr>
    <tr>
    <td style="background-color: #e9e9e9" align="center"><asp:Label ID="lblmsg" runat="server" Font-Bold="True"></asp:Label></td>
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
</asp:Content>

