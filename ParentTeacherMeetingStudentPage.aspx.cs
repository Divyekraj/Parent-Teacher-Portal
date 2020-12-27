using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class ParentTeacherMeetingStudentPage : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand cmd;
    OleDbDataReader rs;
    OleDbDataAdapter da;
    string str;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["SID"] != null)
        {
            sid.Text = Session["SID"].ToString();
        }
        con = new OleDbConnection();
        con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\\PPTPROJECT.mdb";
        con.Open();
        cmd = new OleDbCommand();
        cmd.Connection = con;
       
        cmd.CommandText = "select * from studentlogin WHERE SID=" + sid.Text+"";

        rs = cmd.ExecuteReader();

        while (rs.Read())
        {
            if (rs[0].ToString() == sid.Text)
            {
                tid.Text = rs.GetValue(1).ToString();
            }
        }
        con.Close();


        con.Open();
        cmd = new OleDbCommand();
        cmd.Connection = con;
        cmd.CommandText = "select * from meeting where TID='" + tid.Text+ "'";
        da = new OleDbDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();
    }
}