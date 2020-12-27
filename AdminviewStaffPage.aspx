﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminviewStaffPage.aspx.cs" Inherits="AdminviewStaffPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<br />
<br />
<br />
<center>
    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
        CellPadding="3" ForeColor="Black" GridLines="Vertical" 
        AutoGenerateColumns="False" AutoGenerateDeleteButton="True" DataKeyNames="TID" 
        DataSourceID="SqlDataSource1">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="TID" HeaderText="TID" SortExpression="TID" />
            <asp:BoundField DataField="firstname" HeaderText="firstname" 
                SortExpression="firstname" />
            <asp:BoundField DataField="middlename" HeaderText="middlename" 
                SortExpression="middlename" />
            <asp:BoundField DataField="lastname" HeaderText="lastname" 
                SortExpression="lastname" />
            <asp:BoundField DataField="gender" HeaderText="gender" 
                SortExpression="gender" />
            <asp:BoundField DataField="modno" HeaderText="modno" SortExpression="modno" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:PPTPROJECTConnectionString2 %>" 
        ProviderName="<%$ ConnectionStrings:PPTPROJECTConnectionString2.ProviderName %>" 
        DeleteCommand="Delete from teacherinfo Where TID=@TID"
        SelectCommand="SELECT [TID], [firstname], [middlename], [lastname], [gender], [modno] FROM [teacherinfo]"></asp:SqlDataSource>
        </center>
    </asp:Content>

