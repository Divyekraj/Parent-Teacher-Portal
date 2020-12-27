using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;



public partial class MarksSectionTeacher : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand cmd;
    OleDbDataReader rs;
    string str = null;
    int a, b, c, d;
    int totalmarks;
    float percentage;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["TID"] != null)
        {
            tid.Text = Session["TID"].ToString();
        }
        con = new OleDbConnection();
        con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\\PPTPROJECT.mdb";
    }
    

    protected void  sid_TextChanged(object sender, EventArgs e)
    {
         
        /*con.Open();
        str = "select count(*)from studentlogin where SID='" + Sid.Text + "'";
        cmd = new OleDbCommand(str, con);
        int count = Convert.ToInt32(cmd.ExecuteScalar());
        con.Close();
        if (count > 0)
        {
            //Response.Write("Sorry! you can't take this SID");
            //Response.Write("<script type=\"text/javascript\">alert('Sorry! you can't take this TID');</script>");
        }
        else
        {

            con.Open();

            str = "insert into studentlogin values('" + tid.Text + "','" + DropDownList1.SelectedItem.Text + "','" + Sid.Text + "'," + rollno.Text + ",'" + username.Text + "','" + password.Text + "')";
            cmd = new OleDbCommand(str, con);
            cmd.ExecuteNonQuery();
            con.Close();

        }*/
        

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
            if (rs[1].ToString() == tid.Text && rs[3].ToString() == rollno.Text)
            {
                sid.Text = rs.GetValue(0).ToString();
                break;

            }

           /* if (rs[1].ToString() != tid.Text && rs[3].ToString() != rollno.Text)
            
            {
               ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Roll No Not Available in This Class');", true);
            }*/
           
        }
       
            

       
        con.Close();
       
        
   }
    protected void submit_Click(object sender, EventArgs e)
    {
        float p = 1.2f;
       
        totalmarks = a + b + c + d;
       
     
        percentage = totalmarks/p;

        con.Open();
        cmd = new OleDbCommand();
        cmd.Connection = con;
        cmd.CommandText = "insert into marks values('" + tid.Text + "','"+DropDownList1.SelectedItem.Text+"'," + rollno.Text + "," + sid.Text + "," +a+ "," + b + "," +c + "," + d + "," + totalmarks+ "," +percentage + ")";
        cmd.ExecuteNonQuery();
        con.Close();
        rollno.Text = " ";
        sid.Text = " ";
        sub1.Text = " ";
        sub2.Text = " ";
        sub3.Text = " ";
        sub4.Text = " ";
        Response.Redirect(Request.Url.AbsoluteUri);
        ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Record Inserted Successfully');", true);
       

    }
    
    protected void sub1_TextChanged(object sender, EventArgs e)
    {
        a =Convert.ToInt32( sub1.Text);
    }
    protected void sub2_TextChanged(object sender, EventArgs e)
    {
        b = Convert.ToInt32(sub2.Text);
    }
    protected void sub3_TextChanged(object sender, EventArgs e)
    {
        c = Convert.ToInt32(sub3.Text);
    }
    protected void sub4_TextChanged(object sender, EventArgs e)
    {
        d = Convert.ToInt32(sub4.Text);
    }
   
}