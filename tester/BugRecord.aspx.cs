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
public partial class tester_BugRecord : System.Web.UI.Page
{
    Dbconn con;
    SqlConnection conn;
    SqlDataAdapter da;
    DataSet ds = new DataSet();
    SqlCommand cmd;
    SqlDataReader dr;
    int no;
    int rowcnt;
    int cnt;
    int id;
    int strid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        con = new Dbconn();
        //conn = new SqlConnection(con.conn.ToString());
        conn = new SqlConnection("Data Source=.;Initial Catalog=fault;Integrated Security=True".ToString());
        conn.Open();
        
        //ddlproj.DataSource = ds.Tables ["ee"];
        //ddlassignto.DataTextField = "project_name";
        //ddlassignto.DataValueField = "project_id";
        //ddlproj.DataBind();

        status();
        priority();
        
            project();
            strid = Convert.ToInt32(Session["id"].ToString());
            da = new SqlDataAdapter("select tester_name from tester where tester_id='" + strid + "'", conn);
            da.Fill(ds, "test");
            lblassignedby.Text = ds.Tables["test"].Rows[0][0].ToString();
        }  
    }
    void status()
    {
        da = new SqlDataAdapter("select * from statuses", conn);
        da.Fill(ds, "st");
        ddlstatus.DataSource = ds.Tables["st"];
        ddlstatus.DataTextField = "status";
        ddlstatus.DataValueField = "status_id";
        ddlstatus.DataBind();
      //  ddlstatus.Items.Insert(0, "--Select--");
    }
    void priority()
    {
        da = new SqlDataAdapter("select * from priorities", conn);
        da.Fill(ds, "pr");
        ddlprio.DataSource = ds.Tables["pr"];
        ddlprio.DataTextField = "priority_id";
        ddlprio.DataValueField = "priority_desc";
        ddlprio.DataBind();
   //  ddlprio.Items.Insert(0, "--Select--");
    }
    void project()
    {
        da = new SqlDataAdapter("select * from projects", conn);
        da.Fill(ds, "pp");
        ddlproj.DataSource = ds.Tables["pp"];
        ddlproj.DataTextField = "project_name";
        ddlproj.DataValueField = "project_id";
        ddlproj.DataBind();
    //   ddlproj.Items.Insert(0, "--Select--");
    }
  //  void assign()
  //  {
  //      ddlassignto.Items.Clear();
  //  da = new SqlDataAdapter("select * from assignto where assignby_id='"+ddlproj.SelectedValue+"'",conn);
  //  da.Fill(ds, "aa");
  //  ddlassignto.DataSource = ds.Tables["aa"];
  //  ddlassignto.DataTextField = "employee_name";
  //  ddlassignto.DataValueField = "employee_id";
  //  ddlassignto.DataBind();
  ////  ddlassignto.Items.Insert(0, "--Select--");
  //  }
    void id1()
    {
        try
        {
            con = new Dbconn();
            conn = new SqlConnection(con.conn.ToString());
            conn.Open();
            cmd = new SqlCommand("select count(*) from bugs", conn);
            dr = cmd.ExecuteReader();
            dr.Read();
            rowcnt = int.Parse(dr[0].ToString());
            dr.Close();
            if (rowcnt > 0)
            {
                cmd = new SqlCommand("select max(bug_id) from bugs", conn);
                dr = cmd.ExecuteReader();
                dr.Read();
                int i = int.Parse(dr[0].ToString());
                dr.Close();
                no = i + 1;

            }
            else
            {
                no = 1;
            }
          //  lblid.Text = no.ToString();
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message;
        }
        finally
        {
            conn.Close();
        }
    }
    protected void btninsert_Click(object sender, EventArgs e)
    {
        id1();
     conn = new SqlConnection("Data Source=.;Initial Catalog=fault;Integrated Security=True".ToString());
        conn.Open();
//DateTime dt = Convert.ToDateTime(txtassigndate.Text);
//DateTime dt1 = Convert.ToDateTime(txtdateresolve.Text);
        //da=new SqlDataAdapter("select * from tester where tester_id='"+id+"'",conn);
        //da.Fill(ds,"tid");
        //string name =ds.Tables["tid"].Rows[0][1].ToString();
        strid = Convert.ToInt32(Session["id"].ToString());

        //da = new SqlDataAdapter("select tester_name from tester where tester_id='" + strid + "'", conn);
        //da.Fill(ds, "test");
        SqlCommand cmd = new SqlCommand("select tester_name from tester where tester_id='" + strid + "'", conn);
        if (conn.State == ConnectionState.Open) conn.Close();
        conn.Open();
        string name = cmd.ExecuteScalar().ToString();
       // da = new SqlDataAdapter("insert into bugs values('"+int.Parse(no.ToString())+"','"+ddlprio.SelectedValue.ToString()+"','"+ddlprio.SelectedValue.ToString()+"','"+ddlstatus.SelectedValue.ToString()+"','"+txtbugname.Text+"','"+txtbugdesc.Text+"','"+txtresolution.Text+"','"+ddlproj.SelectedValue.ToString()+"','"+DateTime.Parse(txtassigndate.Text.ToString())+"','"+DateTime.Parse(txtdateresolve.Text.ToString())+"','"+name+"','"+strid+"')", conn);
        da = new SqlDataAdapter("insert into bugs(bug_id,project_id,priority_id,status_id,bug_name,bug_desc,resolution,assigned_by,assigned_to,date_assigned,date_resolved,testedby,testedby_id) values('" + int.Parse(no.ToString()) + "','" + ddlproj.SelectedValue.ToString() + "','" +Convert.ToInt32(ViewState ["proior"] .ToString())+ "','" + ddlstatus.SelectedValue.ToString() + "','" + txtbugname.Text + "','" + txtbugdesc.Text + "','" + txtresolution.Text + "','" + name + "','','" + DateTime.Parse(txtassigndate.Text.ToString()) + "','" + DateTime.Parse(txtdateresolve.Text.ToString()) + "','"+name+"','" + strid + "')", conn);
        int j =da.SelectCommand.ExecuteNonQuery();
        if (j == 1)
        {
            lblmsg.Text = "Bug Inserted";
        }
        else
        {
        }
    }
    protected void btnclear_Click(object sender, EventArgs e)
    {
        id1();
       // ddlassignto.SelectedIndex = 0;
        ddlproj.SelectedIndex = 0;
        ddlproj.SelectedIndex = 0;
        ddlstatus.SelectedIndex = 0;
        txtassigndate.Text = "";
        txtbugdesc.Text = "";
        txtbugname.Text = "";
        txtdateresolve.Text = "";
        txtresolution.Text = "";
        lblassignedby.Text = "";
        lblmsg.Text = "";
       
    }
    protected void ddlproj_SelectedIndexChanged(object sender, EventArgs e)
    {

        //if (ddlproj.SelectedValue.ToString() != null)
        //{
            //project();
            //    da = new SqlDataAdapter("select * from projmger where projmger_id='" + ddlproj.SelectedValue + "'",conn);
            //    da.Fill(ds, "mm");
            //    lblassignedby.Text=ds.Tables["mm"].Rows[0][1].ToString();
            //}
           
        
    }
    protected void ddlassignto_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ddlprio_SelectedIndexChanged(object sender, EventArgs e)
    {
        ViewState["proior"] = ddlprio.SelectedItem.ToString();
    }
}
