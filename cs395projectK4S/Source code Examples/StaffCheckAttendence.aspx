<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StaffCheckAttendence.aspx.cs" Inherits="cs395projectK4S.StaffCheckAttendence" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Youth Email:"></asp:Label>
    <asp:TextBox ID="EmailTb" runat="server"></asp:TextBox>
    <br>
    <br>
    <asp:Label ID="Label2" runat="server" Text="Youth Name:"></asp:Label>
    <asp:TextBox ID="NameTb" runat="server"></asp:TextBox>
    <br>
    <br>
    <asp:Label ID="Label3" runat="server" Text="Service:"></asp:Label>
    <asp:DropDownList ID="ServiceDropDownList1" runat="server">
        <asp:ListItem Value="AcademicEnrichment"> Academic Enrichment </asp:ListItem>
        <asp:ListItem Value="CareerTradeCertificateBootCamps"> Career Trade Certificate Boot Camps </asp:ListItem>

    </asp:DropDownList>
    <br>
    <br>
    <asp:Label ID="Label4" runat="server" Text="Date:"></asp:Label>
    <asp:TextBox ID="monthTb" runat="server" Text="MM"></asp:TextBox>
    /
    <asp:TextBox ID="dayTb" runat="server" Text="DD"></asp:TextBox>
    /
    <asp:TextBox ID="yearTb" runat="server" Text="YYYY"></asp:TextBox>
    <br>
    <br>
    <asp:Label ID="Label5" runat="server" Text="Time:"></asp:Label>
    <asp:TextBox ID="StartHourTb" runat="server" Text="hh"></asp:TextBox>
    :
    <asp:TextBox ID="StartMinTb" runat="server" Text="mm"></asp:TextBox>
    <asp:DropDownList ID="TimeDropDownList2" runat="server">
        <asp:ListItem Value="AM">AM</asp:ListItem>
        <asp:ListItem Value="PM">PM</asp:ListItem>
    </asp:DropDownList>
  
    <br>
    <br>
    <asp:Label ID="Label6" runat="server" Text="Duration:"></asp:Label>
    <asp:TextBox ID="durationTb" runat="server" Text="0"></asp:TextBox>Hours
    <br>
    <br>
    <asp:Button ID="SubmitBt" runat="server" Text="Submit" OnClick="SubmitBt_Click" />
</asp:Content>
