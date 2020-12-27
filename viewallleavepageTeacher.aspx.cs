using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb; 

public partial class viewallleavepageTeacher : System.Web.UI.Page
{
    OleDbConnection con = new OleDbConnection();
    OleDbCommand cmd;
    OleDbDataReader rs;
    OleDbDataAdapter da;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["TID"] != null)
        {
            tid.Text = Session["TID"].ToString();
        }
        string A = "Accept";
        string R = "Reject";
        con = new OleDbConnection();
        con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\\PPTPROJECT.mdb";
        con.Open();
        cmd = new OleDbCommand();
        cmd.Connection = con;
        cmd.CommandText = "select  DISTINCT SID,rollno,Name,Days,Reason,Status from leave where TID='" + tid.Text + "' AND  Status='" + A + "' OR Status='" +R+ "'";
       
        da = new OleDbDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
       
        con.Close();
       
    }
}