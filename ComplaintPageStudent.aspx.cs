using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class ComplaintPageStudent : System.Web.UI.Page
{
    OleDbConnection con = new OleDbConnection();
    OleDbCommand cmd;
    OleDbDataReader rs;
    OleDbDataAdapter da;
    string str;
    string Reply = "Pending";
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["SID"] != null)
        {
            studentid.Text = Session["SID"].ToString();
        }


        con = new OleDbConnection();
        con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\\PPTPROJECT.mdb";

        con.Open();
        cmd = new OleDbCommand();
        cmd.Connection = con;
        cmd.CommandText = "select * from studentlogin";
        rs = cmd.ExecuteReader();
        while (rs.Read())
        {
            if (rs[0].ToString() == studentid.Text)
            {
                sid.Text = rs.GetValue(0).ToString();
                rollno.Text = rs.GetValue(3).ToString();
                name.Text = rs.GetValue(4).ToString();
                tid.Text = rs.GetValue(1).ToString();

            }
        }
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();

        str = "insert into complaint values('" + tid.Text + "','" + studentid.Text + "'," + rollno.Text + ",'" + name.Text + "','" + complaintabout.Text + "','" + message.Text + "','" + Reply + "')";
        cmd = new OleDbCommand(str, con);
        cmd.ExecuteNonQuery();
        con.Close();
        complaintabout.Text = " ";
        message.Text = " ";
        ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Record Successfully');", true);

    }
    protected void complaintstatusbut_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new OleDbCommand();
        cmd.Connection = con;
        cmd.CommandText = "select * from complaint where SID='" + studentid.Text + "'";
        da = new OleDbDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();
    }
}