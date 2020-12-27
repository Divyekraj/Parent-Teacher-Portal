using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb; 


public partial class PasswordForgotStudent : System.Web.UI.Page
{
    OleDbConnection con = new OleDbConnection();
    OleDbCommand cmd;
    OleDbDataReader rs;
   
    protected void Page_Load(object sender, EventArgs e)
    {

        con = new OleDbConnection();
        con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\\PPTPROJECT.mdb";
     
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new OleDbCommand();
        cmd.Connection = con;
        cmd.CommandText = "select * from studentlogin";
        rs = cmd.ExecuteReader();
        while (rs.Read())
        {
            if (rs[0].ToString() == studentid.Text && rs[4].ToString() == username.Text)
            {
                password.Text = rs[5].ToString();
                break;
            }
         /*   if (rs[0].ToString() != studentid.Text && rs[4].ToString() != username.Text)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Wrong User Id or Name');", true);
            }*/
        }
        con.Close();
    }
}