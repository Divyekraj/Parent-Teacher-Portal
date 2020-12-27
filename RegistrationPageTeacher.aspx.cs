using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb; 


public partial class RegistrationPageTeacher : System.Web.UI.Page
{
    OleDbConnection con=new OleDbConnection();
    OleDbCommand cmd;
    OleDbDataReader rs;
    string str;
    int c;
    protected void Page_Load(object sender, EventArgs e)
    {
          con = new OleDbConnection();
          con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\\PPTPROJECT.mdb";
          string a = "111";
          TextBox1.Text = a.ToString();
            
    
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (securityno.Text !="111")
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Wrong Security No');", true);
        }
        else
        {
            //string abc = "this SID already Used";
            con.Open();
            str = "select count(*)from teacherlogin where TID='" + ID.Text + "' ";
            cmd = new OleDbCommand(str, con);
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();

            if (count > 0)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('This ID Already Used');", true);
               // ID.Text = abc.ToString();
            }

            else
            {

                con.Open();
                cmd = new OleDbCommand();
                cmd.Connection = con;
                cmd.CommandText = "insert into teacherlogin values('" + ID.Text + "','" + username.Text + "','" + password.Text + "','" + email.Text + "','" + DropDownList1.SelectedItem.Text + "','" + answer.Text + "')";
                cmd.ExecuteNonQuery();
                Response.Redirect("TeacherLoginPage.aspx");
                con.Close();

            }
        }
           
       
       
       
    }
    protected void getid_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new OleDbCommand("select MAX(TID) from teacherlogin", con);
        rs = cmd.ExecuteReader();
        if (rs.Read())
        {
            //int m = 1;
            string val = rs[0].ToString();
            // string val="";
            if (val == "")
            {
                ID.Text = "1";
            }
            else
            {
                c = Convert.ToInt32(rs[0].ToString());
                c = c + 1;
                ID.Text = c.ToString();
            }
        }
        //Sid.Text = c.ToString();
        con.Close();
    }
}