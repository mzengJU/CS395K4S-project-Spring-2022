<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentGrade.aspx.cs" Inherits="cs395projectK4S.StudentGrade" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
                 <div class="row text-center">
                       <h3 style="font-family: Times New Roman;" >Student Grade Report</h3>​
                 </div>​ <%--I am hoping that this can be a dynamic size, but I'm not sure how to that yet. However, we don't actually have to worry about it yet.--%>​
                 <table class="table">
                       <thead style="background-color:rgb(57,54,100); font-family:Times New Roman; color:white;">
                               <tr>
                                     <th scope="col">Class</th>
                                     <th scope="col">Grade</th>
                                     <th scope="col">Grade < C</th>
                               </tr>
                       </thead>
                       <tbody>
                               <tr style="background-color:white; color:black;">
                                     <th scope="row">Class 1</th>
                                     <td>Grade</td>
                                     <td>Flag</td>
                               </tr>
                               <tr style="background-color:lightgray; color:black;">
                                     <th scope="row">Class 2</th>
                                     <td>Grade</td>
                                     <td>Flag</td>
                               </tr>
                               <tr style="background-color: white; color:black;">
                                     <th scope="row">Class 3</th>
                                     <td>Grade</td>
                                     <td>Flag</td>
                               </tr>
                               <tr style="background-color:lightgray; color:black;">
                                     <th scope="row">Class 4</th>
                                     <td>Grade</td>
                                     <td>Flag</td>
                               </tr>
                               <tr style="background-color: white; color:black;">
                                     <th scope="row">Class 5</th>
                                     <td>Grade</td>
                                     <td>Flag</td>
                               </tr>
                               <tr style="background-color:lightgray; color:black;">
                                     <th scope="row">Class 6</th>
                                     <td>Grade</td>
                                     <td>Flag</td>
                               </tr>
                               <tr style="background-color: white; color:black;">
                                     <th scope="row">Class 7</th>
                                     <td>Grade</td>
                                     <td>Flag</td>
                               </tr>
                               <tr style="background-color:lightgray; color:black;">
                                     <th scope="row">Class 8</th>
                                     <td>Grade</td>
                                     <td>Flag</td>
                               </tr>
                               <tr style="background-color: white; color:black;">
                                     <th scope="row">Class 9</th>
                                     <td>Grade</td>
                                     <td>Flag</td>
                               </tr>
                               <tr style="background-color:lightgray; color:black;">
                                     <th scope="row">Class 10</th>
                                     <td>Grade</td>
                                     <td>Flag</td>
                               </tr>
                       </tbody>
                 </table>
</asp:Content>
