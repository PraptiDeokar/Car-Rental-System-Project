<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/MasterPage.master" AutoEventWireup="true" CodeFile="UserFeedback.aspx.cs" Inherits="Admin_UserFeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 535px;
    }
    .style2
    {
        width: 158px;
    }
    .style3
    {
        width: 407px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin:auto width:400px">
<h2> Please provide your feedback</h2>


    <table class="style1">
        <tr>
            <td class="style2">
                Name</td>
            <td class="style3">
                <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Email ID</td>
            <td class="style3">
                <asp:TextBox ID="TextBox2" runat="server" Width="297px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Feedback</td>
            <td class="style3">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Width="298px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:Button ID="Button1" runat="server" Text="submit" onclick="Button1_Click" />
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
    </table>


    <br />


</div>

</asp:Content>

