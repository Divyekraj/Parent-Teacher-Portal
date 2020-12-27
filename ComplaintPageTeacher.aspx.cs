using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class ComplaintPageTeacher : System.Web.UI.Page
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
        string P = "Pending";
        con = new OleDbConnection();
        con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\\PPTPROJECT.mdb";
        con.Open();
        cmd = new OleDbCommand();
        cmd.Connection = con;
        cmd.CommandText = "select  DISTINCT SID,rollno,Name,Complaint_About,Complaint_Message,Reply from complaint where TID='" + tid.Text + "' AND Reply='"+P+"'";
        da = new OleDbDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();

    }
    protected void searchbut_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new OleDbCommand();
        cmd.Connection = con;
        cmd.CommandText = "select * from complaint WHERE SID='" + stuid.Text + "'";
        rs = cmd.ExecuteReader();
        while (rs.Read())
        {
            if (rs[1].ToString() == stuid.Text && rs[6].ToString() == "Pending")
            {
              
                rollno.Text = rs.GetValue(2).ToString();
                name.Text = rs.GetValue(3).ToString();
                complaintabout.Text = rs.GetValue(4).ToString();
                message.Text = rs.GetValue(5).ToString();
              //  reply.Text = rs.GetValue(6).ToString();
               

            }
        }
        con.Close();
    }
    protected void replybut_Click(object sender, EventArgs e)
    {
        
        con.Open();
        cmd = new OleDbCommand();
        cmd.Connection = con;
        cmd.CommandText = "update complaint SET Reply='" + reply.Text + "' WHERE SID='" + stuid.Text + "' AND Complaint_About='" + complaintabout.Text + "' AND Complaint_Message='" + message.Text + "'";
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect(Request.Url.AbsoluteUri);
        stuid.Text = " ";
        rollno.Text = " ";
        name.Text = " ";
        complaintabout.Text = " ";
        message.Text = " ";
        reply.Text = " ";
               
        ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Record Successfully');", true);
    }
}