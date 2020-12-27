using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb; 

public partial class UpdateInfoTeacher : System.Web.UI.Page
{
    OleDbConnection con = new OleDbConnection();
    OleDbCommand cmd;
    OleDbDataReader rs;
    string str = null;
    string b;
    string strr;
    string path;
  
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["TID"] != null)
        {
            tid.Text = Session["TID"].ToString();
        }
        if (Session["TID"] != null)
        {
            Tidnumber.Text = Session["TID"].ToString();
        }
        con = new OleDbConnection();
        con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\\PPTPROJECT.mdb";
       /* con.Open();
        cmd = new OleDbCommand();
        cmd.Connection = con;
       // int a = Convert.ToInt32(tid.Text);
        cmd.CommandText = "select * from teacherinfo WHERE TID='" + tid.Text + "'";

        rs = cmd.ExecuteReader();

        while (rs.Read())
        {
            if (rs[0].ToString() == tid.Text)
            {
               // tidlabel.Text = rs.GetValue(0).ToString();
                firstname.Text = rs.GetValue(1).ToString();
                middlename.Text = rs.GetValue(2).ToString();
                lastname.Text = rs.GetValue(3).ToString();
                dob.Text = rs.GetValue(4).ToString();
                DropDownList1.SelectedItem.Text = rs.GetValue(5).ToString();
                mobno.Text = rs.GetValue(6).ToString();
                Address.Text = rs.GetValue(7).ToString();
                DropDownList2.SelectedItem.Text = rs.GetValue(8).ToString();
                qualification.Text = rs.GetValue(9).ToString();
               

               

            }
        }
        con.Close();*/
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
            con.Open();
            str = "select count(*)from teacherinfo where TID='" +tid.Text+ "'";
            cmd = new OleDbCommand (str, con);
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            if (count > 0)
            {
               // Response.Write("Sorry! you can't take this TID");
                Response.Write("<script type=\"text/javascript\">alert('Sorry! you can't take this TID');</script>");
            }
            else
            {
              
                 
                con.Open();
                 strr = FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath(".") + "//photos//" + strr);
                 path = "~//photos//" + strr.ToString();
                
               
                //str = "insert into employee(ename,eaddress) values('" + txtUserName.Text + "','" + txtUserAddress.Text + "')";
                 str = "insert into teacherinfo values('" + tid.Text + "','" + firstname.Text + "','" + middlename.Text + "','" + lastname.Text + "','" + day.SelectedItem.Text + "','" + month.SelectedItem.Text + "','" + year.SelectedItem.Text + "','" + DropDownList1.SelectedItem.Text + "'," + mobno.Text + ",'" + Address.Text + "','" + DropDownList2.SelectedItem.Text + "','" + qualification.Text + "','" + path + "')";
                cmd = new OleDbCommand(str, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }
           


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
      //  if(firstname.Text =="" && middlename.Text==" " && lastname.Text==" " && dob.Text==" " && DropDownList1.SelectedItem.Text==" " && mobno.Text==" " && Address.Text==" " && DropDownList2.SelectedItem.Text==" " && qualification.Text==" ")
        if (Tidnumber.Text == "")
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Click On Search');", true);

        }
        if (firstname.Text == "")
        {
             ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Click On Search');", true);
        
        }
        if (middlename.Text == "")
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Click On Search');", true);

        }
        if (lastname.Text == "")
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Click On Search');", true);

        }
     /*   if (dob.Text == "")
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Click On Search');", true);

        }*/
        if (DropDownList1.SelectedItem.Text == "")
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Click On Search');", true);

        }
        if (mobno.Text == "")
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Click On Search');", true);

        }
        if (Address.Text == "")
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Click On Search');", true);

        }
        if (DropDownList2.SelectedItem.Text == "")
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Click On Search');", true);

        }
        if (qualification.Text == "")
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Click On Search');", true);

        }
     
        else
        {
            
           
            con.Open();
            cmd = new OleDbCommand();
            cmd.Connection = con;
            cmd.CommandText = "update teacherinfo SET firstname='" + firstname.Text + "', middlename='" + middlename.Text + "',lastname='" + lastname.Text + "',d='" + day.SelectedItem.Text + "',m='" + month.SelectedItem.Text + "',y='" + year.SelectedItem.Text + "',gender='" + DropDownList1.SelectedItem.Text + "',modno=" + mobno.Text + ",address='" + Address.Text + "',blood_group='" + DropDownList2.SelectedItem.Text + "',qualification='" + qualification.Text + "' WHERE TID='" + Tidnumber.Text + "'";
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
            ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Record Update Successfully');", true);
        }

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
         con.Open();
        cmd = new OleDbCommand();
        cmd.Connection = con;
       // int a = Convert.ToInt32(tid.Text);
        cmd.CommandText = "select * from teacherinfo WHERE TID='" + Tidnumber.Text + "'";

        rs = cmd.ExecuteReader();

        while (rs.Read())
        {
            if (rs[0].ToString() == tid.Text)
            {
               // tidlabel.Text = rs.GetValue(0).ToString();
                firstname.Text = rs.GetValue(1).ToString();
                middlename.Text = rs.GetValue(2).ToString();
                lastname.Text = rs.GetValue(3).ToString();
                day.Text = rs.GetValue(4).ToString();
                month.Text = rs.GetValue(5).ToString();
                year.Text = rs.GetValue(6).ToString();   
                DropDownList1.SelectedItem.Text = rs.GetValue(7).ToString();
                mobno.Text = rs.GetValue(8).ToString();
                Address.Text = rs.GetValue(9).ToString();
                DropDownList2.SelectedItem.Text = rs.GetValue(10).ToString();
                qualification.Text = rs.GetValue(11).ToString();
                          

            }
        }
        con.Close();

    }
}