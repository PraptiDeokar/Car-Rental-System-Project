<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/MasterPage.master" AutoEventWireup="true" CodeFile="PayBill.aspx.cs" Inherits="Customer_PayBill" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin:auto width=600px">
<table class="style1">
        <tr>
            <td>
                Rent Amount</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Paid amount</td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Credit Card No</td>
            <td>
                <asp:TextBox ID="CNoTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="CNoTextBox" ErrorMessage="Enter Valid Card No." 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Make Payment" 
                    onclick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" DataSourceID="SqlDataSource2" 
                    EmptyDataText="There are no data records to display." CellPadding="4" 
                    DataKeyNames="BookId" ForeColor="#333333" GridLines="None" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="BookId" HeaderText="BookId" InsertVisible="False" 
                            ReadOnly="True" SortExpression="BookId" />
                        <asp:BoundField DataField="CarId" HeaderText="CarId" SortExpression="CarId" />
                        <asp:BoundField DataField="PDate" HeaderText="PDate" SortExpression="PDate" />
                        <asp:BoundField DataField="Ddate" HeaderText="Ddate" SortExpression="Ddate" />
                        <asp:BoundField DataField="Rent" HeaderText="Rent" SortExpression="Rent" />
                        <asp:BoundField DataField="CustId" HeaderText="CustId" 
                            SortExpression="CustId" />
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString1 %>" 
                    
                    
                    SelectCommand="SELECT DISTINCT * FROM [BookTable] WHERE (([CarId] = @CarId) AND ([BookId] = @BookId))">
                    <SelectParameters>
                        <asp:SessionParameter Name="CarId" SessionField="vid" Type="Int32" />
                        <asp:QueryStringParameter Name="BookId" QueryStringField="id" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</div>
</asp:Content>

