<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StaffLandingPage.aspx.cs" Inherits="cs395projectK4S.StaffLandingPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row" style="width: 1700px">
        <div class="col-lg-3">
			<asp:Label ID="welcomeLb" runat="server" Text=""></asp:Label>
            <asp:Button ID="Button5" runat="server" Text="Log Out" class="btn btn-primary" OnClick="Button5_Click"/>
		</div>
        <div class="col-lg-3">
            <div class="panel panel-default">
                <div class="panel-body" style="text-align: center">
                    <img src="profiling.png" height="200" width="200">
                </div>
                <div class="panel-footer" style="text-align: center">
                    <asp:Button ID="Button1" runat="server" Text="Profiling" class="btn btn-primary" OnClick="Button1_Click"/>
                    
                </div>
            </div>

        </div>
        <div class="col-lg-3">
            <div class="panel panel-default">
                <div class="panel-body" style="text-align: center">
                    <img src="services.png" height="200" width="200">
                </div>
                <div class="panel-footer" style="text-align: center">
                    <button type="button" class="btn btn-primary">Services</button></div>
            </div>
        </div>

    </div>
    <div class="row" style="width: 1700px">
    </div>
    <div class="row" style="width: 1700px">
        <div class="col-lg-offset-3 col-lg-3">
            <div class="panel panel-default">
                <div class="panel-body" style="text-align: center">
                    <img src="grades-icon-17.jpg" height="200" width="200">
                </div>
                <div class="panel-footer" style="text-align: center">
                    <button type="button" class="btn btn-primary">Grade</button></div>
            </div>
        </div>
        <div class="col-lg-3">
            <div class="panel panel-default" style="text-align: center">
                <div class="panel-body">
                    <img src="forms.png" height="200" width="200">
                </div>
            <div class="panel-footer" style="text-align: center">
                <button type="button" class="btn btn-primary">Forms</button></div>
        </div>
    </div>

    </div>
</asp:Content>
