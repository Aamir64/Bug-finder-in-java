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
public partial class projectmanager_Projectdetalis : System.Web.UI.Page
{
    Dbconn con;
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader dr;
    SqlDataAdapter da;
    DataSet ds = new DataSet();
    int no;
    int rowcnt;
    int cnt;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new Dbconn();
        //conn = new SqlConnection(con.conn.ToString());
        conn = new SqlConnection("Data Source=.;Initial Catalog=fault;Integrated Security=True".ToString());
        conn.Open();
        id();
        proj();
    }
    void id()
    {
        try
        {
            con = new Dbconn();
            //conn = new SqlConnection(con.conn.ToString());
            conn = new SqlConnection("Data Source=.;Initial Catalog=fault;Integrated Security=True".ToString());
            conn.Open();
            cmd = new SqlCommand("select count(*) from projects", conn);
            dr = cmd.ExecuteReader();
            dr.Read();
            rowcnt = int.Parse(dr[0].ToString());
            dr.Close();
            if (rowcnt > 0)
            {
                cmd = new SqlCommand("select max(project_id) from projects", conn);
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
            lblid.Text = no.ToString();
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
    void proj()
    {
        da = new SqlDataAdapter("select * from projmger", conn);
        //da.Fill(ds, "details");
        da.Fill(ds, "projects");
        //ddlproj.DataSource = ds.Tables["details"];
        ddlproj.DataSource = ds.Tables["projects"];
        ddlproj.DataTextField = "projmger_name";
        ddlproj.DataValueField = "projmger_id";
        ddlproj.DataBind();
      // ddlproj.Items.Insert(0, "--Select--");
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        conn.Open();
        da = new SqlDataAdapter("insert into projects values('"+no+"','"+txtproj.Text+"','"+ddlproj.SelectedValue.ToString()+"')", conn);
        int i= da.SelectCommand.ExecuteNonQuery();
        if (i == 1)
        {
            lblmsg.Text = "Record Updated";
        }
        else
        {
            lblmsg.Text = "Record not Updated";
        }
    }
    protected void btnclear_Click(object sender, EventArgs e)
    {
        lblmsg.Text = "";
        lblid.Text = "";
        txtproj.Text = "";
        ddlproj.SelectedIndex = 0;
    }
  
}
