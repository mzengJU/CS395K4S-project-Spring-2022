<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ExampleStudentRegisterService.aspx.cs" Inherits="cs395projectK4S.ExampleStudentRegisterService" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="StudentEmail:XXXXXX"></asp:Label>
    <br>
    <asp:Label ID="Label2" runat="server" Text="Service:"></asp:Label>
    <asp:DropDownList ID="ServiceDropDownList" runat="server" autopostback="true" OnSelectedIndexChanged="ServiceDropDownList_SelectedIndexChanged1">
        <asp:ListItem Value="Default">None</asp:ListItem>
        <asp:ListItem Value="GED Tutoring & Testing">GED Tutoring & Testing</asp:ListItem>
        <asp:ListItem Value="Career Trade Certificate Boot Camps">Career Trade Certificate Boot Camps</asp:ListItem>

    </asp:DropDownList>
    <br>
    <asp:Label ID="Label3" runat="server" Text="Description:"></asp:Label>
    <br>
    <asp:Label ID="DescriptionLb" runat="server" Text="Label"></asp:Label>
    <br>
     <asp:Label ID="Label4" runat="server" Text="Frequency:"></asp:Label>
    <br>
    <asp:Label ID="FrequencyLb" runat="server" Text="Label"></asp:Label>
    <br>
    <br>
    <asp:Panel ID="CordinatePanel1" runat="server" Visible="False">
        Cordinate Panel1
        <br>
        <asp:Label ID="Label5" runat="server" Text="Weekdays:"></asp:Label>
        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
            <asp:ListItem>Monday</asp:ListItem>
            <asp:ListItem>Tuesday</asp:ListItem>
            <asp:ListItem>Wednesday</asp:ListItem>
            <asp:ListItem>Thursday</asp:ListItem>
            <asp:ListItem>Friday</asp:ListItem>
            <asp:ListItem>Saturday</asp:ListItem>
            <asp:ListItem>Sunday</asp:ListItem>
        </asp:CheckBoxList>

    </asp:Panel>
    <br>
    <asp:Panel ID="AssignedPanel2" runat="server" Visible="False">
        AssignedPanel2
        <br>
        <asp:Label ID="Label6" runat="server" Text="Month meeting options:"></asp:Label>
        <asp:CheckBoxList ID="MonthChecklist" runat="server">
           
        </asp:CheckBoxList>
    </asp:Panel>
</asp:Content>
