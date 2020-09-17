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
	public partial class StaffProfiling : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            if (Session["UserAccount"] != null)
            {
                if (!Page.IsPostBack)
                    Servicelabel.Text = "";
            }
            else
            {
                Response.Redirect("Default.aspx");
            }
                
		}
		protected void Button1_Click(object sender, EventArgs e)
		{
            System.Diagnostics.Debug.WriteLine("##############");
            DataTable ServiceTable = new DataTable();

			SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
			builder.DataSource = "cs395projectdemo.database.windows.net";
			builder.UserID = "cs395projectdemo";
			builder.Password = "K4Smp122";
			builder.InitialCatalog = "cs395projectdemoDB";
			
           
            string FirstnameText = "";
            string LastnameText = "";
            string ageText = "";
            string ageEndText = "";
            string genderText = "";
            

            if (FirstNameTbx.Text != "")
            {
                FirstnameText = "INTERSECT select Fname,Lname,Gender,Age,Email,PhoneNo from StudentProfile1 where Fname = @fname";
            }
            if(LastNametbx.Text != "")
            {
                LastnameText = "INTERSECT select Fname,Lname,Gender,Age,Email,PhoneNo from StudentProfile1 where Lname = @lname";
            }
            if (AgeTbx.Text != "")
            {
                ageText = "INTERSECT select Fname,Lname,Gender,Age,Email,PhoneNo from StudentProfile1 where Age >= @ageStart";
            }
            if(AgeEndTbx.Text!="")
            {
                ageEndText = "INTERSECT select Fname,Lname,Gender,Age,Email,PhoneNo from StudentProfile1 where Age <= @ageEnd";
            }
            if (Genderlist.SelectedValue != "")
            {
                genderText = "INTERSECT select Fname,Lname,Gender,Age,Email,PhoneNo from StudentProfile1 where Gender =@gender";
            }
            string commandText = "select Fname,Lname,Gender,Age,Email,PhoneNo from StudentProfile1 "+FirstnameText+" "+LastnameText+" "+ageText+" "+ ageEndText+ " "+genderText+";";

            System.Diagnostics.Debug.WriteLine(commandText);
            if (commandText != "")
            {
                try
                {


                    using (SqlConnection connection = new SqlConnection(builder.ConnectionString))
                    {
                        using (SqlCommand command = new SqlCommand(commandText, connection))
                        {
                            if (FirstNameTbx.Text != "") 
                            {
                                command.Parameters.Add("@fname", SqlDbType.VarChar);
                                command.Parameters["@fname"].Value = FirstNameTbx.Text;
                            }

                            if (LastNametbx.Text != "")
                            {
                                command.Parameters.Add("@lname", SqlDbType.VarChar);
                                command.Parameters["@lname"].Value = LastNametbx.Text;
                            }
                            if (AgeTbx.Text != "")
                            {
                                command.Parameters.Add("@ageStart", SqlDbType.Int);
                                command.Parameters["@ageStart"].Value = Convert.ToInt32(AgeTbx.Text);
                            }
                            if(AgeEndTbx.Text!="")
                            {
                                command.Parameters.Add("@ageEnd", SqlDbType.Int);
                                command.Parameters["@ageEnd"].Value = Convert.ToInt32(AgeEndTbx.Text);
                            }
                            if (Genderlist.SelectedValue != "None")
                            {
                                command.Parameters.Add("@gender", SqlDbType.VarChar);
                                command.Parameters["@gender"].Value = Genderlist.SelectedValue;
                            }


                            connection.Open();
                            SqlDataReader myReader = command.ExecuteReader();


                            ServiceTable.Load(myReader);
                            System.Diagnostics.Debug.WriteLine(ServiceTable.Rows.Count);

                            //Define HTML Table column name
                            //Center text in the cells, add padding in the cells
                            string htmlTable = "<table border='1'><tr>";
                            foreach (DataColumn column in ServiceTable.Columns)
                            {
                                htmlTable += "<th style=\"text-align: center; width:150px; background-color: #c7d7f0\">" + column.ColumnName + "</th>";
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
                                htmlTable += "<tr style=\"text-align: center\"><td>" + fname + "</td><td>" + lname + "</td><td>" + gender + "</td><td>" + age + "</td><td>" + email + "</td><td>" + phoneNo + "</td></tr>";
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
            else
            {
                Servicelabel.Text = "Please input some information as search filter.";
            }

		}

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Session["StudentAccount"] = studentUserName.Text;
            Response.Redirect("StaffStudentProfiling.aspx");
        }
    }
}