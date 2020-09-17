<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentForm.aspx.cs" Inherits="cs395projectK4S.StudentForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container" style="width: 1700px">
        <%-- Controls the Margins --%>
        <%-- Combined Forms --%>
        <div class="jumotron text-center">
            <h1 style="font-family: Times New Roman;">Profile Information</h1>
            ​
        </div>

        <div class="row">
            <div class="form-group col-lg-6">
                <label style="font-family: Times New Roman;" for="fname">First Name:</label>
                <input type="text" class="form-control" id="fname" />
            </div>
            <div class="form-group col-lg-6">
                <label style="font-family: Times New Roman;" for="lname">Last Name:</label>
                <input type="text" class="form-control" id="lname" />
            </div>
        </div>
        <div class="row">
            <div class="form-group col-lg-6">
                <label style="font-family: Times New Roman;" for="sEmail">Email:</label>
                <input type="text" class="form-control" id="sEmail" />
            </div>
            <div class="form-group col-lg-6">
                <label style="font-family: Times New Roman;" for="sPhone">Phone Number:</label>
                <input type="text" class="form-control" id="sPhone" />
            </div>
        </div>
        <br />
        <label style="font-family: Times New Roman;">Home Address</label>
        <br />
        <br />
        <div class="row">
            <div class="form-group col-lg-6">
                <label style="font-family: Times New Roman; font-style: italic" for="hStreet">Street:</label>
                <input style="font-family: Times New Roman; font-style: italic" type="text" class="form-control" id="hStreet" />
            </div>
            <div class="form-group col-lg-6">
                <label style="font-family: Times New Roman; font-style: italic" for="hCity">City:</label>
                <input style="font-family: Times New Roman; font-style: italic" type="text" class="form-control" id="hCity" />
            </div>
        </div>
        <div class="row">
            <div class="form-group col-lg-6">
                <label style="font-family: Times New Roman; font-style: italic" for="hState">State:</label>
                <input style="font-family: Times New Roman; font-style: italic" type="text" class="form-control" id="hState" />
            </div>
            <div class="form-group col-lg-6">
                <label style="font-family: Times New Roman; font-style: italic" for="hZip">Zip:</label>
                <input type="text" class="form-control" id="hZip" />
            </div>
        </div>
        <br />
        <label style="font-family: Times New Roman;">Drivers License Information</label>
        <br />
        <br />
        <div class="row">
            <div class="form-group col-lg-6">
                <label style="font-family: Times New Roman; font-style: italic" for="dlNumber">Drivers License Number:</label>
                <input type="text" class="form-control" id="dlNumber" />
            </div>
            <div class="form-group col-lg-6">
                <label style="font-family: Times New Roman; font-style: italic" for="dlState">Stated Issued By:</label>
                <input type="text" class="form-control" id="dlState" />
            </div>
        </div>
        <div class="row">
            <div class="form-group col-lg-6">
                <label style="font-family: Times New Roman; font-style: italic" for="dlIssued">Issued Date:</label>
                <input type="text" class="form-control" id="dlIssued" />
            </div>
            <div class="form-group col-lg-6">
                <label style="font-family: Times New Roman; font-style: italic" for="dlExp">Experation Date:</label>
                <input type="text" class="form-control" id="dlExp" />
            </div>
        </div>
        <div class="row">
            <div class="form-group col-lg-6">
                <label style="font-family: Times New Roman; font-style: italic" for="dlClass">Driver's License Class:</label>
                <input type="text" class="form-control" id="dlClass" />
            </div>
        </div>
        <div class="row" style="margin: 25px">
            <label style="font-family: Times New Roman;">Are you under 18?</label>
            <div class="radio">
                <label style="font-family: Times New Roman;">
                    <input type="radio" name="minorRadio" />Yes</label>
            </div>
            <div class="radio">
                <label style="font-family: Times New Roman;">
                    <input type="radio" name="minorRadio" />No</label>
            </div>
        </div>
        <div class="row">
            <div class="form-group col-lg-6">
                <label style="font-family: Times New Roman;" for="pName">Parent/Gaurdian Name:</label>
                <input type="text" class="form-control" id="pName" />
            </div>
            <label></label>
            <div class="form-group col-lg-6">
                <label style="font-family: Times New Roman;" for="pEmail">Parent/Gaurdian Email:</label>
                <input type="text" class="form-control" id="pEmail" />
            </div>
        </div>
        <div class="form-group">
            <label style="font-family: Times New Roman;" for="pPhone">Parent/Gaurdian Phone Number:</label>
            <input type="text" class="form-control" id="pPhone" />
        </div>
        <div class="row" style="margin: 25px">
            <label style="font-family: Times New Roman;">Are you a US Citizen?</label>
            <div class="radio">
                <label style="font-family: Times New Roman;">
                    <input type="radio" name="citizenRadio" />Yes</label>
            </div>
            <div class="radio">
                <label style="font-family: Times New Roman;">
                    <input type="radio" name="citizenRadio" />No</label>
            </div>
        </div>
        <div class="row" style="margin: 25px">
            <label style="font-family: Times New Roman;">Are you Recieving Public Assitance?</label>
            <div class="radio">
                <label>
                    <input type="radio" name="assitanceRadio" />Yes</label>
            </div>
            <div class="radio">
                <label style="font-family: Times New Roman;">
                    <input type="radio" name="assitanceRadio" />No</label>
            </div>
        </div>
        <form>
            <div class="row" style="margin: 25px">
                <label style="font-family: Times New Roman;">Special Populations:</label>
                <div class="checkbox">
                    <label style="font-family: Times New Roman;">
                        <input type="checkbox" value="" />Low Income</label>
                </div>
                <div class="checkbox">
                    <label style="font-family: Times New Roman;">
                        <input type="checkbox" value="" />Displaced Homemaker</label>
                </div>
                <div class="checkbox">
                    <label style="font-family: Times New Roman;">
                        <input type="checkbox" value="" />Single Parent</label>
                </div>
                <div class="checkbox">
                    <label style="font-family: Times New Roman;">
                        <input type="checkbox" value="" />Dislocated Worker</label>
                </div>
                <div class="checkbox">
                    <label style="font-family: Times New Roman;">
                        <input type="checkbox" value="" />Learning Disabled Adult</label>
                </div>
                <div class="checkbox">
                    <label style="font-family: Times New Roman;">
                        <input type="checkbox" value="" />Physically Disabled Adult</label>
                </div>
                <div class="checkbox">
                    <label style="font-family: Times New Roman;">
                        <input type="checkbox" value="" />None of The Above</label>
                </div>
            </div>
        </form>
        <div class="row">
            <div class="form-group col-lg-6">
                <label style="font-family: Times New Roman;" for="ssn">SSN:</label>
                <input type="text" class="form-control" id="ssn" />
            </div>
            <label></label>
            <div class="form-group col-lg-6">
                <label style="font-family: Times New Roman;" for="race">Race:</label>
                <input type="text" class="form-control" id="race" />
            </div>
        </div>
        <div class="row" style="margin: 25px">
            <label style="font-family: Times New Roman;">Gender:</label>
            <div class="radio">
                <label style="font-family: Times New Roman;">
                    <input type="radio" name="genderRadio" />Male</label>
            </div>
            <div class="radio">
                <label style="font-family: Times New Roman;">
                    <input type="radio" name="genderRadio" />Female</label>
            </div>
            <div class="radio">
                <label style="font-family: Times New Roman;">
                    <input type="radio" name="genderRadio" />Other</label>
            </div>
        </div>
        <div class="row">
            <div class="form-group col-lg-6">
                <label style="font-family: Times New Roman;" for="dob">Date of Birth:</label>
                <input type="text" class="form-control" id="dob" />
            </div>
            <label></label>
            <div class="form-group col-lg-6">
                <label style="font-family: Times New Roman;" for="age">Age:</label>
                <input type="text" class="form-control" id="age" />
            </div>
        </div>
        <br />
        <label style="font-family: Times New Roman;">School Address</label>
        <br />
        <br />
        <div class="row">
            <div class="form-group col-lg-6">
                <label style="font-family: Times New Roman; font-style: italic" for="sStreet">Street:</label>
                <input type="text" class="form-control" id="sStreet" />
            </div>
            <div class="form-group col-lg-6">

                <label style="font-family: Times New Roman; font-style: italic" for="sCity">City:</label>
                <input type="text" class="form-control" id="sCity" />
            </div>
            <div class="form-group col-lg-6">

                <label style="font-family: Times New Roman; font-style: italic" for="sState">State:</label>
                <input type="text" class="form-control" id="sState" />
            </div>
            <div class="form-group col-lg-6">

                <label style="font-family: Times New Roman; font-style: italic" for="sZip">Zip:</label>
                <input type="text" class="form-control" id="sZip" />
            </div>
        </div>
        <div class="row" style="margin: 25px">
            <label style="font-family: Times New Roman;">Current Grade Level:</label>
            <div class="radio">
                <label style="font-family: Times New Roman;">
                    <input type="radio" name="currentGradeRadio" />Kindergarten</label>
            </div>
            <div class="radio">
                <label style="font-family: Times New Roman;">
                    <input type="radio" name="currentGradeRadio" />First Grade</label>
            </div>
            <div class="radio">
                <label style="font-family: Times New Roman;">
                    <input type="radio" name="currentGradeRadio" />Second Grade</label>
            </div>
            <div class="radio">
                <label style="font-family: Times New Roman;">
                    <input type="radio" name="currentGradeRadio" />Third Grade</label>
            </div>
            <div class="radio">
                <label style="font-family: Times New Roman;">
                    <input type="radio" name="currentGradeRadio" />Fourth Grade</label>
            </div>
            <div class="radio">
                <label style="font-family: Times New Roman;">
                    <input type="radio" name="currentGradeRadio" />Fifth Grade</label>
            </div>
            <div class="radio">
                <label style="font-family: Times New Roman;">
                    <input type="radio" name="currentGradeRadio" />Sixth Grade</label>
            </div>
            <div class="radio">
                <label style="font-family: Times New Roman;">
                    <input type="radio" name="currentGradeRadio" />Seventh Grade</label>
            </div>
            <div class="radio">
                <label style="font-family: Times New Roman;">
                    <input type="radio" name="currentGradeRadio" />Eighth Grade</label>
            </div>
            <div class="radio">
                <label style="font-family: Times New Roman;">
                    <input type="radio" name="currentGradeRadio" />Ninth Grade</label>
            </div>
            <div class="radio">
                <label style="font-family: Times New Roman;">
                    <input type="radio" name="currentGradeRadio" />Tenth Grade</label>
            </div>
            <div class="radio">
                <label style="font-family: Times New Roman;">
                    <input type="radio" name="currentGradeRadio" />Eleventh Grade</label>
            </div>
            <div class="radio">
                <label style="font-family: Times New Roman;">
                    <input type="radio" name="currentGradeRadio" />Twelfth Grade</label>
            </div>
            <div class="radio">
                <label style="font-family: Times New Roman;">
                    <input type="radio" name="currentGradeRadio" />College</label>
            </div>
            <div class="radio">
                <label style="font-family: Times New Roman;">
                    <input type="radio" name="currentGradeRadio" />Not Currently Attending</label>
            </div>
        </div>
        <div class="row" style="margin: 25px">
            <label style="font-family: Times New Roman;">Highest Completed Grade Level:</label>
            <div class="radio">
                <label style="font-family: Times New Roman;">
                    <input type="radio" name="completedGradeRadio" />No Schooling</label>
            </div>
            <div class="radio">
                <label style="font-family: Times New Roman;">
                    <input type="radio" name="completedGradeRadio" />Kindergarten</label>
            </div>
            <div class="radio">
                <label style="font-family: Times New Roman;">
                    <input type="radio" name="completedGradeRadio" />First Grade</label>
            </div>
            <div class="radio">
                <label style="font-family: Times New Roman;">
                    <input type="radio" name="completedGradeRadio" />Second Grade</label>
            </div>
            <div class="radio">
                <label style="font-family: Times New Roman;">
                    <input type="radio" name="completedGradeRadio" />Third Grade</label>
            </div>
            <div class="radio">
                <label style="font-family: Times New Roman;">
                    <input type="radio" name="completedGradeRadio" />Fourth Grade</label>
            </div>
            <div class="radio">
                <label style="font-family: Times New Roman;">
                    <input type="radio" name="completedGradeRadio" />Fifth Grade</label>
            </div>
            <div class="radio">
                <label style="font-family: Times New Roman;">
                    <input type="radio" name="completedGradeRadio" />Sixth Grade</label>
            </div>
            <div class="radio">
                <label style="font-family: Times New Roman;">
                    <input type="radio" name="completedGradeRadio" />Seventh Grade</label>
            </div>
            <div class="radio">
                <label style="font-family: Times New Roman;">
                    <input type="radio" name="completedGradeRadio" />Eighth Grade</label>
            </div>
            <div class="radio">
                <label style="font-family: Times New Roman;">
                    <input type="radio" name="completedGradeRadio" />Ninth Grade</label>
            </div>
            <div class="radio">
                <label style="font-family: Times New Roman;">
                    <input type="radio" name="completedGradeRadio" />Tenth Grade</label>
            </div>
            <div class="radio">
                <label style="font-family: Times New Roman;">
                    <input type="radio" name="completedGradeRadio" />Eleventh Grade</label>
            </div>
            <div class="radio">
                <label style="font-family: Times New Roman;">
                    <input type="radio" name="completedGradeRadio" />Twelfth Grade (No Diploma)</label>
            </div>
            <div class="radio">
                <label style="font-family: Times New Roman;">
                    <input type="radio" name="completedGradeRadio" />High School Diploma</label>
            </div>
            <div class="radio">
                <label style="font-family: Times New Roman;">
                    <input type="radio" name="completedGradeRadio" />GED</label>
            </div>
            <div class="radio">
                <label style="font-family: Times New Roman;">
                    <input type="radio" name="completedGradeRadio" />Some College, No Degree</label>
            </div>
            <div class="radio">
                <label style="font-family: Times New Roman;">
                    <input type="radio" name="completedGradeRadio" />Associate's Degree</label>
            </div>
            <div class="radio">
                <label style="font-family: Times New Roman;">
                    <input type="radio" name="completedGradeRadio" />Bachelor's Degree</label>
            </div>
            <div class="radio">
                <label style="font-family: Times New Roman;">
                    <input type="radio" name="completedGradeRadio" />Master's Degree</label>
            </div>
            <div class="radio">
                <label style="font-family: Times New Roman;">
                    <input type="radio" name="completedGradeRadio" />Specialist's Degree</label>
            </div>
            <div class="radio">
                <label style="font-family: Times New Roman;">
                    <input type="radio" name="completedGradeRadio" />Doctorate or Profesional Degree</label>
            </div>
            <div class="radio">
                <label style="font-family: Times New Roman;">
                    <input type="radio" name="completedGradeRadio" />Unknown</label>
            </div>
        </div>
        <div class="row" style="margin: 25px">
            <label style="font-family: Times New Roman;">Are you a Employed?</label>
            <div class="radio">
                <label style="font-family: Times New Roman;">
                    <input type="radio" name="workRadio" />Yes</label>
            </div>
            <div class="radio">
                <label style="font-family: Times New Roman;">
                    <input type="radio" name="workRadio" />No</label>
            </div>
        </div>
        <div class="form-group">
            <label style="font-family: Times New Roman;" for="wName">Age:</label>
            <input type="text" class="form-control" id="wName" />
        </div>
        <br />
        <label style="font-family: Times New Roman;">Work Address:</label>
        <br />
        <br />
        <div class="row">
            <div class="form-group col-lg-6">
                <label style="font-family: Times New Roman;" for="wStreet">Street:</label>
                <input type="text" class="form-control" id="wStreet" />
            </div>
            <div class="form-group col-lg-6">
                <label style="font-family: Times New Roman;" for="wCity">City:</label>
                <input type="text" class="form-control" id="wCity" />
            </div>
        </div>
        <div class="row">
            <div class="form-group col-lg-6">
                <label style="font-family: Times New Roman;" for="wState">State:</label>
                <input type="text" class="form-control" id="wState" />
            </div>
            <div class="form-group col-lg-6">
                <label style="font-family: Times New Roman;" for="wZip">Zip:</label>
                <input type="text" class="form-control" id="wZip" />
            </div>
        </div>
        <label></label>
        <form>
            <div class="forms-group">
                <label style="font-family: Times New Roman;" for="specialSkills">Do you have any special talents/skills?</label>
                <textarea class="form-control" rows="5" id="specialSkills"></textarea>
            </div>
        </form>
        <label style="font-family: Times New Roman;">Student Goals:</label>
        <label></label>
        <form>
            <label style="font-family: Times New Roman;">Adult Education Program Goals:</label>
            <div class="checkbox">
                <label style="font-family: Times New Roman;">
                    <input type="checkbox" value="" />Improve Reading Skills</label>
            </div>
            <div class="checkbox">
                <label style="font-family: Times New Roman;">
                    <input type="checkbox" value="" />Improve Math Skills</label>
            </div>
            <div class="checkbox">
                <label style="font-family: Times New Roman;">
                    <input type="checkbox" value="" />Improve Writing Skills</label>
            </div>
            <div class="checkbox">
                <label style="font-family: Times New Roman;">
                    <input type="checkbox" value="" />Improve Science Skills</label>
            </div>
            <div class="checkbox">
                <label style="font-family: Times New Roman;">
                    <input type="checkbox" value="" />Improve Social Studies Skills</label>
            </div>
            <div class="checkbox">
                <label style="font-family: Times New Roman;">
                    <input type="checkbox" value="" />Improve English Speaking Skills</label>
            </div>
            <div class="checkbox">
                <label style="font-family: Times New Roman;">
                    <input type="checkbox" value="" />Improve English Listening Skills</label>
            </div>
            <div class="checkbox">
                <label style="font-family: Times New Roman;">
                    <input type="checkbox" value="" />Improve English Reading Skills</label>
            </div>
            <div class="checkbox">
                <label style="font-family: Times New Roman;">
                    <input type="checkbox" value="" />Improve English Writing Skills</label>
            </div>
            <div class="checkbox">
                <label style="font-family: Times New Roman;">
                    <input type="checkbox" value="" />Get A Job</label>
            </div>
            <div class="checkbox">
                <label style="font-family: Times New Roman;">
                    <input type="checkbox" value="" />Keep My Job</label>
            </div>
            <div class="checkbox">
                <label style="font-family: Times New Roman;">
                    <input type="checkbox" value="" />Get A Better Job</label>
            </div>
            <div class="checkbox">
                <label style="font-family: Times New Roman;">
                    <input type="checkbox" value="" />Earn A GED</label>
            </div>
            <div class="checkbox">
                <label style="font-family: Times New Roman;">
                    <input type="checkbox" value="" />Enroll In College</label>
            </div>
            <div class="checkbox">
                <label style="font-family: Times New Roman;">
                    <input type="checkbox" value="" />Enroll In A Training Program</label>
            </div>
        </form>
        <form>
            <label style="font-family: Times New Roman;">Other Goals:</label>
            <div class="checkbox">
                <label style="font-family: Times New Roman;">
                    <input type="checkbox" value="" />Achieve Work Based Goals</label>
            </div>
            <div class="checkbox">
                <label style="font-family: Times New Roman;">
                    <input type="checkbox" value="" />Leave Public Assitance Programs</label>
            </div>
            <div class="checkbox">
                <label style="font-family: Times New Roman;">
                    <input type="checkbox" value="" />Increase Involvement In Children's Program</label>
            </div>
            <div class="checkbox">
                <label style="font-family: Times New Roman;">
                    <input type="checkbox" value="" />Increase Involvement In Children's Literacy Activities</label>
            </div>
            <div class="checkbox">
                <label style="font-family: Times New Roman;">
                    <input type="checkbox" value="" />Increase Involvement In Community Activities</label>
            </div>
            <div class="checkbox">
                <label style="font-family: Times New Roman;">
                    <input type="checkbox" value="" />Vote or Register to Vote</label>
            </div>
            <div class="checkbox">
                <label style="font-family: Times New Roman;">
                    <input type="checkbox" value="" />Achieve Citizenship Skills</label>
            </div>
            <div class="checkbox">
                <label style="font-family: Times New Roman;">
                    <input type="checkbox" value="" />ImpAchieve U.S. Citizenship</label>
            </div>
            <div class="checkbox">
                <label style="font-family: Times New Roman;">
                    <input type="checkbox" value="" />Other</label>
                <textarea class="form-control" rows="5"></textarea>
            </div>
        </form>
        <label></label>
        <form action="StudentProfile.aspx">
            <button style="font-family: Times New Roman;" type="submit" class="pull-right">Submit Profile Information</button>​
        </form>
        ​
    <label></label>
    </div>
</asp:Content>
