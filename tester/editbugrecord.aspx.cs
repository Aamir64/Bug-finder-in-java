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
using System.Data.SqlClient;
public partial class tester_editbugrecord : System.Web.UI.Page
{
    Dbconn con;
    SqlConnection conn;
    SqlDataAdapter da;
    DataSet ds = new DataSet();
    int strid;
    int id1;
    string strname;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new Dbconn();
        //conn = new SqlConnection(con.conn.ToString());
        conn = new SqlConnection("Data Source=.;Initial Catalog=fault;Integrated Security=True".ToString());
        conn.Open();
        lblmsg.Text = "";
        lblbug.Visible = false;
        id1 = int.Parse(Session["id"].ToString());
        if (this.IsPostBack == false)
        {
            project();
            status();
            priority();
            //assignto();
        }
    }
    void project()
    {
        da = new SqlDataAdapter("select * from projects", conn);
        da.Fill(ds, "proj");
        ddlproj.DataSource = ds.Tables["proj"];
        ddlproj.DataTextField = "project_name";
        ddlproj.DataValueField = "project_id";
        ddlproj.DataBind();
        // ddlproj.Items.Insert(0, "--Select--");
    }
    void status()
    {
        da = new SqlDataAdapter("select * from statuses", conn);
        da.Fill(ds, "status");
        ddlstatus.DataSource = ds.Tables["status"];
        ddlstatus.DataTextField = "status";
        ddlstatus.DataValueField = "status_id";
        ddlstatus.DataBind();
        // ddlstatus.Items.Insert(0, "--Select--");
    }
    void priority()
    {
        da = new SqlDataAdapter("select * from priorities", conn);
        da.Fill(ds, "prio");
        ddlprio.DataSource = ds.Tables["prio"];
        ddlprio.DataTextField = "priority_desc";
        ddlprio.DataValueField = "priority_id";
        ddlprio.DataBind();
        // ddlprio.Items.Insert(0, "--Select--");
    }
    //void assignto()
    //{
    //    da = new SqlDataAdapter("select * from employees", conn);
    //    da.Fill(ds, "emp");
    //    ddlassignto.DataSource = ds.Tables["emp"];
    //    ddlassignto.DataTextField = "employee_name";
    //    ddlassignto.DataValueField = "employee_id";
    //    ddlassignto.DataBind();
    //    //  ddlassignto.Items.Insert(0,"--Select--");
    //}
    void gridbind()
    {

        da = new SqlDataAdapter("select * from bugs where project_id='" + ddlproj.SelectedValue + "' and priority_id='" + ddlprio.SelectedValue + "' and status_id='" + ddlstatus.SelectedValue + "'", conn);
        da.Fill(ds, "detail");
        if (ds.Tables["detail"].Rows.Count > 0)
        {
            GridView1.Visible = true;
            lblbug.Visible = true;
            GridView1.DataSource = ds.Tables["detail"];
            GridView1.DataBind();
        }
        else
        {
            GridView1.Visible = false;
            lblbug.Visible = false;
            lblmsg.Text = "No Records";
        }
    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        gridbind();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        gridbind();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        gridbind();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label id1 = new Label();
        id1 = (Label)GridView1.Rows[e.RowIndex].Cells[2].FindControl("lblid");
        da = new SqlDataAdapter("delete bugs where bug_id='" + int.Parse(id1.Text) + "'", conn);
        da.SelectCommand.ExecuteNonQuery();
        gridbind();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Label id1 = new Label();
        TextBox name = new TextBox();
        TextBox desc = new TextBox();
        TextBox resolution = new TextBox();
        TextBox assigndate = new TextBox();
        TextBox resdate = new TextBox();
        id1 = (Label)GridView1.Rows[e.RowIndex].Cells[2].FindControl("lblid");
        name = (TextBox)GridView1.Rows[e.RowIndex].Cells[3].FindControl("txtbugname");
        desc = (TextBox)GridView1.Rows[e.RowIndex].Cells[4].FindControl("txtbugdesc");
        resolution = (TextBox)GridView1.Rows[e.RowIndex].Cells[5].FindControl("txtres");
        assigndate=(TextBox)GridView1.Rows[e.RowIndex].Cells[6].FindControl("txtassign");
        resdate = (TextBox)GridView1.Rows[e.RowIndex].Cells[7].FindControl("txtresdate");
        strid = Convert.ToInt32(Session["id"].ToString());
        da = new SqlDataAdapter("select tester_name from tester where tester_id='" + strid + "'", conn);
        da.Fill(ds, "test");
        strname= ds.Tables["test"].Rows[0][0].ToString();
        //da=new SqlDataAdapter("select * from tester where tester_id='"+id+"'",conn);
        //da.Fill(ds, "tt");
        //string tester=ds.Tables["tt"].Rows[0][1].ToString();
        da = new SqlDataAdapter("update bugs set bug_name='" + name.Text + "',bug_desc='" + desc.Text + "',resolution='" + resolution.Text + "',date_assigned='" + assigndate.Text + "',date_resolved='"+resdate.Text+"',testedby='"+strname+"',testedby_id='"+strid+"' where bug_id='" + id1.Text + "'", conn);
        da.SelectCommand.ExecuteNonQuery();
        gridbind();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        gridbind();
    }
}
