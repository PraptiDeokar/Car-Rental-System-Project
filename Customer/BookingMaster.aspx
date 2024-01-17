<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/MasterPage.master" AutoEventWireup="true" CodeFile="BookingMaster.aspx.cs" Inherits="Customer_BookingMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin :auto ; width:400px">

    <br />
    <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="BookId" DataSourceID="SqlDataSource1" CellPadding="4" 
        ForeColor="#333333" GridLines="None" Width="438px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="BookId" HeaderText="BookId" ReadOnly="True" 
                SortExpression="BookId" />
            <asp:BoundField DataField="CarId" HeaderText="CarId" SortExpression="CarId" />
            <asp:BoundField DataField="CarNo" HeaderText="CarNo" SortExpression="CarNo" />
            <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
            <asp:BoundField DataField="Capacity" HeaderText="Capacity" 
                SortExpression="Capacity" />
            <asp:BoundField DataField="PDate" DataFormatString="{0:MM/dd/yyyy}" 
                HeaderText="PDate" SortExpression="PDate" />
            <asp:BoundField DataField="Rent" HeaderText="Rent" SortExpression="Rent" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" 
                SortExpression="UserName" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString1 %>" 
        SelectCommand="SELECT * FROM [BookCarView] WHERE ([UserName] = @UserName)">
        <SelectParameters>
            <asp:ControlParameter ControlID="Label1" Name="UserName" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

</div>
</asp:Content>

