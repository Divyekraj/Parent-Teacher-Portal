using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb; 


public partial class PasswordForgotTeacher : System.Web.UI.Page
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
        cmd.CommandText = "select * from teacherlogin";
        rs = cmd.ExecuteReader();
        while (rs.Read())
        {
            if (rs[1].ToString() == username.Text && rs[4].ToString() == DropDownList1.SelectedItem.Text && rs[5].ToString() == answer.Text)
            {
                password.Text = rs[2].ToString();
              
                break;
                //continue;
            }

              // if (rs[1].ToString() != username.Text && rs[4].ToString() != answer.Text)
       /*    else
              {
                   message.Text = "Wrong User Id or Answer";
                   // Response.Redirect(Request.Url.AbsoluteUri);
                    // break;
                    //ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Wrong User Id or Answer');", true);
                }
            

            // else*/
            
           
        }
        con.Close();
    }
}