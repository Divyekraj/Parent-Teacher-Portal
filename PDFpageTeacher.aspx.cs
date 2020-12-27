using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;


public partial class PDFpageTeacher : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand cmd;
    OleDbDataReader rs;
    OleDbDataAdapter da;
    string str;
    string path;
    string strr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["TID"] != null)
        {
            tidno.Text = Session["TID"].ToString();
        }
        con = new OleDbConnection();
        con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\\PPTPROJECT.mdb";

    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        date.Text = Calendar1.SelectedDate.ToShortDateString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       // string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
        strr = FileUpload1.FileName;
        FileUpload1.PostedFile.SaveAs(Server.MapPath(".") + "//pdf//" + strr);
        path = "~//pdf//" + strr.ToString();
       // FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Uploads/") + fileName);
        con.Open();

        str = "insert into pdf values('" + tidno.Text + "','" + date.Text + "','" +subject.Text + "','"+path+"')";
        cmd = new OleDbCommand(str, con);
        cmd.ExecuteNonQuery();
        con.Close();
       // Response.Redirect(Request.Url.AbsoluteUri);
        date.Text = " ";
        subject.Text = " ";

        ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Record Inserted Successfully');", true);
        con.Close();
    }
    
}