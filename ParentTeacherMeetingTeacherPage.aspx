<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherMasterPage.master" AutoEventWireup="true" CodeFile="ParentTeacherMeetingTeacherPage.aspx.cs" Inherits="ParentTeacherMeetingTeacherPage" %>

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
<caption><h3>Teacher Meeting</h3></caption>
<tr>
<td>
    <asp:Label ID="Label3" runat="server" Text="TID"></asp:Label>
</td>
<td>
 <asp:Label ID="Tidno" runat="server" Text=""></asp:Label>
    
    </td>
</tr>
<tr>
<td>
    <asp:Label ID="Label4" runat="server" Text="Venue"></asp:Label>
</td>
<td>
 <asp:TextBox ID="venue" runat="server" CssClass="Textbox" Height="28px" 
                placeholder="Enter Venue" ValidationGroup="text" Width="211px" 
        ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ErrorMessage="Required Venue" ForeColor="Red" ValidationGroup="text" 
        ControlToValidate="venue"></asp:RequiredFieldValidator>
    
    </td>
</tr>
<tr>
<td>
    <asp:Label ID="Label1" runat="server" Text="Date"></asp:Label>
</td>
<td>
  <asp:TextBox ID="date" runat="server" CssClass="Textbox" Height="28px" 
                placeholder="Enter Date" ValidationGroup="text" Width="211px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ErrorMessage="Required Date" ForeColor="Red" ValidationGroup="text" 
        ControlToValidate="date"></asp:RequiredFieldValidator>
    
    </td>
</tr>
<tr>
<td>
</td>
<td>
    <asp:Calendar ID="Calendar1" runat="server" Height="70px" onselectionchanged="Calendar1_SelectionChanged" 
       ></asp:Calendar>
</td>
</tr>
<tr>
<td>
    <asp:Label ID="Label2" runat="server" Text="Message"></asp:Label>
</td>
<td>
    <asp:TextBox ID="message" runat="server" CssClass="Textbox" Height="152px" 
                placeholder="Enter Message" TextMode="MultiLine" Width="328px" 
        ValidationGroup="text"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ErrorMessage="Required Message" ForeColor="Red" ValidationGroup="text" 
        ControlToValidate="message"></asp:RequiredFieldValidator>

</td>
</tr>

<tr>
<td>
<asp:Button ID="Button2" runat="server" Text="View"  Height="37px" 
                Width="175px" CssClass="Button" onclick="Button2_Click"/>
</td>
<td>
<asp:Button ID="Button1" runat="server" Text="Submit"  Height="37px" 
                Width="175px" CssClass="Button" 
        ValidationGroup="text" onclick="Button1_Click" />
</td>
</tr>
</table>
</center>
</div>
<center>
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


</asp:Content>

