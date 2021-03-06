﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminLeavePage.aspx.cs" Inherits="AdminLeavePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<br />
<br />
<br />
<center>
    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
        CellPadding="3" ForeColor="Black" GridLines="Vertical" 
        AutoGenerateColumns="False" AutoGenerateDeleteButton="True" 
        DataSourceID="SqlDataSource1" DataKeyNames="TID">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="TID" HeaderText="TID" SortExpression="TID" />
            <asp:BoundField DataField="SID" HeaderText="SID" 
                SortExpression="SID" />
            <asp:BoundField DataField="rollno" HeaderText="rollno" 
                SortExpression="rollno" />
            <asp:BoundField DataField="Name" HeaderText="Name" 
                SortExpression="Name" />
            <asp:BoundField DataField="Days" HeaderText="Days" 
                SortExpression="Days" />
            <asp:BoundField DataField="Reason" HeaderText="Reason" 
                SortExpression="Reason" />
            <asp:BoundField DataField="Status" HeaderText="Status" 
                SortExpression="Status" />
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
        DeleteCommand="Delete from leave Where TID=@TID"
        SelectCommand="SELECT * FROM [leave]"></asp:SqlDataSource>
        </center>
</asp:Content>

