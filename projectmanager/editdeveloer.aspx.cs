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
public partial class projectmanager_editdeveloer : System.Web.UI.Page
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
        if (this.IsPostBack == false)
        {
            griddetails();
        }
    }
    void griddetails()
    {
        da = new SqlDataAdapter("select * from employees", conn);
        da.Fill(ds, "details");
        GridView1.DataSource = ds.Tables["details"];
        GridView1.DataBind();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        griddetails();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label id = new Label();
        id = (Label)GridView1.Rows[e.RowIndex].Cells[2].FindControl("lblcid");
        da = new SqlDataAdapter("delete employees where employee_id='" + int.Parse(id.Text) + "'", conn);
        da.SelectCommand.ExecuteNonQuery();
        griddetails();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        griddetails();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        griddetails();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Label id = new Label();
        TextBox name = new TextBox();
        TextBox phno = new TextBox();
        TextBox email = new TextBox();
        TextBox login = new TextBox();
        id = (Label)GridView1.Rows[e.RowIndex].Cells[2].FindControl("lblid");
        name=(TextBox)GridView1.Rows[e.RowIndex].Cells[3].FindControl("txtname");
        phno =(TextBox)GridView1.Rows[e.RowIndex].Cells[4].FindControl("txtphno");
        email=(TextBox)GridView1.Rows[e.RowIndex].Cells[5].FindControl("txtemail");
        login=(TextBox)GridView1.Rows[e.RowIndex].Cells[7].FindControl("txtlogin");
        da = new SqlDataAdapter("update employees set employee_name='" + name.Text + "',phoneno='" + phno.Text + "',email='" + email.Text + "',login='" + login.Text + "' where employee_id='" + id.Text + "'", conn);
        da.SelectCommand.ExecuteNonQuery();
        griddetails();
    }
}
