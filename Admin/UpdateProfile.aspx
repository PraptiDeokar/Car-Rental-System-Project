<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="UpdateProfile.aspx.cs" Inherits="Admin_UpdateProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div style="margin:auto;width:500px">
<br />
<h2>Your Profile</h2>
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Image ID="Image1" runat="server" Height="85px" Width="121px" />
            </td>
        </tr>
        <tr>
            <td>
                Name</td>
            <td>
                <asp:TextBox ID="NameTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Address</td>
            <td>
                <asp:TextBox ID="AddressTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Birth Date</td>
            <td>
                <asp:TextBox ID="BDateTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Gender</td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td>
                Qualification</td>
            <td>
                <asp:TextBox ID="QualTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Income</td>
            <td>
                <asp:TextBox ID="IncomeTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Photo</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Update Profile" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
    </table>

</div>
</asp:Content>

