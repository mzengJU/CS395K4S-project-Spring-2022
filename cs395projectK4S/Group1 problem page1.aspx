<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Group1 problem page1.aspx.cs" Inherits="cs395projectK4S.Group1_problem_page1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Table ID="Table2" runat="server" BackColor="#0099FF" BorderColor="White" BorderStyle="Solid" CssClass="Table" GridLines="Both">
     <asp:TableRow runat="server" CssClass="Header" Font-Bold="True" Font-Overline="False" VerticalAlign="Top" BorderStyle="Solid" Height="5px" HorizontalAlign="Center">
                <asp:TableHeaderCell runat="server" CssClass="Header" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Top" BorderStyle="Solid">Service(s)</asp:TableHeaderCell>
                <asp:TableHeaderCell runat="server" CssClass="Header" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Top" BorderStyle="Solid">Duration</asp:TableHeaderCell>
                <asp:TableHeaderCell runat="server" CssClass="Header" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Top" BorderStyle="Solid">Completed Hours</asp:TableHeaderCell>
                <asp:TableHeaderCell runat="server" CssClass="Header" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Top" BorderStyle="Solid">Remaining Hours</asp:TableHeaderCell>
            </asp:TableRow>
            <asp:TableRow runat="server" CssClass="fit">
                <asp:TableCell runat="server">
                    <asp:ListBox ID="ListBox2" runat="server">

                    </asp:ListBox>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Literal ID="Literal2" runat="server">

                    </asp:Literal>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="TextBox3" runat="server">

                    </asp:TextBox>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="TextBox4" runat="server">

                    </asp:TextBox>
                </asp:TableCell>
    </asp:TableRow>
</asp:Table>
                 <br />
        <asp:Button ID="Button1" runat="server" CssClass="alert-danger" OnClick="Button1_Click" Text="Remove" />
        <br />

</asp:Content>
