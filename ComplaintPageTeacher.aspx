<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherMasterPage.master" AutoEventWireup="true" CodeFile="ComplaintPageTeacher.aspx.cs" Inherits="ComplaintPageTeacher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TeacherMaster" Runat="Server">
<style>
#font
{
     gfont-family:"Helvetica Neue",Helvetica,Arial,sans-serif; 
     font-size:16px;
     text-align:center;
     
}
h3
{
    color:Black;
    font-weight:bold;
    text-shadow: 1px 3px 3px gray;
    
}
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
    width:60%;
}
</style>
 <asp:Label ID="tid" runat="server" Text="Label" Visible="False"></asp:Label>
    <asp:Label ID="statusdisplay" runat="server" Text="Label" Visible="False"></asp:Label>
    <asp:Label ID="statusdisplay1" runat="server" Text="Label" Visible="False"></asp:Label>
     <asp:Label ID="daysstr" runat="server" Text="Label" Visible="False"></asp:Label>
      <asp:Label ID="reasonstr" runat="server" Text="Label" Visible="False"></asp:Label>

    <br />
<br />
<center>
<h3>Complaint</h3>
</center>


<div id="font">
<center>
    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
        ForeColor="Black" GridLines="Vertical" 
        >
        <AlternatingRowStyle BackColor="#CCCCCC" />
      
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
   </center>
    </div>
    <br />
    
    <div id="Div1">
    <center>
    <table>
    <tr>
    <td>
        <asp:Label ID="a" runat="server" Text="Student ID"></asp:Label>
    </td>
    <td>
       <asp:TextBox ID="stuid" runat="server" CssClass="Textbox" Height="28px" 
                placeholder="Enter Student ID"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="Required Student ID" ControlToValidate="stuid" ForeColor="Red" 
            ValidationGroup="text2"></asp:RequiredFieldValidator>
    </td>
    </tr>
    <tr>
    <td>
    <asp:Label ID="Label2" runat="server" Text="Roll No"></asp:Label>
    </td>
    <td>
    <asp:Label ID="rollno" runat="server" Text=""></asp:Label>
    </td>
    </tr>
    <tr>
    <td>
    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
    </td>
    <td>
     <asp:Label ID="name" runat="server" Text=""></asp:Label>
    </td>
    </tr
    <tr>
    <td>
     <asp:Label ID="Label5" runat="server" Text="Complaint About"></asp:Label>
    </td>
    <td>
     <asp:Label ID="complaintabout" runat="server" Text=""></asp:Label>
    </td>
    </tr>
    <tr>
    <td>
     <asp:Label ID="Label6" runat="server" Text="Message"></asp:Label>
    </td>
    <td>
    <asp:TextBox ID="message" runat="server" CssClass="Textbox" Height="96px" 
        TextMode="MultiLine" Width="255px"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td>
     <asp:Label ID="Label7" runat="server" Text="Reply"></asp:Label>
    </td>
    <td>
    <asp:TextBox ID="reply" runat="server" CssClass="Textbox" Height="96px" 
        placeholder="Enter Complaint Reply" TextMode="MultiLine" Width="255px" 
            ValidationGroup="text"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Plz Reply" ControlToValidate="reply" ForeColor="Red" 
            ValidationGroup="text"></asp:RequiredFieldValidator>
    </td>
    </tr>

  
    <tr>
    <td>
     <asp:Button ID="replybut" runat="server" Text="Reply Send"  Height="37px" 
                Width="175px" CssClass="Button" onclick="replybut_Click" 
            ValidationGroup="text" />
    </td>
    <td>
    <asp:Button ID="searchbut" runat="server" Text="Search"  Height="37px" 
                Width="175px" CssClass="Button" onclick="searchbut_Click" 
            ValidationGroup="text2"/>
    </td>
    </tr>
    
    </table>
    </center>
    </div>
    
   
    
</asp:Content>

