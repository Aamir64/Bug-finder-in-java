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
public partial class tester_edittesterdetails : System.Web.UI.Page
{
    Dbconn con;
    SqlConnection conn = new SqlConnection("Data Source=.;Initial Catalog=fault;Integrated Security=True".ToString());
    SqlCommand cmd;
    SqlDataReader dr;
    SqlDataAdapter da;
    DataSet ds = new DataSet();
    int id;


    private void getdetails()
    {
        con = new Dbconn();
        //conn = new SqlConnection("Data Source=.;Initial Catalog=fault;Integrated Security=True".ToString());
        conn.Open();
        id = int.Parse(Session["id"].ToString());
        lblid.Text = id.ToString();
        cmd = new SqlCommand("select * from tester where tester_id='" + id + "'", conn);

        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        dr.Read();
        txtname.Text = dr[1].ToString();
        txtphno.Text = dr[2].ToString();
        txtdoj.Text = dr[3].ToString();
        txtemail.Text = dr[6].ToString();
        txtlogin.Text = dr[4].ToString();
        dr.Close();
        conn.Close();
    }


    protected void Page_Load(object sender, EventArgs e)
    {

        //con = new Dbconn();
        ////conn = new SqlConnection(con.conn.ToString());
        //conn = new SqlConnection("Data Source=.;Initial Catalog=fault;Integrated Security=True".ToString());
        //conn.Open();
        //id = int.Parse(Session["id"].ToString());
        //id = 2;
        //lblid.Text = id.ToString();
       // da = new SqlDataAdapter("select * from tester where tester_id='"+id+"'", conn);
       // da.Fill(ds, "ee");
       // txtname.Text = ds.Tables["ee"].Rows[0][1].ToString();
       // txtphno.Text = ds.Tables["ee"].Rows[0][2].ToString();
       // txtdoj.Text = ds.Tables["ee"].Rows[0][3].ToString();
       // txtemail.Text = ds.Tables["ee"].Rows[0][6].ToString();
       // txtlogin.Text = ds.Tables["ee"].Rows[0][4].ToString();
          if (Page.IsPostBack != true)
        {
            getdetails();
        }
    }


    
  
           
    protected void btnadd_Click(object sender, EventArgs e)
    {
        id = int.Parse(Session["id"].ToString());
        lblid.Text = id.ToString();
        con = new Dbconn();
        cmd = new SqlCommand("update tester set tester_name='" + txtname.Text + "',phoneno='" + txtphno.Text + "',doj='" + txtdoj.Text + "',login='" + txtlogin.Text + "' where tester_id='" + id + "'", conn);
        //int i = da.SelectCommand.ExecuteNonQuery();
         conn.Open();
         int i = cmd.ExecuteNonQuery();
        conn.Close();
        if (i == 1)
        {
            lblmsg.Text = "Details Updated";
        }
        else
        {
            lblmsg.Text = "Details not Updated";
        }
    }
    protected void btnclear_Click(object sender, EventArgs e)
    {

    }
}
