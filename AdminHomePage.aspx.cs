using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminHomePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void viewsatff_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminviewStaffPage.aspx");
    }
    protected void viewstudnet_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewStudentAdminPage.aspx");
    }
    protected void viewnotice_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminViewNoticePage.aspx");
    }
    protected void viewleave_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminLeavePage.aspx");
    }
    protected void viewcomplaint_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminComplaintPage.aspx");
    }
    protected void viewmeeting_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminMeetingPage.aspx");

    }
}