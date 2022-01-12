<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentService.aspx.cs" Inherits="cs395projectK4S.StudentService" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="EmailLb" runat="server" Text="Student Email:"></asp:Label>
    <asp:TextBox ID="EmailTx" runat="server"></asp:TextBox>

    <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
    <br>
    <br>
    <asp:Label ID="ServiceTableLb" runat="server" Text="ServiceTable"></asp:Label>

</asp:Content>
