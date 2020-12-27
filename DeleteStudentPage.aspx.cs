using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class DeleteStudentPage : System.Web.UI.Page
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
        con = new OleDbConnection();
        con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\\PPTPROJECT.mdb";
       
      

    }
    protected void Searchbut_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new OleDbCommand();
        cmd.Connection = con;
   
        cmd.CommandText = "select * from studentlogin WHERE TID='" + tid.Text + "'";

        rs = cmd.ExecuteReader();

        while (rs.Read())
        {
            if (rs[3].ToString() == rollno.Text)
            {
               
                sid.Text = rs.GetValue(0).ToString();
                username.Text = rs.GetValue(4).ToString();
          
            }
        }
        con.Close();

    }
    protected void DeleteBut_Click(object sender, EventArgs e)
    {
        if (username.Text == "")
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Click on Search');", true);
        }
        else
        {
            con.Open();
            cmd = new OleDbCommand();
            cmd.Connection = con;
            cmd.CommandText = "Delete from studentlogin where SID=" + sid.Text + "";
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Record Deleted Successfully');", true);

            rollno.Text = " ";
            sid.Text = " ";
            username.Text = " ";
        }
    }
}