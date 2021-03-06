<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentLandingPage.aspx.cs" Inherits="cs395projectK4S.StudentLandingPage" %>

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
                    <asp:Button ID="Button2" runat="server" Text="Profiling" class="btn btn-primary" OnClick="Button2_Click1"/>
				</div>
			</div>

		</div>
		<div class="col-lg-3">
			<div class="panel panel-default">
				<div class="panel-body" style="text-align: center">
					<img src="services.png" height="200" width="200">
				</div>
				<div class="panel-footer" style="text-align: center">
                    <asp:Button ID="Button3" runat="server" Text="Services" class="btn btn-primary" OnClick="Button3_Click"/>
					
				</div>
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
                    <asp:Button type="button" class="btn btn-primary" ID="Button1" runat="server" Text="Grade" OnClick="Button1_Click" />
					
				</div>
			</div>
		</div>
		<div class="col-lg-3">
			<div class="panel panel-default" style="text-align: center">
				<div class="panel-body">
					<img src="forms.png" height="200" width="200">
				</div>
				<div class="panel-footer" style="text-align: center">
                    <asp:Button ID="Button4" runat="server" Text="Forms" class="btn btn-primary" OnClick="Button4_Click"/>
					
				</div>
			</div>
		</div>

	</div>
</asp:Content>
