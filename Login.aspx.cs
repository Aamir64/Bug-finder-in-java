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
public partial class Login : System.Web.UI.Page
{
    SqlConnection conn;
    Dbconn con;
    SqlCommand cmd;
    SqlDataReader dr;
    SqlDataAdapter da;
    DataSet ds = new DataSet();
    string table;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new Dbconn();
        //conn = new SqlConnection(con.conn.ToString());
        conn = new SqlConnection("Data Source=KREST-7FD32AD07;Initial Catalog=fault;Integrated Security=True");
        conn.Open();
       table = Session["table"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        lblmsg.Text = "";
       cmd = new SqlCommand("select count(*) from "+table+" where login='"+txtlogin.Text+"' and pwd='"+txtpwd.Text+"'", conn);
       dr = cmd.ExecuteReader();
       dr.Read();
       int i = int.Parse(dr[0].ToString());
       dr.Close();
       if (i == 1)
       {         
          da = new SqlDataAdapter("select * from "+table+" where login='" + txtlogin.Text + "' and pwd='" + txtpwd.Text + "'", conn);
          da.Fill(ds, "id");
          int id = int.Parse(ds.Tables["id"].Rows[0][0].ToString());
           Session["id"] = id;
         
       
           if (table == "employees")
           {               
               Response.Redirect("~/Developer/devhome.aspx");
           }
           else if (table == "projmger")
           {
               Response.Redirect("~/projectmanager/pmhome.aspx");
           }
           else if (table == "tester")
           {
               Response.Redirect("~/tester/testerhome.aspx");
           }

       }
       else
       {
           lblmsg.Text = "Invalid Login";
       }
    }
    protected void txtpwd_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtlogin_TextChanged(object sender, EventArgs e)
    {

    }
}
