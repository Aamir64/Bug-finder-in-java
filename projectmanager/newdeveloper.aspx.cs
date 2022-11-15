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
public partial class projectmanager_newdeveloper : System.Web.UI.Page
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
    }

    void id()
    {
        try
        {
            con = new Dbconn();
            conn = new SqlConnection(con.conn.ToString());
            conn.Open();
            cmd = new SqlCommand("select count(*) from employees", conn);
            dr = cmd.ExecuteReader();
            dr.Read();
            rowcnt = int.Parse(dr[0].ToString());
            dr.Close();
            if (rowcnt > 0)
            {
                cmd = new SqlCommand("select max(employee_id) from employees", conn);
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
    protected void btnadd_Click(object sender, EventArgs e)
    {
        conn = new SqlConnection("Data Source=.;Initial Catalog=fault;Integrated Security=True".ToString());
        conn.Open();
        da = new SqlDataAdapter("insert into employees values('" + no + "','" + txtname.Text + "','" + txtphno.Text + "','" + txtdoj.Text + "','" + txtlogin.Text + "','" + txtpwd.Text + "','" + txtemail.Text + "','')", conn);
        int i = da.SelectCommand.ExecuteNonQuery();
        if (i == 1)
        {
            lblmsg.Text = "Record Inserted";
        }
        else
        {
        }
    }
    protected void btnclear_Click(object sender, EventArgs e)
    {
        lblmsg.Text = "";
        txtcpwd.Text = "";
        txtdoj.Text = "";
        txtemail.Text = "";
        txtlogin.Text = "";
        txtname.Text = "";
        txtphno.Text = "";
        txtpwd.Text = "";
        id();
    }
}
