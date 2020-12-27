<%@ Page Title="" Language="C#" MasterPageFile="~/StudentMasterPage.master" AutoEventWireup="true" CodeFile="LeavePageStudent.aspx.cs" Inherits="LeavePageStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Studentmaster" Runat="Server">
    <style>
.Textbox
{
    
    background-color:#e0e0d1;
     border-color:#c2c2a3;
    
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
table
{
    width:60%;
}
#font
{
    font-size:16px;
}
    .style3
    {
        height: 113px;
    }
</style>
 <asp:Label ID="studentid" runat="server" Text="Label" Visible="False"></asp:Label>
                  <asp:Label ID="tid" runat="server" Text="Label" Visible="False"></asp:Label>
                   <asp:Label ID="Lastr" runat="server" Text="Label" Visible="False"></asp:Label>
                  
<br />
<br />
<div id="font">
<center>

                <br />
  
   
<table>
<caption><h3>Leave Add</h3></caption>
<tr>
<td>
  <asp:Label ID="Label27" runat="server" Text="Student ID"></asp:Label>
</td>
<td>
  <asp:Label ID="sid" runat="server" Text=""></asp:Label>
</td>
</tr>
<tr>
<td>
  <asp:Label ID="Label1" runat="server" Text="Roll No"></asp:Label>
</td>
<td>
  <asp:Label ID="rollno" runat="server" Text=""></asp:Label>
</td>
</tr>
<tr>
<td>
  <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
</td>
<td>
 <asp:Label ID="name" runat="server" Text=""></asp:Label>
</td>
</tr>
<tr>
<td>
  <asp:Label ID="Label3" runat="server" Text="Reason"></asp:Label>
</td>
<td>
 <asp:TextBox ID="reason" runat="server" CssClass="Textbox" Height="96px" 
        placeholder="Enter Leave Reason" TextMode="MultiLine" 
        ValidationGroup="text"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                 ErrorMessage="Required Reason" ControlToValidate="reason" 
                 ForeColor="Red" ValidationGroup="text" ></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td>
  <asp:Label ID="Label4" runat="server" Text="Days"></asp:Label>
</td>
<td>
 <asp:TextBox ID="days" runat="server" CssClass="Textbox" Height="28px" 
        placeholder="Enter Leave Days" ValidationGroup="text"></asp:TextBox>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                 ErrorMessage="Required Days" ControlToValidate="days" 
                 ForeColor="Red" ValidationGroup="text"></asp:RequiredFieldValidator>
</td>
</tr>

<tr>
<td>
<asp:Button ID="leavestatusbut" runat="server" Text="Leave Status" CssClass="Button" 
                Height="37px" Width="175px" onclick="leavestatusbut_Click"  />
</td>
<td>
<asp:Button ID="Button1" runat="server" Text="Submit" CssClass="Button" 
                Height="37px" Width="175px" onclick="Button1_Click" 
        ValidationGroup="text" />
               
                

</td>
</tr>
</table>
</center>
</div>
<center>
  <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    </center>
 
</asp:Content>

