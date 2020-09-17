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
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

    
        protected void Button1_Click1(object sender, EventArgs e)
        {
            // Button logic for database
            string Firstname = fname.Value;
            string Lastname = lname.Value;
            string Email = email.Value;
            string Password = pwd.Value;
            string Confirmpassword = confirmPwd.Value;
            string userRole = role.SelectedItem.Text;

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

                    connection.Open();

                    string commandText = "Insert into UserAccount values(@userName,@pw, @role, NULL, @fname, @lname, @salt);";


                    using (SqlCommand command = new SqlCommand(commandText, connection))
                    {
                        command.Parameters.Add("@userName", SqlDbType.VarChar, 50);
                        command.Parameters["@userName"].Value = email.Value;

                        command.Parameters.Add("@pw", SqlDbType.VarChar, 256);
                        string salt = GetSalt(5);
                        command.Parameters["@pw"].Value = Encrypt(string.Concat(pwd.Value, salt));

                        command.Parameters.Add("@role", SqlDbType.VarChar, 25);
                        command.Parameters["@role"].Value = role.SelectedValue;

                        command.Parameters.Add("@fname", SqlDbType.VarChar, 25);
                        command.Parameters["@fname"].Value = fname.Value;

                        command.Parameters.Add("@lname", SqlDbType.VarChar, 25);
                        command.Parameters["@lname"].Value = lname.Value;

                        command.Parameters.Add("@salt", SqlDbType.VarChar, 50);
                        command.Parameters["@salt"].Value = salt;

                        int RowsAffected = command.ExecuteNonQuery();
                        System.Diagnostics.Debug.WriteLine(RowsAffected);

                        Response.Redirect("Default.aspx");


                        connection.Close();
                    }



                }
            }
            catch (SqlException SQL_error)
            {
                System.Diagnostics.Debug.WriteLine(SQL_error.ToString());
            }
            Console.ReadLine();

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
        private static string GetSalt(int maximumSaltLength)
        {
            var buffer = new byte[maximumSaltLength];
            string salt;
            using (var random = new RNGCryptoServiceProvider())
            {
                random.GetBytes(buffer);
                salt = BitConverter.ToString(buffer);
            }


            return salt;
        }
    }
}
