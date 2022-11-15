using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Dbconn
/// </summary>
public class Dbconn
{
    string cont;
	public Dbconn()
	{
		//
		// TODO: Add constructor logic here
        cont = "Data Source=.;Initial Catalog=fault;Integrated Security=True";
		//
	}
    public string conn
    {
        get
        {
            return cont;
        }
        set
        {
        }
    }
}
