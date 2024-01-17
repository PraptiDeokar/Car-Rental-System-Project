<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/MasterPage.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="Admin_ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 293px;">
<h2>Change Password</h2>
</br>
    <asp:ChangePassword ID="ChangePassword1" runat="server" BackColor="#F7F7DE" 
        BorderColor="#CCCC99" BorderStyle="Solid" BorderWidth="1px" 
        ContinueDestinationPageUrl="~/Admin/Home.aspx" Font-Names="Verdana" 
        Font-Size="10pt" Height="203px">
        <TitleTextStyle BackColor="#6B696B" Font-Bold="True" ForeColor="#FFFFFF" />
    </asp:ChangePassword>
    <br />
</div>
</asp:Content>

