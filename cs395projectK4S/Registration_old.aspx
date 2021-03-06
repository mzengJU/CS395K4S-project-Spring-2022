<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="cs395projectK4S.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<div class="container">
        <form class="form-horizontal" action="/action_page.php">
			<div class="form-group row">
                <label class="control-label col-lg-offset-3 col-lg-3" for="name" style="text-align: end">First Name:</label>
                <div class="col-lg-3">
                    <input class="form-control" id="fname" runat="server" placeholder="Enter your First Name" name="fname">
                </div>
            </div>
			<div class="form-group row">
                <label class="control-label col-lg-offset-3 col-lg-3" for="name" style="text-align: end">Last Name:</label>
                <div class="col-lg-3">
                    <input class="form-control" id="lname" runat="server" placeholder="Enter your Last Name" name="lname">
                </div>
            </div>
            <div class="form-group row">
                <label class="control-label col-lg-offset-3 col-lg-3" for="email" style="text-align: end">Email:</label>
                <div class="col-lg-3">
                    <input type="email" class="form-control" id="email" runat="server" placeholder="Enter email" name="email">
                </div>
            </div>
            
            <div class="form-group row">
                <label class="control-label col-lg-offset-3 col-lg-3" for="pwd" style="text-align: end">Password:</label>
                <div class="col-lg-3">
                    <input type="password" class="form-control" id="pwd" runat="server" placeholder="Enter password" name="pwd">
                </div>
            </div>
           
			<div class="form-group row">
                <label class="control-label col-lg-offset-3 col-lg-3" for="pwd" style="text-align: end">Confirm Password:</label>
                <div class="col-lg-3">
                    <input type="password" class="form-control" id="confirmPwd" runat="server" placeholder="Reenter your password" name="confirmPwd">
                </div>
            </div>
            
            <div class="form-group row">

                <label class="control-label col-lg-offset-3 col-lg-3" for="role" style="text-align: end">Role</label>

                <div class="col-lg-3">
                    <div class="dropdown">
                        <asp:DropDownList class="btn btn-primary dropdown-toggle" ID="role" runat="server">
                            <asp:ListItem Text="Student" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Staff" Value="2"></asp:ListItem>
                            <asp:ListItem Text="Admin" Value="3"></asp:ListItem>

                        </asp:DropDownList>
                        <%--<button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">
                            Choose your role
  <span class="caret"></span>
                        </>
                        <ul class="dropdown-menu">
                            <li>Student/Parent</li>
                            <li>Staff</li>
                            <li>Admin</li>
                        </ul>--%>
                    </div>
                </div>
            </div>
           
            <div class="form-group row col-lg-offset-6 col-lg-6">

                <div class="checkbox">
                    <label>
                        <input type="checkbox" name="remember">
                        Remember me</label>
                </div>

            </div>
            <div class="form-group row col-lg-offset-6 col-lg-6">
                <button type="submit" class="btn btn-default">Sign Up</button>

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        

                <asp:Button ID="Button1" class="btn btn-default" runat="server" Text="Submit" OnClick="Button1_Click" />
				<br />
				<asp:Panel ID="warningPanel" runat="server" Visible="False"><asp:Label ID="warning" runat="server" Text="Label" ForeColor="#FF3300" >The password and confirm password not match.</asp:Label></asp:Panel>
                
            </div>
        </form>

    </div>
</asp:Content>
