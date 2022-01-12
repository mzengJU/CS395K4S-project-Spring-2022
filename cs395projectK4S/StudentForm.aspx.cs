using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace cs395projectK4S
{
    public partial class StudentForm : System.Web.UI.Page
    {
       static string uploadFileName = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserAccount"] != null)
            {
                //Retrieving UserName from Session
                string studentEmail = Session["UserAccount"].ToString();

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
                            if (StudentInforTable.Rows.Count >= 1)
                            {
                                Response.Redirect("StudentProfiling.aspx");
                            }
                        }
                    }
                }
                catch (SqlException SQL_error)
                {
                    System.Diagnostics.Debug.WriteLine(e.ToString());
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            string firstName = fname.Value;
            string lastName = lname.Value;
            string studentEmail = sEmail.Value;
            string studentPhone = sPhone.Value;
            string homeStreet = hStreet.Value;
            string homeState = hState.Value;
            string homeCity = hCity.Value;
            string homeZip = hZip.Value;
            string dlicenseNumber = dlNumber.Value;
            string dlicenseState = dlState.Value;
            string dlicenseClass = dlClass.Value;
            string dlicenseExp = dlExp.Value;
            string dlicenseIssued = dlIssued.Value;
            string parentEmail = pEmail.Value;
            string parentName = pName.Value;
            string parentPhone = pPhone.Value;
            string socialSecurityNumber = ssn.Value;
            string studentRace = race.Value;
            string dateOfBirth = dob.Value;
            string studentAge = age.Value;
            string schoolattending = schoolAttending.Value;
            string schooladdress = schoolAddress.Value + ", "+ sCity.Value+", "+ sState.Value+", "+ sZip.Value;
            string workName = wName.Value;
            string workaddress = wStreet.Value+", "+ wCity.Value+", "+ wState.Value+", "+ wZip.Value;
            string sSkills = specialSkills.Value;
            string youEighteen = uEighteen.SelectedValue;
            string youCitizen = citizen.SelectedValue;
            string publicAssistance = assistance.SelectedValue;
            string specialPopulations = sPopulations.SelectedValue;
            string studentGender = gender.SelectedValue;
            string gradeLevel = grade.SelectedValue;
            string highestGrade = hgrade.SelectedValue;
            string areYouEmployed = employed.SelectedValue;
            string studentGoals = sGoals.SelectedValue;
            string otherGoals = oGoals.SelectedValue;
            string imagePath = "~/Upload/"+ uploadFileName;

                       
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
                    
                    string sql = "Insert into StudentProfile1 values(@SSN,@fname,@lname,@age,@gender,@homestreet,@homecity,@homestate,@homezip,@race,@gradelevel,@email,@phonenumber,@citizen," +
                        "@dob,@parentname,@parentphone,@dlicensenumber,@dlicenseissued,@dlicenseexp,@dlicenseclass,NULL,@highestgrade,@school,@schooladdr," +
                        "@employed,@employer,@employeraddr,@publicassistance,NULL,NULL,@sskills,@goals,NULL,@othergoals,NULL,@isactive,@parentemail,@imagepath);";
                    
                    using (SqlCommand command = new SqlCommand(sql, connection))
                    {
                        command.Parameters.Add("@SSN", SqlDbType.VarChar);
                        command.Parameters["@SSN"].Value = socialSecurityNumber;

                        command.Parameters.Add("@fname", SqlDbType.VarChar,50);
                        command.Parameters["@fname"].Value = firstName;

                        command.Parameters.Add("@lname", SqlDbType.VarChar,50);
                        command.Parameters["@lname"].Value = lastName;

                        command.Parameters.Add("@age", SqlDbType.VarChar);
                        command.Parameters["@age"].Value = studentAge;

                        command.Parameters.Add("@gender", SqlDbType.VarChar);
                        command.Parameters["@gender"].Value = studentGender;

                        command.Parameters.Add("@homestreet", SqlDbType.VarChar);
                        command.Parameters["@homestreet"].Value = homeStreet;

                        command.Parameters.Add("@homecity", SqlDbType.VarChar);
                        command.Parameters["@homecity"].Value = homeCity;

                        command.Parameters.Add("@homestate", SqlDbType.VarChar);
                        command.Parameters["@homestate"].Value = homeState;

                        command.Parameters.Add("@homezip", SqlDbType.VarChar);
                        command.Parameters["@homezip"].Value = homeZip;

                        command.Parameters.Add("@race", SqlDbType.VarChar);
                        command.Parameters["@race"].Value = studentRace;

                        command.Parameters.Add("@gradelevel", SqlDbType.VarChar);
                        command.Parameters["@gradelevel"].Value = gradeLevel;

                        command.Parameters.Add("@email", SqlDbType.VarChar);
                        command.Parameters["@email"].Value = studentEmail;

                        command.Parameters.Add("@phonenumber", SqlDbType.VarChar);
                        command.Parameters["@phonenumber"].Value = studentPhone;

                        command.Parameters.Add("@citizen", SqlDbType.VarChar);
                        command.Parameters["@citizen"].Value = youCitizen;

                        command.Parameters.Add("@dob", SqlDbType.VarChar);
                        command.Parameters["@dob"].Value = dateOfBirth;

                        command.Parameters.Add("@parentname", SqlDbType.VarChar);
                        command.Parameters["@parentname"].Value = parentName;

                        command.Parameters.Add("@parentphone", SqlDbType.VarChar);
                        command.Parameters["@parentphone"].Value = parentPhone;

                        command.Parameters.Add("@dlicensenumber", SqlDbType.VarChar);
                        command.Parameters["@dlicensenumber"].Value = dlicenseNumber;

                        command.Parameters.Add("@dlicenseissued", SqlDbType.VarChar);
                        command.Parameters["@dlicenseissued"].Value = dlicenseIssued;

                        command.Parameters.Add("@dlicenseexp", SqlDbType.VarChar);
                        command.Parameters["@dlicenseexp"].Value = dlicenseExp;

                        command.Parameters.Add("@dlicenseclass", SqlDbType.VarChar);
                        command.Parameters["@dlicenseclass"].Value = dlicenseClass;

                        
                        command.Parameters.Add("@highestgrade", SqlDbType.VarChar);
                        command.Parameters["@highestgrade"].Value = highestGrade;

                        command.Parameters.Add("@school", SqlDbType.VarChar);
                        command.Parameters["@school"].Value = schoolattending;

                        command.Parameters.Add("@schooladdr", SqlDbType.VarChar);
                        command.Parameters["@schooladdr"].Value = schooladdress;

                        command.Parameters.Add("@employed", SqlDbType.VarChar);
                        command.Parameters["@employed"].Value = areYouEmployed;

                        command.Parameters.Add("@employer", SqlDbType.VarChar);
                        command.Parameters["@employer"].Value = workName;

                        command.Parameters.Add("@employeraddr", SqlDbType.VarChar);
                        command.Parameters["@employeraddr"].Value = workaddress;

                        command.Parameters.Add("@publicassistance", SqlDbType.VarChar);
                        command.Parameters["@publicassistance"].Value = publicAssistance;
                        
                        command.Parameters.Add("@sskills", SqlDbType.VarChar);
                        command.Parameters["@sskills"].Value = sSkills;

                        command.Parameters.Add("@goals", SqlDbType.VarChar);
                        command.Parameters["@goals"].Value = studentGoals;

                        
                        command.Parameters.Add("@othergoals", SqlDbType.VarChar);
                        command.Parameters["@othergoals"].Value = otherGoals;

                        
                        command.Parameters.Add("@isactive", SqlDbType.VarChar);
                        command.Parameters["@isactive"].Value = 'Y';

                        command.Parameters.Add("@parentemail", SqlDbType.VarChar);
                        command.Parameters["@parentemail"].Value = parentEmail;

                        command.Parameters.Add("@imagepath", SqlDbType.VarChar);
                        command.Parameters["@imagepath"].Value = imagePath;

                        System.Diagnostics.Debug.WriteLine(command.CommandText);
                        int RowsAffected = command.ExecuteNonQuery();
                        
                    }

                }
            }
            catch (SqlException SQL_error)
            {
                System.Diagnostics.Debug.WriteLine(e.ToString());
            }
        }

        protected void BtUpload_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
                SaveFile(FileUpload1.PostedFile);
            else
                lb_uploadmessage.Text = "You did not specify a file to upload.";

        }
        void SaveFile(HttpPostedFile file)
        { 
            string fileName = FileUpload1.FileName;
            string pathToCheck = MapPath("~/Upload/") + fileName;
            string tempfileName = "";
            
            if (System.IO.File.Exists(pathToCheck))
            {
                int counter = 2;
                while (System.IO.File.Exists(pathToCheck))
                {
                    tempfileName = counter.ToString() +"_"+fileName;
                    pathToCheck = MapPath("~/Upload/") + tempfileName;
                    counter++;
                }

                fileName = tempfileName;
                
                // Notify the user that the file name was changed.
                lb_uploadmessage.Text = "A file with the same name already exists." +
                    "<br />Your file was saved as " + fileName;
            }
            else
            {
                // Notify the user that the file was saved successfully.
                lb_uploadmessage.Text = "Your file was uploaded successfully.";
            }
           
            uploadFileName = fileName;
            
            FileUpload1.SaveAs(MapPath("~/Upload/") + fileName);

        }
    }
}