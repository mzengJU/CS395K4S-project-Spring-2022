<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StaffStudentProfiling.aspx.cs" Inherits="cs395projectK4S.StaffStudentProfiling" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
                       <div class="col-sm-3">
                       <asp:Image ID="Image1" runat="server"  class="img-thumbnail" width="200" height="200" style="position: relative; left: 50px; border:groove; "/>
                       </div>
                        Alerts:   <%-- Keeping the design simple incase it needs to change when we implement the Alerting System. --%>
     </div>
    
                 <table class="table table-striped"  style="margin-top:50px; font-family:Times New Roman; background-color: lightgray">
                       <thead style="background-color:rgb(57,54,100); font-family:Times New Roman; color:white;">
                               <tr>
                                     <th>Student Account: <asp:Label ID="welcomeLb" runat="server" Text=""></asp:Label></th>
                               </tr>
                       </thead>
                       <tbody>
                               <tr style="background-color:white; color:black;">
                                     <th>Name: <asp:Label ID="LbName" runat="server" Text=""></asp:Label></th>
                                     <th></th>
                                     <th></th>
                               </tr>
                               <tr style="background-color: lightgray; color:black;">
                                     <th>Gender: <asp:Label ID="LbGender" runat="server" Text=""></asp:Label></th>
                                     <th>Race: <asp:Label ID="LbRace" runat="server" Text=""></asp:Label></th>
                                     
                               </tr>
                               <tr style="background-color:white; color:black;">
                                     <th>Age: <asp:Label ID="LbAge" runat="server" Text=""></asp:Label></th>
                                     <th>--</th>
                                     <th>Date of Birth: <asp:Label ID="LbDOB" runat="server" Text=""></asp:Label></th>
                               </tr>
                               <tr style="background-color: lightgray; color:black;">
                                     <th>US Citizen: <asp:Label ID="LbCitizen" runat="server" Text=""></asp:Label></th>
                                     <th></th>
                                     <th></th>
                               </tr>
                               <tr style="background-color:white; color:black;">
                                     <th>Higest Grade Completed: <asp:Label ID="LbGradeLevel" runat="server" Text=""></asp:Label></th>
                                     <th></th>
                                     <th></th>
                               </tr>
                               <tr style="background-color: lightgray; color:black;">
                                     <th>School Attending: <asp:Label ID="LbSchoolName" runat="server" Text=""></asp:Label></th>
                                     <th>School Address: <asp:Label ID="LbSchoolAddr" runat="server" Text=""></asp:Label></th>
                                     <th></th>
                        
                               </tr>
                               <tr style="background-color:white; color:black;">
                                     <th>Employer: <asp:Label ID="LbBusinessName" runat="server" Text=""></asp:Label></th>
                                     <th>Employer Address: <asp:Label ID="LbBusinessAddr" runat="server" Text=""></asp:Label></th>
                                     <th></th>
                                   
                               </tr>
                               <tr style="background-color: lightgray; color:black;">
                                     <th>Home Address: <asp:Label ID="LbHomeAddr" runat="server" Text=""></asp:Label></th>
                                     <th>City and State: <asp:Label ID="LbHomeCityandState" runat="server" Text=""></asp:Label></th>
                                     <th>Zip Code: <asp:Label ID="LbHomeZip" runat="server" Text=""></asp:Label></th>
                               </tr>
                               <tr style="background-color:white; color:black;">
                                     <th>Student Primary Phone Number: <asp:Label ID="LbPhoneNo" runat="server" Text=""></asp:Label></th>
                                     <th>Student Primary Email: <asp:Label ID="LbEmail" runat="server" Text=""></asp:Label></th>
                                     <th></th>
                               </tr>
                               <tr style="background-color: lightgray; color:black;">
                                     <th>Parent/Gaurdian Name: <asp:Label ID="LbParentName" runat="server" Text=""></asp:Label></th>
                                     <th>Parent Phone Number: <asp:Label ID="LbParentPhoneNo" runat="server" Text=""></asp:Label></th>
                                     <th>Email: <asp:Label ID="LbParentEmail" runat="server" Text=""></asp:Label></th>
                               </tr>
                           </tbody>
                 </table>
    <asp:Button ID="btEdit" runat="server" Text="Edit" class="btn btn-primary btn-md" OnClick="btEdit_Click" />
</asp:Content>
