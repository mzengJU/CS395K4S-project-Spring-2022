using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.Data;

namespace cs395projectK4S
{
	public partial class ExampleTableRetrival : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!Page.IsPostBack)
				Servicelabel.Text = "";
		}

		protected void submitBt_Click(object sender, EventArgs e)
		{
			DataTable ServiceTable = new DataTable();

            string commandText = "select Fname,Lname,Gender,Age,Email,PhoneNo from StudentProfile1 where Email=@email;";
            
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
                        command.Parameters.Add("@email", SqlDbType.VarChar);
                        command.Parameters["@email"].Value = studentAccountTbx.Text;
                        
                        
                        connection.Open();
                        SqlDataReader myReader = command.ExecuteReader();

     
                        ServiceTable.Load(myReader);
						System.Diagnostics.Debug.WriteLine(ServiceTable.Rows.Count);

						//Define HTML Table column name
						string htmlTable = "<table border='1'><tr>";
						foreach (DataColumn column in ServiceTable.Columns)
							{
								htmlTable += "<th>" + column.ColumnName + "</th>";
							}
						htmlTable += "</tr>";

						//Getting the data and put it into the HTML table
						foreach (DataRow dr in ServiceTable.Rows)
							{
								string fname = dr["Fname"].ToString();
								string lname = dr["Lname"].ToString();
								string gender = dr["Gender"].ToString();
								string age = dr["Age"].ToString();
								string email = dr["Email"].ToString();
								string phoneNo = dr["PhoneNo"].ToString();
								htmlTable += "<tr><td>" + fname + "</td><td>" + lname + "</td><td>" + gender + "</td><td>" + age + "</td><td>" + email + "</td><td>" + phoneNo + "</td></tr>";
							}
						htmlTable += "</table>";
						System.Diagnostics.Debug.WriteLine(htmlTable);
						Servicelabel.Text = htmlTable;
						connection.Close();

						}
					}

				
			}
			catch (SqlException SQL_error)
			{
				System.Diagnostics.Debug.WriteLine(e.ToString());
			}
			
		}
	}
}