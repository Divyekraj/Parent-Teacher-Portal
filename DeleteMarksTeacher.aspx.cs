using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;


public partial class DeleteMarksTeacher : System.Web.UI.Page
{
    OleDbConnection con = new OleDbConnection();
    OleDbCommand cmd;
    OleDbDataReader rs;
    OleDbDataAdapter da;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["TID"] != null)
        {
            tidno.Text = Session["TID"].ToString();
        }
        con = new OleDbConnection();
        con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\\PPTPROJECT.mdb";

    }
    protected void DeleteBut_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new OleDbCommand();
        cmd.Connection = con;
        cmd.CommandText = "Delete from marks where TID='" +tidno.Text + "' AND testno='"+DropDownList1.SelectedItem.Text+"'";
        cmd.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Record Deleted Successfully');", true);
        DropDownList1.SelectedItem.Text = " ";
       
    }
}