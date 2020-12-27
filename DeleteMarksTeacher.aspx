<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherMasterPage.master" AutoEventWireup="true" CodeFile="DeleteMarksTeacher.aspx.cs" Inherits="DeleteMarksTeacher" %>

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
<br />
<br />
<div id="font">
<center>
<table>
<caption><h3>Delete Result</h3></caption>

<tr>
<td>
 <asp:Label ID="Label2" runat="server" Text="Teacher ID"></asp:Label>
</td>
<td>
 <asp:Label ID="tidno" runat="server" Text=""></asp:Label>
</td>
</tr>
<td>
    <asp:Label ID="Label1" runat="server" Text="Test No"></asp:Label>
</td>
<td>
    <asp:DropDownList ID="DropDownList1" runat="server" ValidationGroup="text">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>Test 1</asp:ListItem>
        <asp:ListItem>Test 2</asp:ListItem>
        <asp:ListItem>Test 3</asp:ListItem>
        <asp:ListItem>Test 4</asp:ListItem>
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ErrorMessage="Required Test No" ControlToValidate="DropDownList1" 
        ForeColor="Red"></asp:RequiredFieldValidator>
</td>
</tr>

<tr>
<td>
</td>
   
                
<td><asp:Button ID="DeleteBut" runat="server" Text="Delete" Height="37px" 
                Width="175px" CssClass="Button" onclick="DeleteBut_Click" />
                </td>
</tr>

</table>
  
</center>


</div>
</asp:Content>

