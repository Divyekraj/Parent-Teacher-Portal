using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb; 


public partial class StudentLoginPage : System.Web.UI.Page
{
    OleDbConnection con = new OleDbConnection();
    OleDbCommand cmd;
    OleDbDataReader rs;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new OleDbConnection();
        con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\\PPTPROJECT.mdb";
            
    }
    protected void StudentLoginButton_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new OleDbCommand();
        cmd.Connection = con;
        cmd.CommandText = "select * from studentlogin";
        rs = cmd.ExecuteReader();
        while (rs.Read())
        {
            if (rs[0].ToString() == sid.Text && rs[4].ToString() == username.Text && rs[5].ToString() == password.Text)
            {
                Session["SID"] = sid.Text;
                Session["username"] = username.Text;
                Response.Redirect("StudentHomePage.aspx");
            }
        }
        ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Wrong Id or Username or Password...');", true);
        con.Close();
    }
}