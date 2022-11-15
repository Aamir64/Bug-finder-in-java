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
public partial class Developer_devchangepwd : System.Web.UI.Page
{
    Dbconn con;
    SqlConnection conn = new SqlConnection("Data Source=.;Initial Catalog=fault;Integrated Security=True".ToString());
    SqlCommand cmd;
    SqlDataReader dr;
    SqlDataAdapter da;
    DataSet ds = new DataSet();
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new Dbconn();
        //conn = new SqlConnection(con.conn.ToString());
        conn = new SqlConnection("Data Source=.;Initial Catalog=fault;Integrated Security=True".ToString());
        conn.Open();
       id = int.Parse(Session["id"].ToString());
       //id = 2;
        lblid.Text = id.ToString();
    }
    protected void txtoldpwd_TextChanged(object sender, EventArgs e)
    {
        cmd = new SqlCommand("select pwd from employees where employee_id='" + id + "'", conn);
        dr = cmd.ExecuteReader();
        dr.Read();
        string pwd = dr[0].ToString();
        dr.Close();
        if (txtoldpwd.Text == pwd)
        {
            lblerror.Text = "";
        }
        else
        {
            lblerror.Text = "Invalid password";
        }
        conn.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("update employees set pwd='" + txtnewpwd.Text + "' where employee_id='" + id + "'", conn);
        conn.Open();
        int i = da.SelectCommand.ExecuteNonQuery();
        if (i == 1)
        {
            lblmsg.Text = "Your Password is Updated";
        }
    }
}
