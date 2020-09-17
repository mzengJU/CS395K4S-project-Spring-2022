using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;

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

            try
            {
                SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
                builder.DataSource = "cs395projectdemo.database.windows.net";
                builder.UserID = "cs395projectdemo";
                builder.Password = "K4Smp122";
                builder.InitialCatalog = "cs395projectdemoDB";

                using (SqlConnection connection = new SqlConnection(builder.ConnectionString))
                {
                    System.Diagnostics.Debug.WriteLine("\nQuery data example:");
                    System.Diagnostics.Debug.WriteLine("=========================================\n");

                    connection.Open();
                    StringBuilder sb = new StringBuilder();
                    
                    //sb.Append("Insert into accountExample ");
                    //sb.Append("Values ('"+userEmail+"','"+password+"','"+userRole+"',NULL);");

                    sb.Append("select account_name,role ");
                    sb.Append("from accountExample where account_name = '"+userEmail+"' and password = '"+password+"' and role = '"+userRole+"';");
                    


                    String sql = sb.ToString();
                    System.Diagnostics.Debug.WriteLine(sql);
                    using (SqlCommand command = new SqlCommand(sql, connection))
                    {
                        //If you are using a update, delete or insert 
                        //use  int RowsAffected = Cmd.ExecuteNonQuery(); instead of using sqlDataReader
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
							System.Diagnostics.Debug.WriteLine(reader.HasRows);
							
							if (reader.HasRows)
                            {
								
								reader.Read();

								if (reader["role"].ToString().Equals("Staff")) {
									Session["UserAccount"] = userEmail;
									Response.Redirect("StaffLandingPage.aspx");
								}
								else if (reader["role"].ToString().Equals("Student"))
								{
									Session["UserAccount"] = userEmail;
									Response.Redirect("StudentLandingPage.aspx");
								}
								connection.Close();
							}
                            else
                            {
								connection.Close();
								warningPanel.Visible =true;
								Response.Redirect("Default.aspx");
							}
                        }
                    }
                   
                }
            }
            catch (SqlException SQL_error)
            {
                System.Diagnostics.Debug.WriteLine(e.ToString());
            }
            Console.ReadLine();
        }
    }

        
    
}