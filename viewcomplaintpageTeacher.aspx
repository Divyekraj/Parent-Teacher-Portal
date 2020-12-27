<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherMasterPage.master" AutoEventWireup="true" CodeFile="viewcomplaintpageTeacher.aspx.cs" Inherits="viewcomplaintpageTeacher" %>

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
.style2
      {
          width: 200px;
      }
table
{
    width:60%;
}

</style>
 <asp:Label ID="tid" runat="server" Text="Label" Visible="False"></asp:Label>
   <br />
<br />
<center>
<h3>Complaint Page</h3>
<br />
    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
        ForeColor="Black" GridLines="Vertical">
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
<br />
</asp:Content>

