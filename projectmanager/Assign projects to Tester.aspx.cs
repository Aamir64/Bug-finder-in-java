using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
public partial class projectmanager_Assign_projects_to_Tester : System.Web.UI.Page
{
    Dbconn con;
    SqlConnection conn;
    SqlDataAdapter da, da1;
    DataSet ds = new DataSet();
    SqlCommand cmd;
    SqlDataReader dr;
    int no;
    int rowcnt;
    int cnt;
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {

        con = new Dbconn();
        //conn = new SqlConnection(con.conn.ToString());
        conn = new SqlConnection("Data Source=.;Initial Catalog=fault;Integrated Security=True".ToString());
        conn.Open();
        if (this.IsPostBack == false)
        {
            project();
            assignto();
        }
    }
     void project()
    {
        da = new SqlDataAdapter("select * from projects", conn);
        da.Fill(ds, "pp");
        ddlproj.DataSource = ds.Tables["pp"];
        ddlproj.DataTextField = "project_name";
        ddlproj.DataValueField = "project_id";
        ddlproj.DataBind();
       // ddlproj.Items.Insert(0, "--Select--");
    }
    void assignto()
    {
        da = new SqlDataAdapter("select * from tester", conn);
        da.Fill(ds, "te");
        ddlassignto.DataSource = ds.Tables["te"];
        ddlassignto.DataTextField = "tester_name";
        ddlassignto.DataValueField = "tester_id";
        ddlassignto.DataBind();
       // ddlassignto.Items.Insert(0, "--Select--");
    }
    protected void ddlproj_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlproj.SelectedIndex != 0)
        {
            da = new SqlDataAdapter("select * from projects where project_id='" + ddlproj.SelectedValue + "'", conn);
            da.Fill(ds, "pp");
            i = int.Parse(ds.Tables["pp"].Rows[0][0].ToString());
            lblby.Text = i.ToString();
            int strid = Convert.ToInt32(Session["id"].ToString());
            da = new SqlDataAdapter("select projmger_name from projmger where projmger_id='" + strid + "'", conn);
            da.Fill(ds, "projmger");
           
           // SqlCommand cmd = new SqlCommand("Select projmger_name from projmger projmger_id='" + strid + "'", conn);
           // if (conn.State== ConnectionState.Open) conn.Close();
           // conn.Open();
           // //if(cmd.ExecuteScalar()!=DBNull.Value
           //string  str =Convert.ToString(cmd.ExecuteScalar());
            lblassignby.Text = ds.Tables["projmger"].Rows[0][0].ToString();
            
        }
    }
    void id()
    {
        try
        {
            con = new Dbconn();
            conn = new SqlConnection(con.conn.ToString());
            conn.Open();
            cmd = new SqlCommand("select count(*) from assignto", conn);
            dr = cmd.ExecuteReader();
            dr.Read();
            rowcnt = int.Parse(dr[0].ToString());
            dr.Close();
            if (rowcnt > 0)
            {
                cmd = new SqlCommand("select max(assignto_id) from assignto", conn);
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
    protected void Button1_Click(object sender, EventArgs e)
    {

        id();
        conn = new SqlConnection("Data Source=.;Initial Catalog=fault;Integrated Security=True".ToString());
        conn.Open();
        da = new SqlDataAdapter("insert into assignto values('"+no+"','"+ddlproj.SelectedValue+"','"+ddlproj.SelectedItem.Text+"','"+ddlassignto.SelectedValue+"','"+ddlassignto.SelectedItem.Text+"','"+lblassignby.Text+"','"+lblby.Text+"')", conn);
        int j = da.SelectCommand.ExecuteNonQuery();
        if (j == 1)
        {
            lblmsg.Text = "Project is assigned";
        }
        else
        {
        }
       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        ddlassignto.SelectedIndex = 0;
        ddlproj.SelectedIndex = 0;
        lblassignby.Text = "";
        lblmsg.Text = "";
    }
}



