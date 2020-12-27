<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherMasterPage.master" AutoEventWireup="true" CodeFile="ViewPageTeacher.aspx.cs" Inherits="ViewPageTeacher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TeacherMaster" Runat="Server">
    <style>
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
    width:45%;
}
#font
{
    font-size:16px;
}
#profile
{
    
}
ImageButton 
{
    border-radius=50%;
}
.string
{
    font-size:23px;
    font-weight:bolder;
      text-shadow: 1px 3px 3px gray;
   
}
</style>
    <asp:Label ID="tid" runat="server" Text="tid" Visible="False"></asp:Label>
     <asp:Label ID="teacherid" runat="server" Text="Label" Visible="False"></asp:Label>
<br />
<br />
<div id="font">
<center>
<caption><h3>Teacher Profile</h3></caption>
  
   <br />    
<table>
    <tr>
    <td>
    <asp:ImageButton ID="ImageButton1" runat="server" 
              Height="200" Width="150" />
    </td>
    <td>
    <center>
   <br />
   <br />
   <br />
   <br />
       <asp:Label ID="abc" runat="server" Text="" CssClass="string"></asp:Label>
       </center>
    </td>
    </tr>

   
    
    <tr>
        <td class="style2">
            <asp:Label ID="tidno" runat="server" Text="Tid"></asp:Label>
        </td>
        <td>
             <asp:Label ID="tidlabel" runat="server" Text="tidlebel"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style2">
            <asp:Label ID="username" runat="server" Text="User Name"></asp:Label>
        </td>
        <td>
             <asp:Label ID="usernameLabel" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="password" runat="server" Text="Password"></asp:Label>
        </td>
        <td>
             <asp:Label ID="passwordLabel" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="email" runat="server" Text="Email ID"></asp:Label>
        </td>
        <td>
             <asp:Label ID="emailLabel" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="securityque" runat="server" Text="Security Question"></asp:Label>
        </td>
        <td>
             <asp:Label ID="securityqueLabel" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="answer" runat="server" Text="Security Answer"></asp:Label>
        </td>
        <td>
             <asp:Label ID="answerLabel" runat="server" Text=""></asp:Label>
        </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="Label11" runat="server" Text="First Name"></asp:Label>
        </td>
        <td>
            <asp:Label ID="firstname" runat="server" Text=""></asp:Label>
        </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="Label13" runat="server" Text="Middle Name"></asp:Label>
        </td>
        <td>
           <asp:Label ID="middlename" runat="server" Text=""></asp:Label>
        </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="Label15" runat="server" Text="Last Name"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lastname" runat="server" Text=""></asp:Label>
        </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="Label17" runat="server" Text="DOB"></asp:Label>
        </td>
        <td>
             <asp:Label ID="dob" runat="server" Text=""></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label19" runat="server" Text="Gender"></asp:Label>
        </td>
        <td>
            <asp:Label ID="gender" runat="server" Text=""></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label21" runat="server" Text="Mobile No"></asp:Label>
        </td>
        <td>
            <asp:Label ID="mobno" runat="server" Text=""></asp:Label>
        </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="Label23" runat="server" Text="Address"></asp:Label>
        </td>
        <td>
           <asp:Label ID="address" runat="server" Text=""></asp:Label>
        </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="Label25" runat="server" Text="Blood Group"></asp:Label>
        </td>
        <td>
               <asp:Label ID="bloodgroup" runat="server" Text=""></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label27" runat="server" Text="Qualification"></asp:Label>
        </td>
        <td>
            <asp:Label ID="qualification" runat="server" Text=""></asp:Label>
        </td>
    </tr>
   
</table>
   
       
            
   
     
     

   

</center>
</div>
</asp:Content>

