<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="AddCar2.aspx.cs" Inherits="Admin_AddCar2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 592px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin:auto;width:600px">
    
        <table class="style1">
            <tr>
                <td class="style2" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;Add new car details</strong>&nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    Car Id</td>
                <td>
                    <asp:TextBox ID="IdTextBox" runat="server" ReadOnly="True">(Auto)</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Car No</td>
                <td>
                    <asp:TextBox ID="NoTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="NoTextBox" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Car Model</td>
                <td>
                    <asp:TextBox ID="ModelTextBox" runat="server" Width="216px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="ModelTextBox" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Capacity</td>
                <td>
                    <asp:TextBox ID="CapacityTextBox" runat="server" Width="215px" 
                       ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="CapacityTextBox" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    Rent(per day)</td>
                <td class="style6">
                    <asp:TextBox ID="RentTextBox" runat="server" Width="216px" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="RentTextBox" ErrorMessage="Required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            <tr>
                <td class="style5">
                    Image</td>
                <td class="style6">
                    <asp:Image ID="Image1" runat="server" Height="66px" Width="97px" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="FileUpload1" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:FileUpload ID="FileUpload1" runat="server" />
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style6">
                    <asp:Button ID="SaveButton" runat="server" onclick="Button1_Click1" 
                        Text="Save" Width="56px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                        Text="Cancel" /></td></tr>
                    </table>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CarID" 
            DataSourceID="SqlDataSource1" 
            EmptyDataText="There are no data records to display." ForeColor="#333333" 
            GridLines="None" Width="805px" onrowdatabound="GridView1_RowDataBound" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" 
            onrowcommand="GridView1_RowCommand">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="CarID" HeaderText="CarID" ReadOnly="True" 
                    SortExpression="CarID" InsertVisible="False" />
                <asp:BoundField DataField="CarNo" HeaderText="CarNo" SortExpression="CarNo" />
                <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                <asp:BoundField DataField="Capacity" HeaderText="Capacity" 
                    SortExpression="Capacity" />
                <asp:BoundField DataField="Rent" HeaderText="Rent" SortExpression="Rent" />
                <asp:BoundField DataField="CarImage" HeaderText="CarImage" 
                    SortExpression="CarImage" />
                <asp:BoundField DataField="Status" HeaderText="Status" 
                    SortExpression="Status" />
                <asp:ButtonField CommandName="Make" Text="Make Available" />
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
            ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString3 %>" 
            DeleteCommand="DELETE FROM [CarTable] WHERE [CarID] = @CarID" 
            InsertCommand="INSERT INTO [CarTable] ([CarNo], [Model], [Capacity], [Rent], [CarImage], [Status]) VALUES (@CarNo, @Model, @Capacity, @Rent, @CarImage, @Status)" 
            SelectCommand="SELECT * FROM [CarTable]" 
            
            UpdateCommand="UPDATE [CarTable] SET [CarNo] = @CarNo, [Model] = @Model, [Capacity] = @Capacity, [Rent] = @Rent, [CarImage] = @CarImage, [Status] = @Status WHERE [CarID] = @CarID">
            <DeleteParameters>
                <asp:Parameter Name="CarID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CarNo" Type="String" />
                <asp:Parameter Name="Model" Type="String" />
                <asp:Parameter Name="Capacity" Type="Int32" />
                <asp:Parameter Name="Rent" Type="Int64" />
                <asp:Parameter Name="CarImage" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CarNo" Type="String" />
                <asp:Parameter Name="Model" Type="String" />
                <asp:Parameter Name="Capacity" Type="Int32" />
                <asp:Parameter Name="Rent" Type="Int64" />
                <asp:Parameter Name="CarImage" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
                <asp:Parameter Name="CarID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
</div>

</asp:Content>

