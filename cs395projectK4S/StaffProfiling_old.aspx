<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StaffProfiling.aspx.cs" Inherits="cs395projectK4S.StaffProfiling" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">       ​
  <h2>Search Students</h2>       ​
   <div class="container">
       <div class="row">
       <div class="radio col-lg-6">                      ​     
          <asp:RadioButton Text="Name" ID="NameRadio" runat="server" />          
      <asp:TextBox ID="FirstNameTbx" runat="server" placeholder="First Name" MaxLength="25" style="position: absolute; left: 93px;"></asp:TextBox> 
      <asp:TextBox ID="LastNametbx" runat="server" placeholder="Last Name" MaxLength="25" style="position: relative; left: 300px;"></asp:TextBox>
       </div>
       </div>          ​
       <div class="row">
       <div class="radio col-lg-6">               ​     
          <asp:RadioButton ID="AgeRadio" Text="Age" runat="server" />        
           <asp:TextBox ID="AgeTbx" runat="server" placeholder="Age" MaxLength="3" style="position: absolute; left: 94px;"></asp:TextBox>
      </div>
      </div>                          
      <div class="row">
      <div class="radio col-lg-6">         ​      
          <asp:RadioButton Text="Gender" ID="GenderRadio" runat="server" />        
          <asp:TextBox ID="GenderTbx" runat="server" placeholder="M/F" MaxLength="1"></asp:TextBox>
      </div>​
      </div>
 </div>
    ​<p></p>
        <asp:Button ID="Button1" runat="server" Text="Search" style="position: relative; right: -1000px;" type="submit" class="btn btn-primary btn-md" OnClick="Button1_Click"/>
    </div>
    <br />
    <br />
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">               
            </div>
            <asp:label ID="table" runat="server" text=""></asp:label>
            </div>
        </div>   ​
</asp:Content>

