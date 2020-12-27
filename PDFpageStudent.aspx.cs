using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.OleDb; 


public partial class PDFpageStudent : System.Web.UI.Page
{
    OleDbConnection con = new OleDbConnection();
    OleDbCommand cmd;
    OleDbDataReader rs;
    OleDbDataAdapter da;
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

        cmd.CommandText = "select * from studentlogin WHERE SID=" + sid.Text + "";

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
        cmd.CommandText = "select * from pdf where TID='" + tid.Text + "'";
        da = new OleDbDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();
      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
   
    protected void DownloadFile(object sender, EventArgs e)
    {
        string filePath = (sender as LinkButton).CommandArgument;
        Response.ContentType = ContentType;
        Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
        Response.WriteFile(filePath);
        Response.End();
    }
}