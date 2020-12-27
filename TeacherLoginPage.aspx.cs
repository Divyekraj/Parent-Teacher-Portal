using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb; 

public partial class TeacherLoginPage : System.Web.UI.Page
{
    OleDbConnection con = new OleDbConnection();
    OleDbCommand cmd;
    OleDbDataReader rs;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new OleDbConnection();
        con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\\PPTPROJECT.mdb";
            
    }

    protected void TeacherButton_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new OleDbCommand();
        cmd.Connection = con;
        cmd.CommandText = "select * from teacherlogin";
        rs = cmd.ExecuteReader();
        while (rs.Read())
       {
         if (rs[0].ToString()==textID.Text && rs[1].ToString() == textuser.Text && rs[2].ToString() == textypassword.Text)
            {
                Session["TID"] = textID.Text;
                Session["username"] = textuser.Text;
                Response.Redirect("TeacherHomepage.aspx");
              
            }
          
        }

       // Response.Write("wrong ");
       
     
        con.Close();


        con.Open();
        cmd = new OleDbCommand();
        cmd.Connection = con;
        cmd.CommandText = "select * from admin";
        rs = cmd.ExecuteReader();
        while (rs.Read())
        {
            if (rs[0].ToString() == textID.Text && rs[1].ToString() == textuser.Text && rs[2].ToString() == textypassword.Text)
            {
                
                Response.Redirect("AdminHomePage.aspx");

            }

        }
      
        con.Close();
        Response.Write("<script type=\"text/javascript\">alert('Wrong username or Password or ID...');</script>");
    }
}