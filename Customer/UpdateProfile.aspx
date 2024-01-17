<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/MasterPage.master" AutoEventWireup="true" CodeFile="UpdateProfile.aspx.cs" Inherits="Admin_UpdateProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 95px;
        }
        .style2
        {
            width: 163px;
        }
        .style3
        {
            width: 274px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div style="margin:auto;width:500px">
<br />
<h2>Your Profile</h2>
    <table class="style1">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:Image ID="Image1" runat="server" Height="85px" Width="121px" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                Name</td>
            <td class="style3">
                <asp:TextBox ID="NameTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Address</td>
            <td class="style3">
                <asp:TextBox ID="AddressTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Birth Date</td>
            <td class="style3">
                <asp:TextBox ID="BDateTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Gender</td>
            <td class="style3">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Qualification</td>
            <td class="style3">
                <asp:TextBox ID="QualTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Income</td>
            <td class="style3">
                <asp:TextBox ID="IncomeTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Photo</td>
            <td class="style3">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Update Profile" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
    </table>

</div>
</asp:Content>

