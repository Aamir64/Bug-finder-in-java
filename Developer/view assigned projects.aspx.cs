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

public partial class Developer_view_assigned_projects : System.Web.UI.Page
{
    //Dbconn con;
    SqlConnection conn;
    SqlDataAdapter da;
    DataSet ds = new DataSet();
    //SqlCommand cmd;
    //SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection("Data Source=.;Initial Catalog=fault;Integrated Security=True".ToString());
        conn.Open();
        int strid = Convert.ToInt32(Session["id"].ToString());
        da = new SqlDataAdapter("select distinct (project_id),project_name from assignto where employee_id='" + strid + "'", conn);
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
 