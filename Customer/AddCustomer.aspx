<%@ Page MasterPageFile="~/Customer/MasterPage.master" Language="C#" AutoEventWireup="true" CodeFile="AddCustomer.aspx.cs" Inherits="Add_Customer" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
    .style1
    {
        height: 33px;
    }
</style>

</asp:Content>
<asp:Content ID="content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin:auto;width:600px">


    <table class="style1">
        <tr>
            <td class="style2" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ToolkitScriptManager 
                    ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                Add new customer details ::&nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Car ID</td>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Name</td>
            <td>
                <asp:TextBox ID="NameTextBox" runat="server" Width="230px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="NameTextBox" ErrorMessage="Required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td class="style2">
                Address</td>
            <td>
                <asp:TextBox ID="AddrTextBox" runat="server" Width="228px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="AddrTextBox" ErrorMessage="Required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Contact No.</td>
            <td>
                <asp:TextBox ID="noTextBox" runat="server" Width="228px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="noTextBox" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Email</td>
            <td>
                <asp:TextBox ID="emailTextBox" runat="server" Width="228px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="emailTextBox" ErrorMessage="Required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="Enter valid EmailId" ForeColor="#FF3300" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ControlToValidate="emailTextBox"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                City</td>
            <td>
                <asp:TextBox ID="cityTextBox" runat="server" Width="228px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="cityTextBox" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Photo</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                Pickup Date</td>
            <td>
                <asp:TextBox ID="PDateTextBox" runat="server" Width="100px"></asp:TextBox>
                <asp:CalendarExtender ID="PDateTextBox_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="PDateTextBox">
                </asp:CalendarExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="PDateTextBox" ErrorMessage="Required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Drop Date</td>
            <td>
                <asp:TextBox ID="DDateTextBox" runat="server" Width="100px"></asp:TextBox>
                <asp:CalendarExtender ID="DDateTextBox_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="DDateTextBox">
                </asp:CalendarExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="DDateTextBox" ErrorMessage="Required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Days</td>
            <td>
                <asp:TextBox ID="DaysTextBox" runat="server" Width="100px" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="DaysTextBox" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                </td>
            <td class="style1">
                <asp:Button ID="Button1" runat="server" Text="Book Car" 
                    onclick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <div>
    
    </div>
    </div>
    </asp:Content>

