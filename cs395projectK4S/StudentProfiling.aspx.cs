using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace cs395projectK4S
{
    public partial class StudentProfiling : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserAccount"] != null)
            {
                //Retrieving UserName from Session
                string studentEmail = Session["UserAccount"].ToString();
                //Retrieving UserName from Session
                welcomeLb.Text = studentEmail;

                DataTable StudentInforTable = new DataTable();

                string commandText = "select Fname,Lname,Gender,Age,Email,Race,PhoneNo,DOB,USCitizen,HighestGradeCompleted,SchoolAttending,SchoolAddr,Employer,WorkAddress,ParentName,ParentPhoneNo,HomeStreet,HomeCity,HomeState,HomeZip,ParentEmail,ImagePath from StudentProfile1 where Email=@useraccount;";

                try
                {
                    SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
                    builder.DataSource = "cs395projectdemo.database.windows.net";
                    builder.UserID = "cs395projectdemo";
                    builder.Password = "K4Smp122";
                    builder.InitialCatalog = "cs395projectdemoDB";

                    using (SqlConnection connection = new SqlConnection(builder.ConnectionString))
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
                                LbName.Text = fname + ' ' + lname;
                                LbAge.Text = age;
                                LbGender.Text = gender;
                                LbRace.Text = race;
                                LbPhoneNo.Text = phoneNumber;
                                LbDOB.Text = dob;
                                LbCitizen.Text = citizen;
                                LbGradeLevel.Text = gradeLevel;
                                LbSchoolName.Text = schoolname;
                                LbSchoolAddr.Text = schooladdr;
                                LbBusinessName.Text = businessName;
                                LbBusinessAddr.Text = businessAddr;
                                LbHomeAddr.Text = homeAddr;
                                LbHomeCityandState.Text = homecity + ", " + homeState;
                                LbHomeZip.Text = homeZip;
                                LbEmail.Text = email;
                                LbParentName.Text = parentName;
                                LbParentPhoneNo.Text = parentPhoneNo;
                                LbParentEmail.Text = parentEmail;
                                Image1.ImageUrl = imagePath;



                                




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
    }
}