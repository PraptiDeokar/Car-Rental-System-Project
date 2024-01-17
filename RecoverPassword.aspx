<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RecoverPassword.aspx.cs" Inherits="RecoverPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin:auto width:400px">

Forgot Password


    <br />
    <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" BackColor="#F7F7DE" 
        BorderColor="#CCCC99" BorderStyle="Solid" BorderWidth="1px" 
        Font-Names="Verdana" Font-Size="10pt" Height="215px" Width="477px" 
            onsendingmail="PasswordRecovery1_SendingMail">
        <MailDefinition BodyFileName="~/pwdTextFile.txt" Subject="New Password">
        </MailDefinition>
        <TitleTextStyle BackColor="#6B696B" Font-Bold="True" ForeColor="#FFFFFF" />
    </asp:PasswordRecovery>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />


</div>


</asp:Content>

