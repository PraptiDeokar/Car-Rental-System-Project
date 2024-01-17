<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/MasterPage.master" AutoEventWireup="true" CodeFile="CarAvailable.aspx.cs" Inherits="Customer_CarAvailable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin :auto ;width:600px">
    <br />
    <asp:DataList ID="DataList1" runat="server" DataKeyField="CarID" 
        DataSourceID="SqlDataSource1" onitemcommand="DataList1_ItemCommand" 
         RepeatColumns="3" 
        Width="589px" CellPadding="4" ForeColor="#333333" 
            onselectedindexchanged="DataList1_SelectedIndexChanged">
        <AlternatingItemStyle BackColor="White" />
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" Height="70px" Width="90px" 
                ImageUrl='<%# Bind("CarImage") %>' />
            <br />
            <br />
            CarID:
            <asp:Label ID="CarIDLabel" runat="server" Text='<%# Eval("CarID") %>' />
            <br />
            Model:
            <asp:Label ID="ModelLabel" runat="server" Text='<%# Eval("Model") %>' />
            <br />
            Capacity:
            <asp:Label ID="CapacityLabel" runat="server" Text='<%# Eval("Capacity") %>' />
            <br />
            Rent:
            <asp:Label ID="RentLabel" runat="server" Text='<%# Eval("Rent") %>' />
            <br />
            &nbsp;<br />
            <asp:Button ID="Button2" runat="server" Text="Book" onclick="Button2_Click" />
<br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
    </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString2 %>" 
            SelectCommand="SELECT * FROM [CarTable] WHERE ([Status] = @Status)">
            <SelectParameters>
                <asp:Parameter DefaultValue="Available" Name="Status" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    <br />
</div>
</asp:Content>

