using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
public partial class ParentTeacherMeetingTeacherPage : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand cmd;
    OleDbDataReader rs;
    OleDbDataAdapter da;
    string str;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["TID"] != null)
        {
            Tidno.Text = Session["TID"].ToString();
        }
        con = new OleDbConnection();
        con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\\PPTPROJECT.mdb";


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();

        str = "insert into meeting values('" + Tidno.Text + "','" + venue.Text + "','" + date.Text + "','" + message.Text + "')";
        cmd = new OleDbCommand(str, con);
        cmd.ExecuteNonQuery();
        con.Close();
      //  Response.Redirect(Request.Url.AbsoluteUri);
       
        ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Record Inserted Successfully');", true);
        date.Text = " ";
        venue.Text = " ";
        message.Text = " ";

    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        date.Text = Calendar1.SelectedDate.ToShortDateString();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new OleDbCommand();
        cmd.Connection = con;
        cmd.CommandText = "select * from meeting where TID='" + Tidno.Text + "'";
        da = new OleDbDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();
    }
}