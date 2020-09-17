<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentSignupServicesTest.aspx.cs" Inherits="cs395projectK4S.StudentSignupServicesTest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="margin-left: 500px">
    <asp:ListBox ID="ListBox1" runat="server" Height="300" Width="200">
         <asp:ListItem>Service1</asp:ListItem>
         <asp:ListItem>Service2</asp:ListItem>
         <asp:ListItem>Service3</asp:ListItem>

    </asp:ListBox>
    <asp:Button ID="Button1" runat="server" Text="Add >>>" />
    <asp:Button ID="Button2" runat="server" Text="Remove <<<" />
    <asp:ListBox ID="ListBox2" runat="server" Height="300" Width="200">
        <asp:ListItem>SelectedService1</asp:ListItem>
         <asp:ListItem>SelectedService2</asp:ListItem>
    </asp:ListBox>
    </div>
    <div style="margin-left: 500px">
    <asp:Button ID="Button3" runat="server" Text="Submit" />
    </div>
</asp:Content>
