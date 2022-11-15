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

public partial class Developer_developerMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void lnkhome_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Developer/devhome.aspx");
    }
    protected void lnknew_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Developer/developer.aspx");
    }
    protected void lnkedit_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Developer/editdeveloper.aspx");
    }
    protected void lnkpwd_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Developer/devchangepwd.aspx");
    }
    protected void lnktrack_Click(object sender, EventArgs e)
    {

        Response.Redirect("~/Developer/devbug.aspx");
    }
    protected void lnklog_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Administration.aspx");
    }
}
