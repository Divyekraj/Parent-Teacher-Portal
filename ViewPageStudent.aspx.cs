using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb; 

public partial class ViewPageStudent : System.Web.UI.Page
{
    OleDbConnection con = new OleDbConnection();
    OleDbCommand cmd;
    OleDbDataReader rs;
    OleDbDataAdapter da;
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
       
        cmd.CommandText = "select * from studentlogin WHERE SID=" + studentid.Text + "";

        rs = cmd.ExecuteReader();

        while (rs.Read())
        {
            if (rs[0].ToString() == studentid.Text)
            {
                Studentsid.Text = rs.GetValue(0).ToString();
                rollno.Text = rs.GetValue(3).ToString();
                usernameLabel.Text = rs.GetValue(4).ToString();
                passwordLabel.Text = rs.GetValue(5).ToString();
            }
        }
        con.Close();
        con.Open();
        cmd = new OleDbCommand();
        cmd.Connection = con;
        //int a = Convert.ToInt32(tid.Text);
        cmd.CommandText = "select * from studentinfo WHERE SID='" + studentid.Text + "'";

        rs = cmd.ExecuteReader();

        while (rs.Read())
        {
            if (rs[0].ToString() == studentid.Text)
            {
                
                firstname.Text = rs.GetValue(1).ToString();
                middlename.Text = rs.GetValue(2).ToString();
                lastname.Text = rs.GetValue(3).ToString();
                emailLabel.Text = rs.GetValue(4).ToString();
                dob.Text = rs.GetValue(5).ToString()+"/"+rs.GetValue(6).ToString()+"/"+rs.GetValue(7).ToString();
                gender.Text = rs.GetValue(8).ToString();
                mobno.Text = rs.GetValue(9).ToString();
                address.Text = rs.GetValue(10).ToString();
                bloodgroup.Text = rs.GetValue(11).ToString();
               
                //  ImageButton1.ImageUrl= rs.GetValue(10).ToString();


            }
        }
        abc.Text = firstname.Text + " " + lastname.Text;
        con.Close();





        con.Open();
        cmd = new OleDbCommand();
        cmd.Connection = con;
        //int a = Convert.ToInt32(tid.Text);
        cmd.CommandText = "select * from studentinfo WHERE SID='" + studentid.Text + "'";

        rs = cmd.ExecuteReader();
       
        while (rs.Read())
        {
            if (rs[12].ToString().Length > 1)
            {
                ImageButton1.ImageUrl = rs[12].ToString();
            }
           
        }
        con.Close();
       

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }
}