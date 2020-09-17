<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StaffProfiling.aspx.cs" Inherits="cs395projectK4S.StaffProfiling" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        ​
  <h2>Search Students</h2>
        ​
   <div class="container">
       <div class="row">
           <div class="col-lg-2">
               <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
           </div>
           <div class="col-lg-5">
               <asp:TextBox ID="FirstNameTbx" runat="server" placeholder="First Name" MaxLength="25"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:TextBox ID="LastNametbx" runat="server" placeholder="Last Name" MaxLength="25"></asp:TextBox>
           </div>
           <%--<div class="col-lg-5">
               <asp:DropDownList ID="AND_ORlist1" AutoPostBack="True" runat="server">
                   <asp:ListItem Selected="True" Value="AND"> AND </asp:ListItem>
                   <asp:ListItem Value="OR"> OR </asp:ListItem>
                   <asp:ListItem Value="None">None</asp:ListItem>
               </asp:DropDownList>
           </div>--%>

       </div>
       ​
       <div class="row">
           <div class="col-lg-2">
               ​ 
               <asp:Label ID="Label2" runat="server" Text="Age Between"></asp:Label>
           </div>
           <div class="col-lg-5">
               <asp:TextBox ID="AgeTbx" runat="server" placeholder="Age Start" MaxLength="3"></asp:TextBox>
               &nbsp;~&nbsp;
           <asp:TextBox ID="AgeEndTbx" runat="server" placeholder="Age END" MaxLength="3"></asp:TextBox>
           </div>
           <%--<div class="col-lg-5">
               <asp:DropDownList ID="AND_ORlist2" AutoPostBack="True" runat="server">
                   <asp:ListItem Selected="True" Value="AND"> AND </asp:ListItem>
                   <asp:ListItem Value="OR"> OR </asp:ListItem>
                   <asp:ListItem Value="None">None</asp:ListItem>
               </asp:DropDownList>
           </div>--%>
       </div>
       <br />
       <div class="row">
           <div class="col-lg-2">
               ​ 
               <asp:Label ID="Label3" runat="server" Text="Gender"></asp:Label>
           </div>


           <div class="col-lg-5">
               <asp:DropDownList ID="Genderlist" AutoPostBack="True" runat="server">
                   <asp:ListItem Selected="True" Value=""> None </asp:ListItem>
                   <asp:ListItem Value="Male"> Male </asp:ListItem>
                   <asp:ListItem Value="Female"> Female </asp:ListItem>
               </asp:DropDownList>
           </div>
           ​
       </div>
       <br/>
       <div class="row">
           <div class="col-lg-2"> ​
               <asp:Button ID="Button1" runat="server" Text="Search" type="submit" class="btn btn-primary btn-md" OnClick="Button1_Click" />
           </div>
           ​
       </div>
       <hr>
       <div class="row">
           <div class="col-lg-2"> ​
               <asp:Label ID="Label4" runat="server" Text="Student Email:"></asp:Label>
            </div>

           <div class="col-lg-5">
               <asp:TextBox ID="studentUserName" runat="server" placeholder="Enter the Student User Name" MaxLength="25"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Button ID="Button2" runat="server" Text="Display Detailed Information" type="submit" class="btn btn-primary btn-md" OnClick="Button2_Click1" />

            </div>
       </div>
   </div>
    


    </div>
    <br />
    <asp:Label ID="Servicelabel" runat="server" Text="" Style="position: relative; right: -225px"></asp:Label>
</asp:Content>

