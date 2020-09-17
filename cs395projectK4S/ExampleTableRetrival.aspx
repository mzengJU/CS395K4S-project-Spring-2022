<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ExampleTableRetrival.aspx.cs" Inherits="cs395projectK4S.ExampleTableRetrival" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<asp:Label ID="Label1" runat="server" Text="Student Account Name"></asp:Label>
	<asp:TextBox ID="studentAccountTbx" runat="server"></asp:TextBox>
	<asp:Button ID="submitBt" runat="server" Text="Submit" OnClick="submitBt_Click" />
	
	<asp:Label ID="Servicelabel" runat="server" Text=""></asp:Label>
</asp:Content>
