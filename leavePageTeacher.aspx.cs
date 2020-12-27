using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb; 

public partial class leavePageTeacher : System.Web.UI.Page
{

    OleDbConnection con = new OleDbConnection();
    OleDbCommand cmd;
    OleDbDataReader rs;
    OleDbDataAdapter da;
    string p = "Pending";
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["TID"] != null)
        {
            tid.Text = Session["TID"].ToString();
        }
        con = new OleDbConnection();
        con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\\PPTPROJECT.mdb";
        con.Open();
        cmd = new OleDbCommand();
        cmd.Connection = con;
        cmd.CommandText = "select  DISTINCT SID,rollno,Name,Days,Reason,Status from leave where TID='" + tid.Text + "' AND Status='" + p + "'";
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
        cmd.CommandText = "select * from leave WHERE SID='" + stuid.Text + "'";
        rs = cmd.ExecuteReader();
        while (rs.Read())
        {
            if (rs[1].ToString() == stuid.Text && rs[6].ToString()=="Pending")
            {
                rollno.Text = rs.GetValue(2).ToString();
                status.Text = rs.GetValue(6).ToString();
                daysstr.Text = rs.GetValue(4).ToString();
                reasonstr.Text = rs.GetValue(5).ToString();
                
            }
        }
        con.Close();
    }
    protected void accept_Click(object sender, EventArgs e)
    {
        if (status.Text == "")
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Click on Search');", true);
        }
        else
        {
            statusdisplay.Text = "Accept";
            con.Open();
            cmd = new OleDbCommand();
            cmd.Connection = con;
            cmd.CommandText = "update leave SET Status='" + statusdisplay.Text + "' WHERE SID='" + stuid.Text + "' AND Days=" + daysstr.Text + " AND Reason='" + reasonstr.Text + "'";
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect(Request.Url.AbsoluteUri);
            stuid.Text = " ";
            rollno.Text = " ";
            status.Text = " ";
            ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Record Successfully');", true);
        }
    }
    protected void reaject_Click(object sender, EventArgs e)
    {
        if (status.Text == "")
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Click on Search');", true);
        }
        else
        {
            statusdisplay1.Text = "Reject";
            con.Open();
            cmd = new OleDbCommand();
            cmd.Connection = con;
            cmd.CommandText = "update leave SET Status='" + statusdisplay1.Text + "' WHERE SID='" + stuid.Text + "' AND Days=" + daysstr.Text + " AND Reason='" + reasonstr.Text + "'";
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect(Request.Url.AbsoluteUri);
            stuid.Text = " ";
            rollno.Text = " ";
            status.Text = " ";
            ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Record Successfully');", true);
        }
    }
   
    
   
  
}