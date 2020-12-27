<%@ Page Title="" Language="C#" MasterPageFile="~/NormalMasterPage.master" AutoEventWireup="true" CodeFile="PasswordForgotTeacher.aspx.cs" Inherits="PasswordForgotTeacher" %>

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
            <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="username" runat="server" CssClass="Textbox" 
                placeholder="Enter User Name" Height="28px"></asp:TextBox>
        </td>
    </tr>
    <tr>
    <td></td>
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ErrorMessage="User Name Required" ForeColor="Red" ControlToValidate="username"></asp:RequiredFieldValidator>
    </td>
    </tr>
     <tr>
        <td>  
          <asp:Label ID="Label2" runat="server" Text="Security Question"></asp:Label> 
        </td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="Textbox">
            <asp:ListItem>Which is your favorite color</asp:ListItem>
                <asp:ListItem>Which is your favorite Hero/Heroin</asp:ListItem>
                <asp:ListItem>What is the  name of  your first School teacher</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
     <tr>
        <td> 
           <asp:Label ID="Label3" runat="server" Text="Answer"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="answer" runat="server" CssClass="Textbox" Height="28px" placeholder="Enter Answer"></asp:TextBox>
        </td>
    </tr>
    <tr>
    <td></td>
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ErrorMessage="Answer Required" ForeColor="Red" ControlToValidate="answer"></asp:RequiredFieldValidator>
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
                Height="37px" Width="175px" onclick="Button1_Click"/>
            <asp:Label ID="message" runat="server" Text=""></asp:Label>
        </td>
    </tr>
</table>
</center>
</div>
</asp:Content>

