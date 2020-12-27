<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherMasterPage.master" AutoEventWireup="true" CodeFile="MarksSectionTeacher.aspx.cs" Inherits="MarksSectionTeacher" %>

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
.style2
      {
          width: 290px;
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
<caption><h3>Marks Section</h3></caption>
<tr>
<td>
    <asp:Label ID="Label9" runat="server" Text="TID"></asp:Label>
</td>
<td>
     <asp:Label ID="tid" runat="server" Text="Label"></asp:Label>
</td>

</tr>
<tr>
<td>
    <asp:Label ID="Label5" runat="server" Text="Test No"></asp:Label>
</td>
<td>
    <asp:DropDownList ID="DropDownList1" runat="server" ValidationGroup="text">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>Test 1</asp:ListItem>
        <asp:ListItem>Test 2</asp:ListItem>
        <asp:ListItem>Test 3</asp:ListItem>
        <asp:ListItem>Test 4</asp:ListItem>
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
        ErrorMessage="Required Test No" ControlToValidate="DropDownList1" ForeColor="Red" 
        ValidationGroup="text"></asp:RequiredFieldValidator>
</td>

</tr>
<tr>
<td class="style2">
    <asp:Label ID="Label7" runat="server" Text="Roll No"></asp:Label>
</td>
<td>
    <asp:TextBox ID="rollno" runat="server" CssClass="Textbox" Height="28px" 
                placeholder="Enter Roll No" ValidationGroup="text"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ErrorMessage="Required Roll No" ControlToValidate="rollno" ForeColor="Red" 
        ValidationGroup="text"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td>
    <asp:Label ID="Label8" runat="server" Text="SID"></asp:Label>
</td>
<td>
    <asp:TextBox ID="sid" runat="server" CssClass="Textbox" Height="28px" 
                placeholder="Enter Sid" ontextchanged="sid_TextChanged" 
        ValidationGroup="text"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Get ID" onclick="Button1_Click" />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ErrorMessage="Required SID" ControlToValidate="sid" ForeColor="Red" 
        ValidationGroup="text"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td>
    <asp:Label ID="Label1" runat="server" Text="Sub1"></asp:Label>
</td>
<td>
    <asp:TextBox ID="sub1" runat="server" CssClass="Textbox" Height="28px" 
                placeholder="Enter sub1" ontextchanged="sub1_TextChanged" 
        ValidationGroup="text"></asp:TextBox>
    <asp:RangeValidator ID="RangeValidator1" runat="server" 
        ErrorMessage="Enter Marks Between(0 To 30)" ControlToValidate="sub1" 
        ForeColor="Red" MaximumValue="30" MinimumValue="0" Type="Integer" 
        ValidationGroup="text"></asp:RangeValidator>
</td>
</tr>
<tr>
<td>
    <asp:Label ID="Label2" runat="server" Text="Sub2"></asp:Label>
</td>
<td>
    <asp:TextBox ID="sub2" runat="server" CssClass="Textbox" Height="28px" 
                placeholder="Enter sub2" ontextchanged="sub2_TextChanged" 
        ValidationGroup="text"></asp:TextBox>
               <asp:RangeValidator ID="RangeValidator2" runat="server" 
        ErrorMessage="Enter Marks Between(0 To 30)" ControlToValidate="sub2" 
        ForeColor="Red" MaximumValue="30" MinimumValue="0" Type="Integer" 
        ValidationGroup="text"></asp:RangeValidator>

</td>
</tr>
<tr>
<td>
    <asp:Label ID="Label3" runat="server" Text="Sub3"></asp:Label>
</td>
<td>
    <asp:TextBox ID="sub3" runat="server" CssClass="Textbox" Height="28px" 
                placeholder="Enter sub3" ontextchanged="sub3_TextChanged" 
        ValidationGroup="text"></asp:TextBox>
             <asp:RangeValidator ID="RangeValidator3" runat="server" 
        ErrorMessage="Enter Marks Between(0 To 30)" ControlToValidate="sub3" 
        ForeColor="Red" MaximumValue="30" MinimumValue="0" Type="Integer" 
        ValidationGroup="text"></asp:RangeValidator>

</td>
</tr>
<tr>
<td>
    <asp:Label ID="Label4" runat="server" Text="Sub4"></asp:Label>
</td>
<td>
    <asp:TextBox ID="sub4" runat="server" CssClass="Textbox" Height="28px" 
                placeholder="Enter sub4" ontextchanged="sub4_TextChanged" 
        ValidationGroup="text"></asp:TextBox>
              <asp:RangeValidator ID="RangeValidator4" runat="server" 
        ErrorMessage="Enter Marks Between(0 To 30)" ControlToValidate="sub4" 
        ForeColor="Red" MaximumValue="30" MinimumValue="0" Type="Integer" 
        ValidationGroup="text"></asp:RangeValidator>
</td>
</tr>
<tr>
<td>
    &nbsp;</td>
<td>
<asp:Button ID="submit" runat="server" Text="Submit"  Height="37px" 
                Width="175px" CssClass="Button" onclick="submit_Click" 
        ValidationGroup="text"/>
</td>
</tr>
</table>
</center>
</div>
</asp:Content>

