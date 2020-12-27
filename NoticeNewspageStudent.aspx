<%@ Page Title="" Language="C#" MasterPageFile="~/StudentMasterPage.master" AutoEventWireup="true" CodeFile="NoticeNewspageStudent.aspx.cs" Inherits="NoticeNewspageStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Studentmaster" Runat="Server">
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
</style>
  <asp:Label ID="sid" runat="server" Text="Label" Visible="False"></asp:Label>
  <asp:Label ID="tid" runat="server" Text="Label" Visible="False"></asp:Label>
    <br />
<br />
<center>
<h3>Notice</h3>
</center>
<br />
<div id="font">
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
    </div>
      
</asp:Content>

