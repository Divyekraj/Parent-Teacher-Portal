<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherMasterPage.master" AutoEventWireup="true" CodeFile="ScholarshiPageTeacher.aspx.cs" Inherits="ScholarshiPageTeacher" %>

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
  width:50%; 
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
table
{
    width:50%;
}
</style>
<br />
<br />
<div id="font">
<center>
<table>
<caption><h3>Scholarship Link</h3></caption>

<tr>
<td>
    <asp:Label ID="Label1" runat="server" Text="Date"></asp:Label>
</td>
<td>
    <asp:TextBox ID="TextBox1" runat="server" CssClass="Textbox" Height="28px" 
                placeholder="Enter Date"></asp:TextBox>
</td>
</tr>
<tr>
<td>
    <asp:Label ID="Label2" runat="server" Text="Title"></asp:Label>
</td>
<td>
    <asp:TextBox ID="TextBox2" runat="server" CssClass="Textbox" Height="28px" 
                placeholder="Enter Title"></asp:TextBox>

</td>
</tr>
<tr>
<td>
    <asp:Label ID="Label3" runat="server" Text="Attachment Link"></asp:Label>
</td>
<td>
    <asp:TextBox ID="TextBox3" runat="server" CssClass="Textbox" Height="28px" 
                placeholder="Enter Attchment Link"></asp:TextBox>

</td>
</tr>
<tr>
<td>

</td>
<td>
<asp:Button ID="Button1" runat="server" Text="Submit"  Height="37px" 
                Width="175px" CssClass="Button" />
</td>
</tr>
</table>
</center>
</div>
</asp:Content>

