<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="BookingDetails.aspx.cs" Inherits="Admin_BookingDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin:auto width:400px ">

        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="BookId" DataSourceID="SqlDataSource1" 
            ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="BookId" HeaderText="BookId" ReadOnly="True" 
                    SortExpression="BookId" />
                <asp:BoundField DataField="CarId" HeaderText="CarId" SortExpression="CarId" />
                <asp:BoundField DataField="CarNo" HeaderText="CarNo" SortExpression="CarNo" />
                <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                <asp:BoundField DataField="Capacity" HeaderText="Capacity" 
                    SortExpression="Capacity" />
                <asp:BoundField DataField="PDate" HeaderText="PDate" SortExpression="PDate" />
                <asp:BoundField DataField="Rent" HeaderText="Rent" SortExpression="Rent" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" 
                    SortExpression="UserName" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString1 %>" 
            SelectCommand="SELECT * FROM [BookCarView]"></asp:SqlDataSource>

</div>
</asp:Content>

