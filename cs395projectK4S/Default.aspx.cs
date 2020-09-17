using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.Data;
using System.Security.Cryptography;

namespace cs395projectK4S
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            string userEmail = email.Value;
            string password = pwd.Value;
            string userRole = role.SelectedItem.Text;
            string message = "";

            try
            {
                SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
                builder.DataSource = "cs395projectdemo.database.windows.net";
                builder.UserID = "cs395projectdemo";
                builder.Password = "K4SVirtual";
                builder.InitialCatalog = "cs395projectdemoDB";

               

                using (SqlConnection connection = new SqlConnection(builder.ConnectionString))
                {
                    //System.Diagnostics.Debug.WriteLine("\nQuery data example:");
                    //System.Diagnostics.Debug.WriteLine("=========================================\n");

                    string commandText = "select Password,Salt, StaffCode, Role from UserAccount where UserName=@email;";


                    using (SqlCommand command = new SqlCommand(commandText, connection))
                    {
                        command.Parameters.Add("@email", SqlDbType.VarChar, 50);
                        command.Parameters["@email"].Value = email.Value;
                        if (connection.State == ConnectionState.Closed)
                        {
                            connection.Open();
                        }


                        SqlDataReader myReader = command.ExecuteReader();

                        DataTable inforTable = new DataTable();
                        string hashedPw;
                        string dbPw;
                        string dbSalt;
                        inforTable.Load(myReader);
                        System.Diagnostics.Debug.WriteLine("=========================================\n");
                        System.Diagnostics.Debug.WriteLine(inforTable.Rows.Count);
                        if (inforTable.Rows.Count == 0)
                        {
                            message = "Account not exist.";

                        }
                        else if (inforTable.Rows.Count == 1)
                        {
                            foreach (DataRow dr in inforTable.Rows)
                            {
                                dbSalt = dr["Salt"].ToString();
                                hashedPw = Encrypt(string.Concat(pwd.Value, dbSalt));
                                dbPw = dr["Password"].ToString();
                                if (string.Compare(hashedPw, dbPw) == 0)
                                {
                                    message = "Welcome, " + email.Value;
                                    string TheRole = dr["role"].ToString();
                                    string TheStaffCode = dr["StaffCode"].ToString();
                                    if  (TheRole.Equals("Staff"))
                                    {
                                        if (TheStaffCode.Equals(staffcode.Value))
                                        {
                                            Session["UserAccount"] = userEmail;
                                            Response.Redirect("StaffLandingPage.aspx");
                                        }
                                        else
                                        {
                                            message = "Staff Code not match.";
                                        }
                                   }
                                    if (dr["role"].ToString().Equals("Admin"))
                                    {
                                        Session["UserAccount"] = userEmail;
                                        Response.Redirect("AdminLandingPage.aspx");

                                    }
                                    /// Attempting to add the logic from intial code to direct students/staff to the correct page
                                    //  
                                    // reader.Read();
                                    // System.Diagnostics.Debug.WriteLine(reader["role"].ToString());
                                    // if (reader["role"].ToString().Equals("Staff")) ;
                                    if (dr["role"].ToString().Equals("Student"))
                                    {
                                        Session["UserAccount"] = userEmail;
                                        Response.Redirect("StudentLandingPage.aspx");

                                    }
                                    //Response.Redirect("StudentLandingPage.aspx");

                                    //else if (reader["role"].ToString().Equals("Student"))
                                    //    Response.Redirect("StudentLandingPage.aspx");
                                }
                                else
                                {
                                    message = "Account name and password not match.";

                                }
                            }

                        }
                        else
                        {
                            message = "Duplicate Account in database";
                        }
                        connection.Close();
                    }



                }

            }
            catch (SqlException SQL_error)
            {
                System.Diagnostics.Debug.WriteLine(SQL_error.ToString());
            }

            warning.Text = message;
        }

        protected string Encrypt(string rawPw)
        {
            string hashedPw;
            // Create a SHA256   
            using (SHA256 sha256Hash = SHA256.Create())
            {
                // ComputeHash - returns byte array  
                byte[] bytes = sha256Hash.ComputeHash(Encoding.UTF8.GetBytes(rawPw));

                // Convert byte array to a string   
                StringBuilder builder = new StringBuilder();
                for (int i = 0; i < bytes.Length; i++)
                {
                    builder.Append(bytes[i].ToString("X2")); //"X2" indicates the string should be formatted in Hexadecimal.
                }
                return hashedPw = builder.ToString();
            }
        }
        //protected void Button2_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("Registration.aspx");

        //}

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

        

        //    connection.Open();
        //                StringBuilder sb = new StringBuilder();

        //                //sb.Append("Insert into accountExample ");
        //                //sb.Append("Values ('"+userEmail+"','"+password+"','"+userRole+"',NULL);");

        //                sb.Append("select account_name,role ");
        //                sb.Append("from accountExample where account_name = '"+userEmail+"' and password = '"+password+"' and role = '"+userRole+"';");



        //    String sql = sb.ToString();
        //    System.Diagnostics.Debug.WriteLine(sql);
        //                    using (SqlCommand command = new SqlCommand(sql, connection))
        //                    {
        //                        //If you are using a update, delete or insert 
        //                        //use  int RowsAffected = Cmd.ExecuteNonQuery(); instead of using sqlDataReader
        //                        using (SqlDataReader reader = command.ExecuteReader())
        //                        {
        //                            if (reader.HasRows)
        //                            {
        //                                //test
        //                                if (true)
        //                                {

        //                                }

        //                                reader.Read();
        //                                System.Diagnostics.Debug.WriteLine(reader["role"].ToString());
        //                                if (reader["role"].ToString().Equals("Staff"))

        //                                    Response.Redirect("StaffLandingPage.aspx");

        //                                else if (reader["role"].ToString().Equals("Student"))
        //                                    Response.Redirect("StudentLandingPage.aspx");

        //                            }
        //                            else
        //                            {
        //                                warning.Visible = true;
        //                            }
        //                        }
        //                    }
        //                    connection.Close();
        //                }
        //            }
        //            catch (SqlException SQL_error)
        //            {
        //                System.Diagnostics.Debug.WriteLine(e.ToString());
        //            }
        //            Console.ReadLine();
        //        }
        //    }
    }


}