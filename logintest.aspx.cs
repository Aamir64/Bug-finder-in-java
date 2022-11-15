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
public partial class logintest : System.Web.UI.Page
{
    SqlConnection conn;
    Dbconn con;
    string table;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new Dbconn();
        //conn = new SqlConnection(con.conn.ToString());
        conn = new SqlConnection("Data Source=. ;Initial Catalog=fault;Integrated Security=True".ToString());
        conn.Open();
    }
    protected void lnktest_Click(object sender, EventArgs e)
    {
        table = "tester";
        Session["table"] = table;
        Response.Redirect("~/Login.aspx");
    }
}
