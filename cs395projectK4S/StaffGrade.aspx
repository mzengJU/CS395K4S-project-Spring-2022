<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StaffGrade.aspx.cs" Inherits="cs395projectK4S.StaffGrade" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="m-5">

        <%-- Controls the Margins --%>

        <div class="jumotron text-center">


            <h1 style="font-family: Times New Roman;">Grade Input</h1>


        </div>

        <div class="row">

            <div class="form-group col-lg-6">

                <label style="font-family: Times New Roman;" for="studentEmail">Student Email:</label>

                <input type="text" class="form-control" id="studentEmail" />

            </div>

            <label></label>



        </div>

    </div>

    <div class="row">

        <div class="form-group col-lg-6">

            <label style="font-family: Times New Roman;" for="calssOne">Class 1:</label>

            <input type="text" class="form-control" id="classOne" />

        </div>

        <label></label>

        <div class="form-group col-lg-6">

            <label style="font-family: Times New Roman;" for="gradeOne">Grade From Class 1:</label>

            <input type="text" class="form-control" id="gradeOne" />

        </div>

    </div>

    <div class="row">

        <div class="form-group col-lg-6">

            <label style="font-family: Times New Roman;" for="calssTwo">Class 2:</label>

            <input type="text" class="form-control" id="classTwo" />

        </div>

        <label></label>

        <div class="form-group col-lg-6">

            <label style="font-family: Times New Roman;" for="gradeTwo">Grade From Class 2:</label>

            <input type="text" class="form-control" id="gradeTwo" />

        </div>

    </div>

    <div class="row">

        <div class="form-group col-lg-6">

            <label style="font-family: Times New Roman;" for="calssThree">Class 3:</label>

            <input type="text" class="form-control" id="classThree" />

        </div>

        <label></label>

        <div class="form-group col-lg-6">

            <label style="font-family: Times New Roman;" for="gradeThree">Grade From Class 3:</label>

            <input type="text" class="form-control" id="gradeThree" />

        </div>

    </div>

    <div class="row">

        <div class="form-group col-lg-6">

            <label style="font-family: Times New Roman;" for="calssFour">Class 4:</label>

            <input type="text" class="form-control" id="classFour" />

        </div>

        <label></label>

        <div class="form-group col-lg-6">

            <label style="font-family: Times New Roman;" for="gradeFour">Grade From Class 4:</label>

            <input type="text" class="form-control" id="gradeFour" />

        </div>

    </div>

    <div class="row">

        <div class="form-group col-lg-6">

            <label style="font-family: Times New Roman;" for="calssFive">Class 5:</label>

            <input type="text" class="form-control" id="classFive" />

        </div>

        <label></label>

        <div class="form-group col-lg-6">

            <label style="font-family: Times New Roman;" for="gradeFive">Grade From Class 5:</label>

            <input type="text" class="form-control" id="gradeFive" />

        </div>

    </div>

    <div class="row">

        <div class="form-group col-lg-6">

            <label style="font-family: Times New Roman;" for="calssSix">Class 6:</label>

            <input type="text" class="form-control" id="classSix" />

        </div>

        <label></label>

        <div class="form-group col-lg-6">

            <label style="font-family: Times New Roman;" for="gradeSix">Grade From Class 6:</label>

            <input type="text" class="form-control" id="gradeSix" />

        </div>

    </div>

    <div class="row">

        <div class="form-group col-lg-6">

            <label style="font-family: Times New Roman;" for="calssSeven">Class 7:</label>

            <input type="text" class="form-control" id="classSeven" />

        </div>

        <label></label>

        <div class="form-group col-lg-6">

            <label style="font-family: Times New Roman;" for="gradeSeven">Grade From Class 7:</label>

            <input type="text" class="form-control" id="gradeSeven" />

        </div>

    </div>

    <div class="row">

        <div class="form-group col-lg-6">

            <label style="font-family: Times New Roman;" for="calssEight">Class 8:</label>

            <input type="text" class="form-control" id="classEight" />

        </div>

        <label></label>

        <div class="form-group col-lg-6">

            <label style="font-family: Times New Roman;" for="gradeEight">Grade From Class 8:</label>

            <input type="text" class="form-control" id="gradeEight" />

        </div>

    </div>

    <div class="row">

        <div class="form-group col-lg-6">

            <label style="font-family: Times New Roman;" for="calssNine">Class 9:</label>

            <input type="text" class="form-control" id="classNine" />

        </div>

        <label></label>

        <div class="form-group col-lg-6">

            <label style="font-family: Times New Roman;" for="gradeNine">Grade From Class 9:</label>

            <input type="text" class="form-control" id="gradeNine" />

        </div>

    </div>

    <div class="row">

        <div class="form-group col-lg-6">

            <label style="font-family: Times New Roman;" for="calssTen">Class 10:</label>

            <input type="text" class="form-control" id="classTen" />

        </div>

        <label></label>

        <div class="form-group col-lg-6">

            <label style="font-family: Times New Roman;" for="gradeTen">Grade From Class 10:</label>

            <input type="text" class="form-control" id="gradeTen" />

        </div>

    </div>


    <div class="form-group">

        <button style="font-family: Times New Roman" type="submit" class="pull-right" id="getStudent" onclick="getStudent_Clicked">Input Grades</button><%-- I changed the button background and text color, but you can change it again to better match the theme --%>
    </div>


</asp:Content>
