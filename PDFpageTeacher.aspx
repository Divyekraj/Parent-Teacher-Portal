<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherMasterPage.master" AutoEventWireup="true" CodeFile="PDFpageTeacher.aspx.cs" Inherits="PDFpageTeacher" %>

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
<asp:Label ID="tid" runat="server" Text="Label" Visible="False"></asp:Label>
<br />
<br />
<div id="font">
<center>
<table>
<caption><h3>PDF</h3></caption>
<tr>
<td>
 <asp:Label ID="Label4" runat="server" Text="TID"></asp:Label>
</td>
<td>
  <asp:Label ID="tidno" runat="server" Text=""></asp:Label>
</td>
</tr>
<tr>
<td>
    <asp:Label ID="Label1" runat="server" Text="Date"></asp:Label>
</td>
<td>
    <asp:TextBox ID="date" runat="server" CssClass="Textbox" Height="28px" 
                placeholder="Enter Date"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ErrorMessage="Required Date" ForeColor="Red" ControlToValidate="date"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td>
  
</td>
<td>
  <asp:Calendar ID="Calendar1" runat="server" 
        onselectionchanged="Calendar1_SelectionChanged"></asp:Calendar>
</td>

</tr>
<tr>
<td>
    <asp:Label ID="Label2" runat="server" Text="Suject"></asp:Label>
</td>
<td>
    <asp:TextBox ID="subject" runat="server" CssClass="Textbox" Height="28px" 
                placeholder="Enter Subject"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ErrorMessage="Required Subject" ForeColor="Red" 
        ControlToValidate="subject"></asp:RequiredFieldValidator>

</td>
</tr>
<tr>
<td>
    <asp:Label ID="Label3" runat="server" Text="Attachment File"></asp:Label>
</td>
<td>
  <asp:FileUpload ID="FileUpload1" runat="server" />
  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ErrorMessage="Required Attachment File" ForeColor="Red" 
        ControlToValidate="FileUpload1"></asp:RequiredFieldValidator>
  

</td>
</tr>
<tr>
<td>
    &nbsp;</td>
<td>
<asp:Button ID="Button1" runat="server" Text="Submit"  Height="37px" 
                Width="175px" CssClass="Button" onclick="Button1_Click" />
</td>
</tr>
</table>
</center>
</div>
</asp:Content>

