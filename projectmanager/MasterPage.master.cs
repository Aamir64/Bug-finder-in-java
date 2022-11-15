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

public partial class projectmanager_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void lnkhome_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/projectmanager/pmhome.aspx");
    }
    protected void lnknew_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/projectmanager/projmger.aspx");  
    }
    protected void lnkpm_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/projectmanager/editdev.aspx");
    }
    protected void lnkpwd_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/projectmanager/pmchangepwd.aspx");
    }
    protected void lnkdev_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/projectmanager/editdeveloer.aspx");
    }
    protected void lnkpmd_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/projectmanager/editpm.aspx");
    }
    protected void lnktest_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/projectmanager/edittester.aspx");
    }
    protected void lnkpri_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/projectmanager/priority.aspx");
    }
    protected void lnkprilist_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/projectmanager/prioritylist.aspx");
    }
    protected void lnkproj_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/projectmanager/Projectdetalis.aspx");
    }

    protected void lnkprojlist_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/projectmanager/projectlist.aspx");
    }
    protected void lnkstatus_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/tester/status.aspx");
    }
    protected void lnkslist_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/projectmanager/statuslist.aspx");
    }
    protected void lnkassign_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/projectmanager/assignproj.aspx");
    }
    protected void lnktrack_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/projectmanager/bugtracking.aspx");
    }
    protected void lnklogout_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Administration.aspx");
    }
    protected void lnkdevnew_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/projectmanager/newdeveloper.aspx");
    }
    protected void lnktester_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/projectmanager/newtester.aspx");
    }
}
