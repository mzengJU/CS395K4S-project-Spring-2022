<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="cs395projectK4S._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        function showDiv(divId, element) {
            document.getElementById(divId).style.display = element.value == 2 ? 'block' : 'none';
        }
    </script>
    <div class="container">
        <form class="form-horizontal" action="/action_page.php">
            <div class="form-group">
                <label class="control-label col-lg-offset-3 col-lg-3" for="email" style="text-align: end">Email:</label>
                <div class="col-lg-3">
                    <input type="email" class="form-control" id="email" runat="server" placeholder="Enter email" name="email">
                </div>
            </div>
            <br>
            <br>
            <div class="form-group">
                <label class="control-label col-lg-offset-3 col-lg-3" for="pwd" style="text-align: end">Password:</label>
                <div class="col-lg-3">
                    <input type="password" class="form-control" id="pwd" runat="server" placeholder="Enter password" name="pwd">
                </div>
            </div>
            <br>
            <br>
            <div class="form-group">

                <label class="control-label col-lg-offset-3 col-lg-3" for="pwd" style="text-align: end">Role</label>

                <div class="col-lg-3">
                    <div class="dropdown">
                        <asp:DropDownList class="btn btn-primary dropdown-toggle" ID="role" runat="server" onchange="showDiv('hidden_div', this)">
                            <asp:ListItem Text="Student" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Staff" Value="2"></asp:ListItem>
                            <asp:ListItem Text="Admin" Value="3"></asp:ListItem>

                        </asp:DropDownList>
                    </div>
                </div>


                <div id="hidden_div" style="display: none">
                    <br>
                    <br>
                    <br>
                   
                    <label class="control-label col-lg-offset-3 col-lg-3" for="pwd" style="text-align: end">Staff Code:</label>
                    <div class="col-lg-3">
                        <input type="password" class="form-control" id="staffcode" runat="server" placeholder="Enter your staff code" name="staffcode">
                    </div>
                </div>
            </div>
            <br>
            <div class="form-group col-lg-offset-6 col-lg-6">

                <div class="checkbox">
                    <label>
                        <input type="checkbox" name="remember">
                        Remember me</label>
                </div>

            </div>
            <div class="form-group col-lg-offset-6 col-lg-6">
                <%--<asp:Button ID="Button2" CssClass="btn btn-default" runat="server" Text="Sign Up" OnClick="Button2_Click" />--%>
                <asp:Button ID="Button3" runat="server" CssClass="btn btn-default" Text="Sign Up" OnClick="Button3_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        

                <asp:Button ID="Button1" class="btn btn-default" runat="server" Text="Submit" OnClick="Button1_Click" />
                <asp:Label ID="warning" runat="server" Text="Label" ForeColor="#FF3300" Visible="False">The account not exist or user name and password not match.</asp:Label>
            </div>
        </form>

    </div>
</asp:Content>
