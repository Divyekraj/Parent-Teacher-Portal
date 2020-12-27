using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;


public partial class AddStudentPage : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand cmd;
    OleDbDataReader rs;
    string str = null;
    int c;


    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["TID"] != null)
        {
            tid.Text = Session["TID"].ToString();
        }
        con = new OleDbConnection();
        con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\\PPTPROJECT.mdb";
        
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
      
       // string abc="this SID already Used";
        con.Open();
        str = "select count(*)from studentlogin where SID=" + Sid.Text + " ";
        cmd = new OleDbCommand(str, con);
        int count = Convert.ToInt32(cmd.ExecuteScalar());
        con.Close();
        if (rollno.Text == "")
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Plz Enter Roll No');", true);
        }
        else if (count > 0)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('This SID Already Used');", true);
          //  Sid.Text = abc.ToString();
         // rollnowaring.Text="Sorry! you can't take this T"
           //  Response.Write("Sorry! you can't take this roll no");
           // Response.Write("<script type=\"text/javascript\">alert('Sorry! you can't take this TID');</script>");
         //  ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Sorry! you can't take this Roll No');", true);

        }
        
        else
        {
             
               con.Open();

            str = "insert into studentlogin values(" + Sid.Text + ",'" + tid.Text + "','" + DropDownList1.SelectedItem.Text+ "'," + rollno.Text + ",'" + username.Text + "','" + password.Text + "')";
            cmd = new OleDbCommand(str, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Sid.Text = " ";
            rollno.Text = " ";
            username.Text = " ";
            password.Text = " ";
            conformpassword.Text = " ";
            ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Record Inserted Successfully');", true);

        }
       

        
    }



    protected void getid_Click(object sender, EventArgs e)
    {
//int c;
       con.Open();
         cmd = new OleDbCommand("select MAX(SID) from studentlogin", con);
        rs = cmd.ExecuteReader();
        if (rs.Read())
        {
            //int m = 1;
            string val = rs[0].ToString();
           // string val="";
            if (val=="")
            {
                Sid.Text = "1";
            }
            else
            {
                c = Convert.ToInt32(rs[0].ToString());
                c = c + 1;
                Sid.Text = c.ToString();
            }
        }
        //Sid.Text = c.ToString();
        con.Close();

     
    }
  
}