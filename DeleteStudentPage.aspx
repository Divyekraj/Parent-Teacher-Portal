<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherMasterPage.master" AutoEventWireup="true" CodeFile="DeleteStudentPage.aspx.cs" Inherits="DeleteStudentPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TeacherMaster" Runat="Server">
    <style>

.Textbox
{
    
    background-color:#e0e0d1;
     border-color:#c2c2a3;
     font-size:13px;
      
}
.Button
{
    background:#252C34;
    color:#fff;
    font-size:22px;
    font-family:Calibri;
    padding:5px 30px;
    border:none;
    
}
.Button:hover
{
    background:#925b08;
}
.Button:focus
{
    outline:none;
}
td
{
    color:Black;
  font-family:"Helvetica Neue",Helvetica,Arial,sans-serif;
  width:auto;
  
  
   
}
h3
{
    color:Black;
    font-weight:bold;
    text-shadow: 1px 3px 3px gray;
}
tr
{
    background-color:#ebebe0;
}
#font
{
    font-size:16px;
}
.style2
      {
          width: 200px;
      }
table
{
    width:60%;
}
.rollnowaring
{
    color:Red;
}
</style>
<asp:Label ID="tid" runat="server" Text="Label" Visible="False"></asp:Label>
<br />
<br />
<div id="font">
<center>
<table>
<caption><h3>Delete/Update Student</h3></caption>
<tr>
<td>
    <asp:Label ID="Label1" runat="server" Text="Roll No"></asp:Label>
</td>
<td>
    <asp:TextBox ID="rollno" runat="server" CssClass="Textbox" Height="28px" placeholder="Enter Student ID"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ErrorMessage="Required Roll No" ControlToValidate="rollno" ForeColor="Red"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td>
 <asp:Label ID="Label2" runat="server" Text="Student ID"></asp:Label>
</td>
<td>
 <asp:Label ID="sid" runat="server" Text=""></asp:Label>
</td>
</tr>
<tr>
<td>
<asp:Label ID="Label3" runat="server" Text="User Name"></asp:Label>
</td>
<td>
 <asp:Label ID="username" runat="server" Text=""></asp:Label>
</td>
</tr>
<tr>
<td><asp:Button ID="DeleteBut" runat="server" Text="Delete" Height="37px" 
                Width="175px" CssClass="Button" onclick="DeleteBut_Click" />
   
                </td>
<td>

                 <asp:Button ID="Searchbut" runat="server" Text="Search" Height="37px" 
                Width="175px" CssClass="Button" onclick="Searchbut_Click" />
                </td>


               
</tr>

</table>
  
</center>


</div>

</asp:Content>

 