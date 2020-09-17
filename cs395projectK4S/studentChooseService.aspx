<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="studentChooseService.aspx.cs" Inherits="cs395projectK4S.studentChooseService" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div style="position: relative; padding-left: 500px">
        
        <asp:ListBox ID="ListBox1" runat="server" Height="300px" Width="200px">
            <asp:ListItem>ServiceName1</asp:ListItem>
            <asp:ListItem>ServiceName2</asp:ListItem>
            <asp:ListItem>ServiceName3</asp:ListItem>
            <asp:ListItem>ServiceName4</asp:ListItem>
            <asp:ListItem>ServiceName5</asp:ListItem>
            <asp:ListItem>ServiceName6</asp:ListItem>
            <asp:ListItem>ServiceName7</asp:ListItem>
        </asp:ListBox>
        
        <asp:Button ID="Button1" runat="server" Text="Add   >>>" />
        <asp:Button ID="Button2" runat="server" Text="Remove <<<" />
        
            
        
        <asp:ListBox ID="ListBox2" runat="server" Height="300px" Width="200px">
            <asp:ListItem>SelectedItems</asp:ListItem>
        </asp:ListBox>
        
    </div>
    <div style="position: relative; padding-left: 500px">
        <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox>
    </div>
    

</asp:Content>
