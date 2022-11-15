using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class tester_testerMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void lnkhome_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/tester/testerhome.aspx");
    }
    protected void lnknew_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/tester/tester.aspx");
    }
    protected void lnkedit_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/tester/edittesterdetails.aspx");
    }
    protected void lnkpwd_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/tester/testerchgpwd.aspx");
    }
    protected void lnkbug_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/tester/BugRecord.aspx");
    }
    protected void lnklogout_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Administration.aspx");
    }
    protected void lnktrack_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/tester/bugtracking.aspx");
    }
    protected void lnkeditbug_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/tester/editbugrecord.aspx");
    }
}
