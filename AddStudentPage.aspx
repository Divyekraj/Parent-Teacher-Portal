<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherMasterPage.master" AutoEventWireup="true" CodeFile="AddStudentPage.aspx.cs" Inherits="AddStudentPage" %>

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
    <caption><h3>Add Student</h3></caption>
    <tr>
        <td class="style2">
        <asp:Label ID="Label6" runat="server" Text="SID"></asp:Label>
           
        </td>
        <td>
        
        <asp:TextBox ID="Sid" runat="server" CssClass="Textbox" Height="28px" 
                placeholder="Enter Student ID" ValidationGroup="text"></asp:TextBox>
         <asp:Button ID="getid" runat="server" Text="Get ID" onclick="getid_Click"/>
           
            </td>
    <tr>
    <td></td>
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Required Student ID" ControlToValidate="Sid" ForeColor="Red" 
            ValidationGroup="text"></asp:RequiredFieldValidator>
    </td>
    </tr>
    </tr>
  
    <tr>
    <td>
         <asp:Label ID="Label1" runat="server" Text="Class"></asp:Label>
    </td>
    <td>
  

           <asp:DropDownList ID="DropDownList1" runat="server" CssClass="Textbox" 
                >
                <asp:ListItem>BCA1</asp:ListItem>
                <asp:ListItem>BCA2</asp:ListItem>
                <asp:ListItem>BCA3</asp:ListItem>
                <asp:ListItem>BBA1</asp:ListItem>
                <asp:ListItem>BBA2</asp:ListItem>
                <asp:ListItem>BBA3</asp:ListItem>
                <asp:ListItem>BBM1</asp:ListItem>
                <asp:ListItem>BBM2</asp:ListItem>
                <asp:ListItem>BBM3</asp:ListItem>
                
               
            </asp:DropDownList>
          


    </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Roll No"></asp:Label></td>
        <td>
            <asp:TextBox ID="rollno" runat="server" CssClass="Textbox" Height="28px" 
                placeholder="Enter Roll No" ValidationGroup="text"></asp:TextBox>
            
         </td>
    
         
    </tr>
    <tr>
    <td></td>
        <td>
            <asp:RangeValidator ID="RangeValidator1" runat="server" 
                ErrorMessage="Plz Enter Only Numeric No" ControlToValidate="rollno" 
                ForeColor="Red" MaximumValue="1000000" MinimumValue="0" Type="Integer" 
                ValidationGroup="text"></asp:RangeValidator>
            </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="User Name"></asp:Label></td>
        <td><asp:TextBox ID="username" runat="server" CssClass="Textbox" Height="28px" 
                placeholder="Enter User Name" ValidationGroup="text"></asp:TextBox></td>
    </tr>
     <tr>
    <td></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ErrorMessage="Required User Name" ControlToValidate="username" ForeColor="Red" 
                ValidationGroup="text"></asp:RequiredFieldValidator>
            </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label></td>
        <td><asp:TextBox ID="password" runat="server" CssClass="Textbox" Height="28px" 
                placeholder="Enter Password" ValidationGroup="text" TextMode="Password"></asp:TextBox></td>
    </tr>
     <tr>
    <td></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ErrorMessage="Required Password" ControlToValidate="password" ForeColor="Red" 
                ValidationGroup="text"></asp:RequiredFieldValidator>
            </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label5" runat="server" Text="Conform Password"></asp:Label></td>
        <td><asp:TextBox ID="conformpassword" runat="server" CssClass="Textbox" 
                Height="28px" placeholder="Enter Conform Password" TextMode="Password" 
                ValidationGroup="text"></asp:TextBox></td>
    </tr>
     <tr>
    <td></td>
        <td>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ErrorMessage="Wrong Password" ControlToCompare="password" 
                ControlToValidate="conformpassword" ForeColor="Red" ValidationGroup="text"></asp:CompareValidator>
        </td>
    </tr>
   
    <tr>
        <td></td>
        <td>
            <asp:Button ID="submit" runat="server" Text="Submit"  Height="37px" 
                Width="175px" CssClass="Button" onclick="Button1_Click" 
                ValidationGroup="text" /></td>
    </tr>
      
</table>

   
</center>
</div>

</asp:Content>

