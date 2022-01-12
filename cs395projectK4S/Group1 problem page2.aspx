<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Group1 problem page2.aspx.cs" Inherits="cs395projectK4S.Group1_problem_page2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 92px; top: 1390px; position: absolute;
        height: 25px; width: 210px" Text="Select Service(s)"></asp:Label>
        <asp:DropDownList ID="Serviceddl" runat="server" DataSourceID="cs395projectdemoDB">
        </asp:DropDownList>
         <span class="important">
        <asp:TextBox ID="Desctbx" runat="server" TextMode="MultiLine" Wrap="True" 
            CssClass="descriptor" BorderStyle="Solid" MaxLength="250" ReadOnly="True"></asp:TextBox> 
        </span>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" style="text-align: left; z-index: 1; left: 109px; top: 1587px; position: absolute; height: 31px; width: 290px" Text="Service(s) Description"></asp:Label>
        <div position: absolute; height: 36px; width: 1254px">
            <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999"
                BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
                ForeColor="Black" GridLines="Horizontal" AutoGenerateColumns="false">
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
                <Columns>
                    <asp:TemplateField HeaderText="Months">
                        <ItemTemplate>
                            <asp:ListBox ID="MonthsRangelbx" runat="server"></asp:ListBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Meeting Days">
                        <ItemTemplate>
                            <asp:TextBox ID="Daystbx" runat="server"></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Meeting Time">
                        <ItemTemplate>
                            <asp:DropDownList ID="Timeddl" runat="server"></asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                   <asp:TemplateField HeaderText="Hours Needed">
                       <ItemTemplate>
                           <asp:TextBox ID="Hourstbx" runat="server"></asp:TextBox>
                       </ItemTemplate>
                   </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
        <asp:Button ID="RgsBtn" runat="server" CssClass="Register" Text="Register" />   
</asp:Content>
