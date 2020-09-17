<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StaffEditProfiling.aspx.cs" Inherits="cs395projectK4S.StaffEditProfiling" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-sm-3">
            <asp:Image ID="Image1" runat="server"  class="img-thumbnail" width="200" height="200" style="position: relative; left: 50px; border:groove; "/>
        </div>
        Alerts:   <%-- Keeping the design simple incase it needs to change when we implement the Alerting System. --%>
    </div>

    <table class="table table-striped" style="margin-top: 50px; font-family: Times New Roman; background-color: lightgray">
        <thead style="background-color: rgb(57,54,100); font-family: Times New Roman; color: white;">
            <tr>
                <th>Student Account:
                    <asp:Label ID="welcomeLb" runat="server" Text=""></asp:Label></th>
            </tr>
        </thead>
        <tbody>
            <tr style="background-color: white; color: black;">
                <th>Fname:
                    <asp:TextBox ID="textbox1" class="form-control"  runat="server" maxlength="25" Text=""></asp:TextBox></th>
                <th style="width: 496px">Lname:
                    <input type="text" class="form-control" runat="server" id="tbLname" maxlength="25" /></th>
                <th></th>
                <th></th>
            </tr>
            <tr style="background-color: lightgray; color: black;">
                <th>Gender:<input type="text" class="form-control" runat="server" id="tbGender" maxlength="5" /></th>
                <th style="width: 496px">Race:<input type="text" class="form-control" runat="server" id="tbRace" maxlength="15" /></th>
                <th></th>
                <th></th>

            </tr>
            <tr style="background-color: white; color: black;">
                <th>Age:
                    <input type="text" class="form-control" runat="server" id="tbAge" maxlength="3" /></th>
                <th style="width: 496px">--</th>
                <th>Date of Birth (MM/DD/YYYY):<input type="text" class="form-control" runat="server" id="tbDOB" maxlength="15" /></th>
                <th></th>
            </tr>
            <tr style="background-color: lightgray; color: black;">
                <th>US Citizen (YES/NO):
                    <input type="text" class="form-control" runat="server" id="tbCitizenship" maxlength="3" /></th>
                <th style="width: 496px"></th>
                <th></th>
                <th></th>
            </tr>
            <tr style="background-color: white; color: black;">
                <th>Higest Grade Completed:
                    <input type="text" class="form-control" runat="server" id="tbHighestGrade" maxlength="25" /></th>
                <th style="width: 496px"></th>
                <th></th>
                <th></th>
            </tr>
            <tr style="background-color: lightgray; color: black;">
                <th>School Attending:
                    <input type="text" class="form-control" runat="server" id="tbSchool" maxlength="25" /></th>
                <th style="width: 496px">School Address (Including address line, city, state and zip code):
                    <input type="text" class="form-control" runat="server" id="tbSchoolAddress" maxlength="100" /></th>
                <th></th>

            </tr>
            <tr style="background-color: white; color: black;">
                <th>Employer:
                    <input type="text" class="form-control" runat="server" id="tbEmployer" maxlength="25" /></th>
                <th style="width: 496px">Employer Address (Including address line, city, state and zip code):
                    <input type="text" class="form-control" runat="server" id="tbEmployerAddress" maxlength="50" /></th>       
                <th></th>
                <th></th>

            </tr>
            <tr style="background-color: lightgray; color: black;">
                <th>Home Address (Just the address line):<input type="text" class="form-control" runat="server" id="tbHomeAddress" maxlength="100" />
                </th>
                <th style="width: 496px">Home City:<input type="text" class="form-control" runat="server" id="tbHomeCity" maxlength="25" />
                </th>
                <th>Home State:<input type="text" class="form-control" runat="server" id="tbHomeState" maxlength="10" /></th>
                <th>Zip Code:
                    <input type="text" class="form-control" runat="server" id="tbHomeZip" maxlength="9" /></th>
            </tr>
            <tr style="background-color: white; color: black;">
                <th>Student Primary Phone Number:
                    <input type="text" class="form-control" runat="server" id="tbPhoneNo" maxlength="25" /></th>
                <th style="width: 496px">Student Primary Email:
                    <asp:Label ID="LbEmail" runat="server" Text=""></asp:Label></th>
                <th></th>
                <th></th>
            </tr>
            <tr style="background-color: lightgray; color: black;">
                <th>Parent/Gaurdian Name:
                    <input type="text" class="form-control" runat="server" id="tbParentName" maxlength="50" /></th>
                <th style="width: 496px">Parent Phone Number:
                    <input type="text" class="form-control" runat="server" id="tbParentPhoneNo" maxlength="25" /></th>
                <th>Parent Email:
                    <input type="text" class="form-control" runat="server" id="tbParaentEmail" maxlength="25" /></th>
                <th></th>
            </tr>
        </tbody>
    </table>
    <asp:Button ID="btSubmit" runat="server" Text="Submit" class="btn btn-primary btn-md" OnClick="btSubmit_Click" />
</asp:Content>
