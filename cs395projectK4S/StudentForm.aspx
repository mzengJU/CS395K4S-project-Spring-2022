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
                <input type="text" class="form-control" runat="server" id="fname" maxlength="25" />
            </div>
            <div class="form-group col-lg-6">
                <label style="font-family: Times New Roman;" for="lname">Last Name:</label>
                <input type="text" class="form-control" runat="server" id="lname" maxlength="25" />
            </div>
        </div>
        <div class="row">
            <div class="form-group col-lg-6">
                <label style="font-family: Times New Roman;" for="sEmail">Email:</label>
                <input type="text" class="form-control" runat="server" id="sEmail" maxlength="25" />
            </div>
            <div class="form-group col-lg-6">
                <label style="font-family: Times New Roman;" for="sPhone">Phone Number:</label>
                <input type="text" class="form-control" runat="server" id="sPhone" maxlength="25" />
            </div>
        </div>
        <br />



        <label style="font-family: Times New Roman;">Home Address</label>
        <br />
        <br />
        <div class="row">
            <div class="form-group col-lg-6">
                <label style="font-family: Times New Roman; font-style: italic" for="hStreet">Street:</label>
                <input style="font-family: Times New Roman; font-style: italic" type="text" class="form-control" runat="server" id="hStreet" maxlength="25" />
            </div>
            <div class="form-group col-lg-6">
                <label style="font-family: Times New Roman; font-style: italic" for="hCity">City:</label>
                <input style="font-family: Times New Roman; font-style: italic" type="text" class="form-control" runat="server" id="hCity" maxlength="25" />
            </div>
        </div>
        <div class="row">
            <div class="form-group col-lg-6">
                <label style="font-family: Times New Roman; font-style: italic" for="hState">State:</label>
                <input style="font-family: Times New Roman; font-style: italic" type="text" class="form-control" runat="server" id="hState" maxlength="10" />
            </div>
            <div class="form-group col-lg-6">
                <label style="font-family: Times New Roman; font-style: italic" for="hZip">Zip:</label>
                <input type="text" class="form-control" runat="server" id="hZip" maxlength="9" />
            </div>
        </div>
        <br />



        <label style="font-family: Times New Roman;">Drivers License Information</label>
        <br />
        <br />
        <div class="row">
            <div class="form-group col-lg-6">
                <label style="font-family: Times New Roman; font-style: italic" for="dlNumber">Drivers License Number:</label>
                <input type="text" class="form-control" runat="server" id="dlNumber" maxlength="25" />
            </div>
            <div class="form-group col-lg-6">
                <label style="font-family: Times New Roman; font-style: italic" for="dlState">State Issued By:</label>
                <input type="text" class="form-control" runat="server" id="dlState" maxlength="25" />
            </div>
        </div>
        <div class="row">
            <div class="form-group col-lg-6">
                <label style="font-family: Times New Roman; font-style: italic" for="dlIssued">Issued Date:</label>
                <input type="text" class="form-control" runat="server" id="dlIssued" maxlength="25" />
            </div>
            <div class="form-group col-lg-6">
                <label style="font-family: Times New Roman; font-style: italic" for="dlExp">Experation Date:</label>
                <input type="text" class="form-control" runat="server" id="dlExp" maxlength="25" />
            </div>
        </div>
        <div class="row">
            <div class="form-group col-lg-6">
                <label style="font-family: Times New Roman; font-style: italic" for="dlClass">Driver's License Class:</label>
                <input type="text" class="form-control" runat="server" id="dlClass" maxlength="25" />
            </div>
        </div>




        <%-- Do this for all buttons and checkboxes --%>
        <div class="row" style="margin: 25px; font-family: Times New Roman">
            <label style="font-family: Times New Roman;">Are you under 18?</label>
        </div>
        <div class="row" style="margin: 25px; font-family: Times New Roman">
            <asp:RadioButtonList ID="uEighteen" runat="server">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:RadioButtonList>
        </div>




        <div class="row">
            <div class="form-group col-lg-6">
                <label style="font-family: Times New Roman;" for="pName">Parent/Gaurdian Name:</label>
                <input type="text" class="form-control" runat="server" id="pName" maxlength="25" />
            </div>
            <label></label>
            <div class="form-group col-lg-6">
                <label style="font-family: Times New Roman;" for="pEmail">Parent/Gaurdian Email:</label>
                <input type="text" class="form-control" runat="server" id="pEmail" maxlength="25" />
            </div>
        </div>
        <div class="form-group">
            <label style="font-family: Times New Roman;" for="pPhone">Parent/Gaurdian Phone Number:</label>
            <input type="text" class="form-control" runat="server" id="pPhone" maxlength="25" />
        </div>



        <div class="row" style="margin: 25px; font-family: Times New Roman">
            <label style="font-family: Times New Roman;">Are you a US Citizen?</label>
        </div>
        <div class="row" style="margin: 25px; font-family: Times New Roman">
            <asp:RadioButtonList ID="citizen" runat="server">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:RadioButtonList>
        </div>



        <div class="row" style="margin: 25px; font-family: Times New Roman">

            <label style="font-family: Times New Roman;">Are you Receiving Public Assistance?</label>
        </div>
        <div class="row" style="margin: 25px; font-family: Times New Roman">
            <asp:RadioButtonList ID="assistance" runat="server">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:RadioButtonList>

        </div>



        <div class="row" style="margin: 25px; font-family: Times New Roman">
            <label style="font-family: Times New Roman;">Special Populations:</label>
        </div>
        <div class="row" style="margin: 25px; font-family: Times New Roman">
            <asp:CheckBoxList ID="sPopulations" runat="server">
                <asp:ListItem>Low Income</asp:ListItem>
                <asp:ListItem>Displaced Homemaker</asp:ListItem>
                <asp:ListItem>Single Parent</asp:ListItem>
                <asp:ListItem>Dislocated Worker</asp:ListItem>
                <asp:ListItem>Learning Disabled Adult</asp:ListItem>
                <asp:ListItem>Physically Disabled Adult</asp:ListItem>
                <asp:ListItem>None of The Above</asp:ListItem>
            </asp:CheckBoxList>
        </div>



        <div class="row">
            <div class="form-group col-lg-6">
                <label style="font-family: Times New Roman;" for="ssn">SSN:</label>
                <input type="text" class="form-control" runat="server" id="ssn" maxlength="9" />
            </div>
            <label></label>
            <div class="form-group col-lg-6">
                <label style="font-family: Times New Roman;" for="race">Race:</label>
                <input type="text" class="form-control" runat="server" id="race" maxlength="15" />
            </div>
        </div>



        <div class="row" style="margin: 25px; font-family: Times New Roman">
            <label style="font-family: Times New Roman;">Select a Gender:</label>
        </div>
        <div class="row" style="margin: 25px; font-family: Times New Roman">
            <asp:RadioButtonList ID="gender" runat="server">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList>
        </div>



        <div class="row">
            <div class="form-group col-lg-6">
                <label style="font-family: Times New Roman;" for="dob">Date of Birth (MM/DD/YYYY):</label>
                <input type="text" class="form-control" runat="server" id="dob" maxlength="25" />
            </div>
            <label></label>
            <div class="form-group col-lg-6">
                <label style="font-family: Times New Roman;" for="age">Age:</label>
                <input type="text" class="form-control" runat="server" id="age" maxlength="3" />
            </div>
        </div>
        <br />



        <label style="font-family: Times New Roman;">School Information</label>
        <br />
        <br />
        <div class="row">
            <div class="form-group col-lg-6">
                <label style="font-family: Times New Roman; font-style: italic" for="sStreet">School Attending:</label>
                <input type="text" class="form-control" runat="server" id="schoolAttending" maxlength="25" />
            </div>
            <div class="form-group col-lg-6">

                <label style="font-family: Times New Roman; font-style: italic" for="sCity">School Address:</label>
                <input type="text" class="form-control" runat="server" id="schoolAddress" maxlength="50" />
            </div>
            <div class="form-group col-lg-6">

                <label style="font-family: Times New Roman; font-style: italic" for="sState">City:</label>
                <input type="text" class="form-control" runat="server" id="sCity" maxlength="15" />
            </div>
            <div class="form-group col-lg-6">

                <label style="font-family: Times New Roman; font-style: italic" for="sState">State:</label>
                <input type="text" class="form-control" runat="server" id="sState" maxlength="15" />
            </div>
            <div class="form-group col-lg-6">

                <label style="font-family: Times New Roman; font-style: italic" for="sZip">Zip:</label>
                <input type="text" class="form-control" runat="server" id="sZip" maxlength="10" />
            </div>
        </div>



        <div class="row" style="margin: 25px; font-family: Times New Roman">

            <label style="font-family: Times New Roman;">Current Grade Level:</label>
        </div>
        <div class="row" style="margin: 25px; font-family: Times New Roman">
            <asp:RadioButtonList ID="grade" runat="server">
                <asp:ListItem>Kindergarten</asp:ListItem>
                <asp:ListItem>First Grade</asp:ListItem>
                <asp:ListItem>Second Grade</asp:ListItem>
                <asp:ListItem>Third Grade</asp:ListItem>
                <asp:ListItem>Fourth Grade</asp:ListItem>
                <asp:ListItem>Fifth Grade</asp:ListItem>
                <asp:ListItem>Sixth Grade</asp:ListItem>
                <asp:ListItem>Seventh Grade</asp:ListItem>
                <asp:ListItem>Eighth Grade</asp:ListItem>
                <asp:ListItem>Ninth Grade</asp:ListItem>
                <asp:ListItem>Tenth Grade</asp:ListItem>
                <asp:ListItem>Eleventh Grade</asp:ListItem>
                <asp:ListItem>Twelfth Grade</asp:ListItem>
                <asp:ListItem>College</asp:ListItem>
                <asp:ListItem>Not Currently Attending</asp:ListItem>
                <asp:ListItem>Second Grade</asp:ListItem>
            </asp:RadioButtonList>
        </div>



        <div class="row" style="margin: 25px; font-family: Times New Roman">
            <label style="font-family: Times New Roman;">Highest Grade Level Completed:</label>
        </div>
        <div class="row" style="margin: 25px; font-family: Times New Roman">
            <asp:RadioButtonList ID="hgrade" runat="server">
                <asp:ListItem>No Schooling</asp:ListItem>
                <asp:ListItem>Kindergarten</asp:ListItem>
                <asp:ListItem>First Grade</asp:ListItem>
                <asp:ListItem>Second Grade</asp:ListItem>
                <asp:ListItem>Third Grade</asp:ListItem>
                <asp:ListItem>Fourth Grade</asp:ListItem>
                <asp:ListItem>Fifth Grade</asp:ListItem>
                <asp:ListItem>Sixth Grade</asp:ListItem>
                <asp:ListItem>Seventh Grade</asp:ListItem>
                <asp:ListItem>Eighth Grade</asp:ListItem>
                <asp:ListItem>Ninth Grade</asp:ListItem>
                <asp:ListItem>Tenth Grade</asp:ListItem>
                <asp:ListItem>Eleventh Grade</asp:ListItem>
                <asp:ListItem>Twelfth Grade</asp:ListItem>
                <asp:ListItem>High School Diploma</asp:ListItem>
                <asp:ListItem>GED</asp:ListItem>
                <asp:ListItem>Some College (No Degree)</asp:ListItem>
                <asp:ListItem>Associate's Degree</asp:ListItem>
                <asp:ListItem>Bachelor's Degree</asp:ListItem>
                <asp:ListItem>Master's Degree</asp:ListItem>
                <asp:ListItem>Specialist's Degree</asp:ListItem>
                <asp:ListItem>Doctorate or Professional Degree</asp:ListItem>
                <asp:ListItem>Unknown</asp:ListItem>
            </asp:RadioButtonList>
        </div>



        <div class="row" style="margin: 25px; font-family: Times New Roman">
            <label style="font-family: Times New Roman;">Are you Employed?</label>
        </div>
        <div class="row" style="margin: 25px; font-family: Times New Roman">
            <asp:RadioButtonList ID="employed" runat="server">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:RadioButtonList>
        </div>



        <div class="form-group">
            <label style="font-family: Times New Roman;" for="wName">Work Name:</label>
            <input type="text" class="form-control" runat="server" id="wName" maxlength="25" />
        </div>
        <br />



        <label style="font-family: Times New Roman;">Work Address:</label>
        <br />
        <br />
        <div class="row">
            <div class="form-group col-lg-6">
                <label style="font-family: Times New Roman;" for="wStreet">Street:</label>
                <input type="text" class="form-control" runat="server" id="wStreet" maxlength="25" />
            </div>
            <div class="form-group col-lg-6">
                <label style="font-family: Times New Roman;" for="wCity">City:</label>
                <input type="text" class="form-control" runat="server" id="wCity" maxlength="15" />
            </div>
        </div>
        <div class="row">
            <div class="form-group col-lg-6">
                <label style="font-family: Times New Roman;" for="wState">State:</label>
                <input type="text" class="form-control" runat="server" id="wState" maxlength="15" />
            </div>
            <div class="form-group col-lg-6">
                <label style="font-family: Times New Roman;" for="wZip">Zip:</label>
                <input type="text" class="form-control" runat="server" id="wZip" maxlength="10" />
            </div>
        </div>
        <br />


        <div class="row">
            <div class="forms-group col-lg-6">
                <label style="font-family: Times New Roman;" for="specialSkills">Do you have any special talents/skills?</label>
                <textarea class="form-control" rows="5" runat="server" id="specialSkills" maxlength="500"></textarea>
            </div>
        </div>

        <br />

        <div class="row" style="margin: 25px; font-family: Times New Roman">
            <label style="font-family: Times New Roman;">Student Goals:</label>
        </div>
        <div class="row" style="margin: 25px; font-family: Times New Roman">
            <asp:CheckBoxList ID="sGoals" runat="server">

                <asp:ListItem Text="Improve Reading Skills" Value="Improve Reading Skills"></asp:ListItem>
                <asp:ListItem Text="Improve Math Skills" Value="Improve Math Skills"></asp:ListItem>
                <asp:ListItem Text="Improve Writing Skills" Value="Improve Writing Skills"></asp:ListItem>
                <asp:ListItem Text="Improve Science Skills" Value="Improve Science Skills"></asp:ListItem>
                <asp:ListItem Text="Improve Social Studies Skills" Value="Improve Social Studies Skills"></asp:ListItem>
                <asp:ListItem Text="Improve English English Speaking Skills" Value="Improve English Speaking Skills"></asp:ListItem>
                <asp:ListItem Text="Improve English English Listening Skills" Value="Improve English Listening Skills"></asp:ListItem>
                <asp:ListItem Text="Improve English English Writing Skills" Value="Improve English Writing Skills"></asp:ListItem>
                <asp:ListItem Text="Get A Job" Value="Get A Job"></asp:ListItem>
                <asp:ListItem Text="Keep My Job" Value="Keep My Job"></asp:ListItem>
                <asp:ListItem Text="Get A Better Job" Value="Get A Better Job"></asp:ListItem>
                <asp:ListItem Text="Earn A GED" Value="Earn A GED"></asp:ListItem>
                <asp:ListItem Text="Enroll In College" Value="Enroll In College"></asp:ListItem>
                <asp:ListItem Text="Enroll In A Training Program" Value="Enroll In A Training Program"></asp:ListItem>
            </asp:CheckBoxList>
        </div>



        <div class="row" style="margin: 25px; font-family: Times New Roman">
            <label style="font-family: Times New Roman;">Other Goals:</label>
        </div>
        <div class="row" style="margin: 25px; font-family: Times New Roman">
            <asp:CheckBoxList ID="oGoals" runat="server">
                <asp:ListItem>Achieve Work Based Goals</asp:ListItem>
                <asp:ListItem>Leave Public Assistance Program</asp:ListItem>
                <asp:ListItem>Increase Involvement In Children Program</asp:ListItem>
                <asp:ListItem>Increase Involvement In Children Literacy Activities</asp:ListItem>
                <asp:ListItem>Increase Involvement In Community Activities</asp:ListItem>
                <asp:ListItem>Vote or Register to Vote</asp:ListItem>
                <asp:ListItem>Achieve Citizenship Skills</asp:ListItem>
                <asp:ListItem>Achieve U.S. Citizenship</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
            </asp:CheckBoxList>
        </div>
        <div class="row" style="margin: 25px; font-family: Times New Roman">
            <label style="font-family: Times New Roman;">Upload profile image:</label> <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:Label ID="lb_uploadmessage" runat="server" Text=""></asp:Label>
            <asp:Button ID="BtUpload" runat="server" Text="Upload" OnClick="BtUpload_Click" />
        </div>


        <asp:Button Style="font-family: Times New Roman;" type="submit" class="btn btn-primary btn-md" ID="Button1" runat="server" Text="Submit Profile Information" OnClick="Button1_Click" />

        ​


    </div>
</asp:Content>
