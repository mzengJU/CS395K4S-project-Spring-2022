<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StaffNeedForms.aspx.cs" Inherits="cs395projectK4S.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<%--    // Dates query from DB
    // Checkbox query from DB--%>

        <div class="row">
          <div class="col-lg-4">Form Name </div>
          <div class="col-lg-4">Date Completed</div>
          <div class="col-lg-4">CheckBox (Y/N)</div>
        </div>
        <div class="row">
          <div class="col-lg-4">Eligibility Cheklist </div>
          <div class="col-lg-4">Date</div>
          <div class="col-lg-4"><asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" /></div>
        </div>
        <div class="row">
          <div class="col-lg-4">GED Assessment Intake Form </div>
          <div class="col-lg-4">Date</div> 
          <div class="col-lg-4"><asp:CheckBox ID="CheckBox2" runat="server" OnCheckedChanged="CheckBox2_CheckedChanged" /></div>
        </div>
        <div class="row">
          <div class="col-lg-4">K4S Needs Assessment </div>
          <div class="col-lg-4">Date</div>
          <div class="col-lg-4"><asp:CheckBox ID="CheckBox3" runat="server" OnCheckedChanged="CheckBox3_CheckedChanged" /></div>
        </div>
        <div class="row">
          <div class="col-lg-4">Orientation and Registration Packet </div>
          <div class="col-lg-4">Date</div>
          <div class="col-lg-4"><asp:CheckBox ID="CheckBox4" runat="server" OnCheckedChanged="CheckBox4_CheckedChanged" /></div>
        </div>
        <div class="row">
          <div class="col-lg-4">Youth Service Plan Checklist </div>
          <div class="col-lg-4">Date</div>
          <div class="col-lg-4"><asp:CheckBox ID="CheckBox5" runat="server" OnCheckedChanged="CheckBox5_CheckedChanged" /></div>
        </div>

        <div class="row">
          <div class="col-lg-4">Youth Service Plan Schedule </div>
          <div class="col-lg-4">Date</div>
          <div class="col-lg-4"><asp:CheckBox ID="CheckBox6" runat="server" OnCheckedChanged="CheckBox6_CheckedChanged" /></div>
        </div>

            </div>
    </div>
</asp:Content>


