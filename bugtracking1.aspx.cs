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

public partial class bugtracking : System.Web.UI.Page
{
    Dbconn con;
    SqlConnection conn;
    SqlDataAdapter da;
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new Dbconn();
        //conn = new SqlConnection(con.conn.ToString());
        conn = new SqlConnection("Data Source=.;Initial Catalog=fault;Integrated Security=True".ToString());
        conn.Open();
        lblmsg.Text = "";
        lblbug.Visible = false;
        if (this.IsPostBack == false)
        {
            project();
            status();
            priority();
            assignto();
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
    void assignto()
    {
        da = new SqlDataAdapter("select * from employees", conn);
        da.Fill(ds, "emp");
        ddlassignto.DataSource = ds.Tables["emp"];
        ddlassignto.DataTextField = "employee_name";
        ddlassignto.DataValueField = "employee_id";
        ddlassignto.DataBind();
      //  ddlassignto.Items.Insert(0,"--Select--");
    }
    void gridbind()
    {
        
        da = new SqlDataAdapter("select * from bugs where project_id='"+ddlproj.SelectedValue+"' and priority_id='"+ddlprio.SelectedValue+"' and status_id='"+ddlstatus.SelectedValue+"' and assigned_to='"+ddlassignto.SelectedValue+"'", conn);
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
}
