<%@ Page Title="" Language="C#" MasterPageFile="~/NormalMasterPage.master" AutoEventWireup="true" CodeFile="RegistrationPageTeacher.aspx.cs" Inherits="RegistrationPageTeacher" %>

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
    <asp:TextBox ID="TextBox1" runat="server" BackColor="Gray" BorderColor="Gray" 
        ForeColor="Gray" Visible="False" ValidationGroup="text"></asp:TextBox>
<br />
<br />
<div id="font">
<center>
<table>
    <caption><h3>Registration</h3></caption>
     <tr>
        <td class="style2">
            <asp:Label ID="Label8" runat="server" Text="ID"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="ID" runat="server" CssClass="Textbox" Height="28px" 
                placeholder="Click On Get Id" ValidationGroup="text"></asp:TextBox>
              <asp:Button ID="getid" runat="server" Text="Get ID" onclick="getid_Click"/>
        </td>
        
    </tr>
    <tr>
    <td></td>
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ErrorMessage="ID Required" ForeColor="Red" ControlToValidate="ID" 
            ValidationGroup="text"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style2">
            <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="username" runat="server" CssClass="Textbox" Height="28px" 
                placeholder="Enter User Name" ValidationGroup="text"></asp:TextBox>
        </td>
    </tr>
    <tr>
    <td></td>
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="User Name Required" ForeColor="Red" 
            ControlToValidate="username" ValidationGroup="text"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td> 
           <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="password" runat="server" CssClass="Textbox" Height="28px" 
                placeholder="Enter Password" TextMode="Password" ValidationGroup="text" ></asp:TextBox>
        </td>
    </tr>
    <tr>
    <td></td>
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="Password Required" ForeColor="Red" 
            ControlToValidate="password" ValidationGroup="text"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Conform Password"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="conformpassword" runat="server" CssClass="Textbox" Height="28px" 
                placeholder="Enter Conform Password" TextMode="Password" 
                ValidationGroup="text"></asp:TextBox>
        </td>
    </tr>
    <tr>
    <td></td>
    <td>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ErrorMessage="Wrong Password" ForeColor="Red" ControlToCompare="password" 
            ControlToValidate="conformpassword" ValidationGroup="text"></asp:CompareValidator>
    </td>
    </tr>
    <tr>
        <td> 
           <asp:Label ID="Label4" runat="server" Text="Email ID"></asp:Label>
        </td>
        <td>
           <asp:TextBox ID="email" runat="server" CssClass="Textbox" Height="28px" 
                placeholder="Enter Email ID" ValidationGroup="text"></asp:TextBox>
        </td>
    </tr>
    <tr>
    <td></td>
    <td>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ErrorMessage="Wrong Email ID Formate" ForeColor="Red" ControlToValidate="email" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
            ValidationGroup="text"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td> 
           <asp:Label ID="Label5" runat="server" Text="Security Question"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="Textbox" 
                ValidationGroup="text">
                <asp:ListItem>Which is your favorite color</asp:ListItem>
                <asp:ListItem>Which is your favorite Hero/Heroin</asp:ListItem>
                <asp:ListItem>What is the  name of  your first School teacher</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td> 
           <asp:Label ID="Label6" runat="server" Text="Answer"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="answer" runat="server" CssClass="Textbox" Height="28px" 
                placeholder="Enter Answer" ValidationGroup="text"></asp:TextBox>
        </td>
    </tr>
    <tr>
    <td></td>
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ErrorMessage="Answer Required" ForeColor="Red" ControlToValidate="answer" 
            ValidationGroup="text"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td> 
           <asp:Label ID="Label7" runat="server" Text="Security No"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="securityno" runat="server" CssClass="Textbox" Height="28px" 
                placeholder="Enter Security No" ValidationGroup="text"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator2" runat="server" 
                ErrorMessage="Wrong Security No" ControlToCompare="TextBox1" 
                ControlToValidate="securityno" ForeColor="Red" ValidationGroup="text"></asp:CompareValidator>
        </td>
    </tr>
  
    <tr>
        <td> 
            
        </td>
        <td>
            <asp:Button ID="submitBut" runat="server" Text="Submit" onclick="Button1_Click" 
                CssClass="Button" Height="37px" Width="175px" ValidationGroup="text" />
                
            
        </td>
    </tr>
</table>
</center>
</div>
</asp:Content>

