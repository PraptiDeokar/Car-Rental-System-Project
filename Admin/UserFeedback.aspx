<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="UserFeedback.aspx.cs" Inherits="Admin_UserFeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 443px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin:auto width:400px">
<h2>Feedback List</h2>
    <p>&nbsp;</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" 
            DataSourceID="SqlDataSource1" 
            EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                    SortExpression="ID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="EmailID" HeaderText="EmailID" 
                    SortExpression="EmailID" />
                <asp:BoundField DataField="Feedback" HeaderText="Feedback" 
                    SortExpression="Feedback" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString1 %>" 
            DeleteCommand="DELETE FROM [FeedbackTable] WHERE [ID] = @ID" 
            InsertCommand="INSERT INTO [FeedbackTable] ([Name], [EmailID], [Feedback]) VALUES (@Name, @EmailID, @Feedback)" 
            ProviderName="<%$ ConnectionStrings:ASPNETDBConnectionString1.ProviderName %>" 
            SelectCommand="SELECT [ID], [Name], [EmailID], [Feedback] FROM [FeedbackTable]" 
            UpdateCommand="UPDATE [FeedbackTable] SET [Name] = @Name, [EmailID] = @EmailID, [Feedback] = @Feedback WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="EmailID" Type="String" />
                <asp:Parameter Name="Feedback" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="EmailID" Type="String" />
                <asp:Parameter Name="Feedback" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>&nbsp;</p>
</div>

</asp:Content>

