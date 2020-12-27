<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherMasterPage.master" AutoEventWireup="true" CodeFile="UpdateInfoTeacher.aspx.cs" Inherits="UpdateInfoTeacher" %>

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
#s
{
    text-align:right;
}
#m
{
   float:left;
}
#n
{
    float:left;
}
#o
{
    float:left;
}
#op
{
    float:left;
} 

</style>
    <asp:Label ID="tid" runat="server" Text="Label" Visible="False"></asp:Label>
<br />
<br />
<div id="font">
<center>
<table>
   
    <caption><h3>Profile Updte</h3></caption>
    
    <tr>
        <td class="style2"> 
            <asp:Label ID="label" runat="server" Text="Tid"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="Tidnumber" runat="server" CssClass="Textbox" Height="28px" 
                placeholder="Enter user name"></asp:TextBox>
        </td>
    </tr>
    
    
     <tr>
        <td>
            <asp:Label ID="Label11" runat="server" Text="First Name"></asp:Label>
        </td>
        <td>
             <asp:TextBox ID="firstname" runat="server" CssClass="Textbox" Height="28px" 
                placeholder="Enter First Name" ValidationGroup="text"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                 ErrorMessage="Required First Name" ControlToValidate="firstname" 
                 ForeColor="Red" ValidationGroup="text">Required First Name</asp:RequiredFieldValidator>
        </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="Label13" runat="server" Text="Middle Name"></asp:Label>
        </td>
        <td>
             <asp:TextBox ID="middlename" runat="server" CssClass="Textbox" Height="28px" 
                placeholder="Enter Middle Name" ValidationGroup="text"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                 ErrorMessage="Required Middle Name" ControlToValidate="middlename" 
                 ForeColor="Red" ValidationGroup="text"></asp:RequiredFieldValidator>
        </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="Label15" runat="server" Text="Last Name"></asp:Label>
        </td>
        <td>
             <asp:TextBox ID="lastname" runat="server" CssClass="Textbox" Height="28px" 
                placeholder="Enter Last Name" ValidationGroup="text"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                 ErrorMessage="RequiredF Last Name" ControlToValidate="lastname" ForeColor="Red" 
                 ValidationGroup="text"></asp:RequiredFieldValidator>

        </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="Label17" runat="server" Text="DOB"></asp:Label>
          
        </td>
        <td>
                <div id="n">
          &nbsp;
          Day  <asp:DropDownList ID="day" runat="server" ValidationGroup="text">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
                <asp:ListItem>13</asp:ListItem>
                <asp:ListItem>14</asp:ListItem>
                <asp:ListItem>15</asp:ListItem>
                <asp:ListItem>16</asp:ListItem>
                <asp:ListItem>17</asp:ListItem>
                <asp:ListItem>18</asp:ListItem>
                <asp:ListItem>19</asp:ListItem>
                <asp:ListItem>20</asp:ListItem>
                <asp:ListItem>21</asp:ListItem>
                <asp:ListItem>22</asp:ListItem>
                <asp:ListItem>23</asp:ListItem>
                <asp:ListItem>24</asp:ListItem>
                <asp:ListItem>25</asp:ListItem>
                <asp:ListItem>26</asp:ListItem>
                <asp:ListItem>27</asp:ListItem>
                <asp:ListItem>28</asp:ListItem>
                <asp:ListItem>29</asp:ListItem>
                <asp:ListItem>30</asp:ListItem>
                <asp:ListItem>31</asp:ListItem>
            </asp:DropDownList>
            &nbsp;</div>
            <div id="m">
            &nbsp;
            Month
            <asp:DropDownList ID="month" runat="server">
             <asp:ListItem></asp:ListItem>
                <asp:ListItem>Jan</asp:ListItem>
                <asp:ListItem>Feb</asp:ListItem>
                <asp:ListItem>Mar</asp:ListItem>
                <asp:ListItem>Apr</asp:ListItem>
                <asp:ListItem>May</asp:ListItem>
                <asp:ListItem>June</asp:ListItem>
                <asp:ListItem>July</asp:ListItem>
                <asp:ListItem>Aug</asp:ListItem>
                <asp:ListItem>Sep</asp:ListItem>
                <asp:ListItem>Dec</asp:ListItem>
            </asp:DropDownList>
            </div>
            <div id="o">
            &nbsp;&nbsp;Year
            <asp:DropDownList ID="year" runat="server">
             <asp:ListItem></asp:ListItem>
            <asp:ListItem>1970</asp:ListItem>
            <asp:ListItem>1971</asp:ListItem>
                <asp:ListItem>1972</asp:ListItem>
                <asp:ListItem>1973</asp:ListItem>
                <asp:ListItem>1974</asp:ListItem>
                <asp:ListItem>1975</asp:ListItem>
                <asp:ListItem>1976</asp:ListItem>
                <asp:ListItem>1977</asp:ListItem>
                    <asp:ListItem>1978</asp:ListItem>
                <asp:ListItem>1979</asp:ListItem>
                <asp:ListItem>1980</asp:ListItem>
            <asp:ListItem>1981</asp:ListItem>
                <asp:ListItem>1982</asp:ListItem>
                <asp:ListItem>1983</asp:ListItem>
                <asp:ListItem>1984</asp:ListItem>
                <asp:ListItem>1985</asp:ListItem>
                <asp:ListItem>1986</asp:ListItem>
                <asp:ListItem>1987</asp:ListItem>
                    <asp:ListItem>1988</asp:ListItem>
                <asp:ListItem>1989</asp:ListItem>
                <asp:ListItem>1990</asp:ListItem>
            <asp:ListItem>1991</asp:ListItem>
                <asp:ListItem>1992</asp:ListItem>
                <asp:ListItem>1993</asp:ListItem>
                <asp:ListItem>1994</asp:ListItem>
                <asp:ListItem>1995</asp:ListItem>
                <asp:ListItem>1996</asp:ListItem>
                <asp:ListItem>1997</asp:ListItem>
                    <asp:ListItem>1998</asp:ListItem>
                <asp:ListItem>1999</asp:ListItem>
                <asp:ListItem>2000</asp:ListItem>
            <asp:ListItem>2001</asp:ListItem>
               

            </asp:DropDownList>
            </div>
            <div id="op">
            <br />
           &nbsp;&nbsp;  

            </div>
           
        </td>
    </tr>
    <tr>
    <td></td>
    <td>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                 ErrorMessage="Missing (Day)" ControlToValidate="day" 
                 ForeColor="Red" ValidationGroup="text"></asp:RequiredFieldValidator>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                 ErrorMessage="Missing (Month)" ControlToValidate="month" 
                 ForeColor="Red" ValidationGroup="text"></asp:RequiredFieldValidator>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                 ErrorMessage="Missing (Year)" ControlToValidate="year" 
                 ForeColor="Red" ValidationGroup="text"></asp:RequiredFieldValidator>


    </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label19" runat="server" Text="Gender"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="Textbox" 
                ValidationGroup="text">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:DropDownList>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                 ErrorMessage="Required Gender" ControlToValidate="DropDownList1" 
                 ForeColor="Red" ValidationGroup="text"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label21" runat="server" Text="Mobile No"></asp:Label>
        </td>
        <td>
             <asp:TextBox ID="mobno" runat="server" CssClass="Textbox" Height="28px" 
                placeholder="Enter Mobile No" ValidationGroup="text"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ErrorMessage="Insert 10 Digit No" ForeColor="Red" ControlToValidate="mobno" 
            ValidationExpression="^[0123456789]\d{9}$" ValidationGroup="text"></asp:RegularExpressionValidator>
        </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="Label23" runat="server" Text="Address"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="Address" runat="server" CssClass="Textbox" Height="28px" 
                placeholder="Enter Address" ValidationGroup="text"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                 ErrorMessage="Required Address " ControlToValidate="Address" 
                 ForeColor="Red" ValidationGroup="text"></asp:RequiredFieldValidator>
        </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="Label25" runat="server" Text="Blood Group"></asp:Label>
        </td>
        <td>
               <asp:DropDownList ID="DropDownList2" runat="server" CssClass="Textbox" 
                   ValidationGroup="text">
                   <asp:ListItem></asp:ListItem>
                   <asp:ListItem>o+</asp:ListItem>
                   <asp:ListItem>A+</asp:ListItem>
                   <asp:ListItem>B+</asp:ListItem>
                   <asp:ListItem>A-</asp:ListItem>
                   <asp:ListItem>B-</asp:ListItem>
            </asp:DropDownList>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                 ErrorMessage="Required BloodGroup " ControlToValidate="DropDownList2" 
                 ForeColor="Red" ValidationGroup="text"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label27" runat="server" Text="Qualification"></asp:Label>
        </td>
        <td>
             <asp:TextBox ID="qualification" runat="server" CssClass="Textbox" Height="28px" 
                placeholder="Enter Qualification" ValidationGroup="text"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                 ErrorMessage="Required Qualification" ControlToValidate="qualification" 
                 ForeColor="Red" ValidationGroup="text"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
    <td>
        <asp:Label ID="photo" runat="server" Text="Photo"></asp:Label></td>
    <td>
        <asp:FileUpload ID="FileUpload1" runat="server" />
         <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                 ErrorMessage="Required Photo " ControlToValidate="FileUpload1" 
                 ForeColor="Red" ValidationGroup="text"></asp:RequiredFieldValidator>
    </td>
    </tr>
    <tr>
        <td>
        <asp:Button ID="Button2" runat="server" Text="Update"  Height="37px" 
                Width="175px" CssClass="Button" onclick="Button2_Click"/></td>
       
        <td> 
            <asp:Button ID="Button1" runat="server" Text="Submit"  Height="37px" 
                Width="175px" CssClass="Button" onclick="Button1_Click" 
                ValidationGroup="text" /></td>
    </tr>
    <tr>
    <td></td>
    <td>
    <asp:Button ID="Button3" runat="server" Text="Search"  Height="37px" 
                Width="175px" CssClass="Button" onclick="Button3_Click"/>
    </td>
    </tr>
   
</table>
  </center> 
</div>
</asp:Content>

