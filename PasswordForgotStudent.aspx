<%@ Page Title="" Language="C#" MasterPageFile="~/NormalMasterPage.master" AutoEventWireup="true" CodeFile="PasswordForgotStudent.aspx.cs" Inherits="PasswordForgotStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="NormalMaster" Runat="Server">
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
.style2
      {
          width: 200px;
      }
table
{
    width:60%;
}
#font
{
    font-size:16px;
}

</style>
<br />
<br />
<div id="font">
<center>
<table>
    <caption><h3>Recover Your Password</h3></caption>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Studnet ID"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="studentid" runat="server" CssClass="Textbox" Height="28px" placeholder="Enter User ID"></asp:TextBox>
        </td>
    </tr>
    <tr>
    <td></td>
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ErrorMessage="Student ID Required" ForeColor="Red" 
            ControlToValidate="studentid"></asp:RequiredFieldValidator>    
    </td>
    </tr>
   
     <tr>
        <td> 
           <asp:Label ID="ale" runat="server" Text="User Name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="username" runat="server" CssClass="Textbox" Height="28px" placeholder="Enter Name" ></asp:TextBox>
        </td>
    </tr>
    <tr>
    <td></td>
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ErrorMessage="User Name Required" ForeColor="Red" ControlToValidate="username"></asp:RequiredFieldValidator>    
    </td>
    </tr> 
    <tr>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Your Password"></asp:Label>

        </td>
        <td>
            <asp:TextBox ID="password" runat="server" CssClass="Textbox" Height="28px" placeholder="Click on Recover"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
          
        </td>
        <td >
            <asp:Button ID="Button1" runat="server" Text="Recover" CssClass="Button" 
                Height="37px" Width="175px" onclick="Button1_Click"  />
        </td>
    </tr>
</table>
</center>
</div>

</asp:Content>

