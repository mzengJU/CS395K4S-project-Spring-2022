using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;
using System.Configuration;

namespace cs395projectK4S
{
    public partial class StaffEditProfiling : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["StudentAccount"] != null)
            {
                //Retrieving UserName from Session
                string studentEmail = Session["StudentAccount"].ToString();
                //Retrieving UserName from Session
                welcomeLb.Text = studentEmail;

                DataTable StudentInforTable = new DataTable();

                string commandText = "select Fname,Lname,Gender,Age,Email,Race,PhoneNo,DOB,USCitizen,HighestGradeCompleted,SchoolAttending,SchoolAddr,Employer,WorkAddress,ParentName,ParentPhoneNo,HomeStreet,HomeCity,HomeState,HomeZip,ParentEmail,ImagePath from StudentProfile1 where Email=@useraccount;";

                try
                {
                    string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
                    

                    using (SqlConnection connection = new SqlConnection(connStr))
                    {
                        using (SqlCommand command = new SqlCommand(commandText, connection))
                        {
                            command.Parameters.Add("@useraccount", SqlDbType.VarChar);
                            command.Parameters["@useraccount"].Value = studentEmail;


                            connection.Open();
                            SqlDataReader myReader = command.ExecuteReader();


                            StudentInforTable.Load(myReader);
                            System.Diagnostics.Debug.WriteLine(StudentInforTable.Rows.Count);

                            //Define HTML Table column name
                            string htmlTable = "<table border='1'><tr>";
                            foreach (DataColumn column in StudentInforTable.Columns)
                            {
                                htmlTable += "<th>" + column.ColumnName + "</th>";
                            }
                            htmlTable += "</tr>";

                            //Getting the data and put it into the HTML table
                            foreach (DataRow dr in StudentInforTable.Rows)
                            {
                                string fname = dr["Fname"].ToString();
                                string lname = dr["Lname"].ToString();
                                string gender = dr["Gender"].ToString();
                                string age = dr["Age"].ToString();
                                string email = dr["Email"].ToString();
                                string race = dr["Race"].ToString();
                                string phoneNumber = dr["PhoneNo"].ToString();
                                string dob = dr["DOB"].ToString();
                                string citizen = dr["USCitizen"].ToString();
                                string gradeLevel = dr["HighestGradeCompleted"].ToString();
                                string schoolname = dr["SchoolAttending"].ToString();
                                string schooladdr = dr["SchoolAddr"].ToString();
                                string businessName = dr["Employer"].ToString();
                                string businessAddr = dr["WorkAddress"].ToString();
                                string homeAddr = dr["HomeStreet"].ToString();
                                string homecity = dr["HomeCity"].ToString();
                                string homeState = dr["HomeState"].ToString();
                                string homeZip = dr["HomeZip"].ToString();
                                string parentName = dr["ParentName"].ToString();
                                string parentPhoneNo = dr["ParentPhoneNo"].ToString();
                                string parentEmail = dr["ParentEmail"].ToString();
                                string imagePath = dr["ImagePath"].ToString();
                                //tbFname.Value= fname;
                                if (!IsPostBack)
                                {
                                    textbox1.Text = fname;
                                    tbLname.Value = lname;
                                    tbAge.Value = age;
                                    tbGender.Value = gender;
                                    tbRace.Value = race;
                                    tbPhoneNo.Value = phoneNumber;
                                    tbDOB.Value = dob;
                                    tbCitizenship.Value = citizen;
                                    tbHighestGrade.Value = gradeLevel;
                                    tbSchool.Value = schoolname;
                                    tbSchoolAddress.Value = schooladdr;
                                    tbEmployer.Value = businessName;
                                    tbEmployerAddress.Value = businessAddr;
                                    tbHomeAddress.Value = homeAddr;
                                    tbHomeCity.Value = homecity;
                                    tbHomeState.Value = homeState;
                                    tbHomeZip.Value = homeZip;
                                    LbEmail.Text = email;
                                    tbParentName.Value = parentName;
                                    tbParentPhoneNo.Value = parentPhoneNo;
                                    tbParaentEmail.Value = parentEmail;
                                    Image1.ImageUrl = imagePath;
                                }
                            }
                            htmlTable += "</table>";
                            System.Diagnostics.Debug.WriteLine(htmlTable);

                            connection.Close();

                        }
                    }
                }
                catch (SqlException SQL_error)
                {
                    System.Diagnostics.Debug.WriteLine(e.ToString());
                }
            }
            else
            {
                Response.Redirect("Default.aspx");
            }

        }

        protected void btSubmit_Click(object sender, EventArgs e)
        {
            //string firstName = tbFname.Value;
            
            string firstName = textbox1.Text;
            string lastName = tbLname.Value;  
            string studentPhone = tbPhoneNo.Value;
            string homeStreet = tbHomeAddress.Value;
            string homeState = tbHomeState.Value;
            string homeCity = tbHomeCity.Value;
            string homeZip = tbHomeZip.Value;           
            string parentEmail = tbParaentEmail.Value;
            string parentName = tbParentName.Value;
            string parentPhone = tbParentPhoneNo.Value;
            string studentRace = tbRace.Value;
            string dateOfBirth = tbDOB.Value;
            string studentAge = tbAge.Value;
            string schoolattending = tbSchool.Value;
            string schooladdress = tbSchoolAddress.Value;
            string workName = tbEmployer.Value;
            string workaddress = tbEmployerAddress.Value;            
            string youCitizen = tbCitizenship.Value;
            string studentGender = tbGender.Value;
            string highestGrade = tbHighestGrade.Value;
            string studentEmail = Session["StudentAccount"].ToString();

            StringBuilder sb = new StringBuilder();
            try
            {
                SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
                builder.DataSource = "cs395projectdemo.database.windows.net";
                builder.UserID = "cs395projectdemo";
                builder.Password = "K4Smp122";
                builder.InitialCatalog = "cs395projectdemoDB";
                using (SqlConnection connection = new SqlConnection(builder.ConnectionString))
                {
                    connection.Open();
                    sb.Append("Update StudentProfile1 ");
                    sb.Append("set Fname=@fname, Lname=@lname, PhoneNo=@phoneNumber, HomeStreet=@homestreet, HomeState=@homestate, " +
                        "HomeCity=@homecity, HomeZip=@homezip, ParentEmail=@parentemail, ParentName=@parentname, ParentPhoneNo=@parentphone," +
                        "Race=@race, DOB=@dateofbirth, Age=@age, SchoolAttending=@school, SchoolAddr=@schoolAddr, Employer=@employer, " +
                        "WorkAddress=@employerAddr, USCitizen=@citizenship, Gender=@gender, HighestGradeCompleted=@higestgrade ");
                    sb.Append("where Email=@studentemail;");

                    string sql = sb.ToString();
                    System.Diagnostics.Debug.WriteLine(sql);
                    using (SqlCommand command = new SqlCommand(sql, connection))
                    {
                        command.Parameters.Add("@fname", SqlDbType.VarChar);
                        command.Parameters["@fname"].Value = firstName;

                        command.Parameters.Add("@lname", SqlDbType.VarChar);
                        command.Parameters["@lname"].Value = lastName;

                        command.Parameters.Add("@studentemail", SqlDbType.VarChar);
                        command.Parameters["@studentemail"].Value = studentEmail;

                        command.Parameters.Add("@phoneNumber", SqlDbType.VarChar);
                        command.Parameters["@phoneNumber"].Value = studentPhone;

                        command.Parameters.Add("@homestreet", SqlDbType.VarChar);
                        command.Parameters["@homestreet"].Value = homeStreet;

                        command.Parameters.Add("@homestate", SqlDbType.VarChar);
                        command.Parameters["@homestate"].Value = homeState;

                        command.Parameters.Add("@homecity", SqlDbType.VarChar);
                        command.Parameters["@homecity"].Value = homeCity;

                        command.Parameters.Add("@homezip", SqlDbType.VarChar);
                        command.Parameters["@homezip"].Value = homeZip;

                        command.Parameters.Add("@parentemail", SqlDbType.VarChar);
                        command.Parameters["@parentemail"].Value = parentEmail;

                        command.Parameters.Add("@parentname", SqlDbType.VarChar);
                        command.Parameters["@parentname"].Value = parentName;

                        command.Parameters.Add("@parentphone", SqlDbType.VarChar);
                        command.Parameters["@parentphone"].Value = parentPhone;

                        command.Parameters.Add("@race", SqlDbType.VarChar);
                        command.Parameters["@race"].Value = studentRace;

                        command.Parameters.Add("@dateofbirth", SqlDbType.VarChar);
                        command.Parameters["@dateofbirth"].Value = dateOfBirth;

                        command.Parameters.Add("@age", SqlDbType.VarChar);
                        command.Parameters["@age"].Value = studentAge;

                        command.Parameters.Add("@school", SqlDbType.VarChar);
                        command.Parameters["@school"].Value = schoolattending;

                        command.Parameters.Add("@schoolAddr", SqlDbType.VarChar);
                        command.Parameters["@schoolAddr"].Value = schooladdress;

                        command.Parameters.Add("@employer", SqlDbType.VarChar);
                        command.Parameters["@employer"].Value = workName;

                        command.Parameters.Add("@employerAddr", SqlDbType.VarChar);
                        command.Parameters["@employerAddr"].Value = workaddress;

                        command.Parameters.Add("@citizenship", SqlDbType.VarChar);
                        command.Parameters["@citizenship"].Value = youCitizen;

                        command.Parameters.Add("@gender", SqlDbType.VarChar);
                        command.Parameters["@gender"].Value = studentGender;

                        command.Parameters.Add("@higestgrade", SqlDbType.VarChar);
                        command.Parameters["@higestgrade"].Value = highestGrade;

                        int RowsAffected = command.ExecuteNonQuery();
                        System.Diagnostics.Debug.WriteLine(command.ToString());
                        System.Diagnostics.Debug.WriteLine(RowsAffected);
                        
                    }

                }
            }
            catch (SqlException SQL_error)
            {
                System.Diagnostics.Debug.WriteLine(e.ToString());
            }

            Response.Redirect("StaffStudentProfiling.aspx");
        }
    }
}