<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminHomePage.aspx.cs" Inherits="AdminHomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="w3-center" style="margin-top: 100px">
    <br />
    <br />
    <br />
        <asp:Button ID="viewsatff" runat="server" Text="View Staff" 
            CssClass="w3-btn w3-green"  Width="40%" onclick="viewsatff_Click" />
        <br />
        <br />
        <asp:Button ID="viewstudnet" runat="server" Text="View Student" 
            CssClass=" w3-btn w3-blue" Width="40%" onclick="viewstudnet_Click" />
        <br />
        <br />
        <asp:Button ID="viewnotice" runat="server" Text=" View Notice" 
            CssClass="w3-btn w3-teal" Width="40%" onclick="viewnotice_Click" />
        <br />
        <br />
         <asp:Button ID="viewleave" runat="server" Text=" View Leaves" 
            CssClass="w3-btn w3-pink"  Width="40%" onclick="viewleave_Click" />
        <br />
        <br />
        <asp:Button ID="viewcomplaint" runat="server" Text="View Complaint" 
            CssClass=" w3-btn w3-silver" Width="40%" onclick="viewcomplaint_Click" />
        <br />
        <br />
        <asp:Button ID="viewmeeting" runat="server" Text=" View Parent Techer Meeting" 
            CssClass="w3-btn w3-red" Width="40%" onclick="viewmeeting_Click" />
    </div>
</asp:Content>

