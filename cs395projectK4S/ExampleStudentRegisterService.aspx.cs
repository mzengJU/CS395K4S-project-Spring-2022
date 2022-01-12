using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace cs395projectK4S
{
    public partial class ExampleStudentRegisterService : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           if (!Page.IsPostBack)
            {
                DescriptionLb.Text = "****";
                FrequencyLb.Text = "****";
                CordinatePanel1.Visible = false;
                AssignedPanel2.Visible = false;
            }
            

        }

        protected void ServiceDropDownList_SelectedIndexChanged1(object sender, EventArgs e)
        {
            string service_description = "";
            string service_frequency = "";
            string month_option1 = "";
            string month_option2 = "";
            string month_option3 = "";
            string month_option4 = "";
            DataTable ServiceInfor = new DataTable();
            
            string commandText = "select Frequency,Description,MeetingMonthsOption1,MeetingMonthsOption2,MeetingMonthsOption3,MeetingMonthsOption4 from Group2_ServiceComponent where ServiceComponent = @service_selected;";

            try
            {
                string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;

                using (SqlConnection connection = new SqlConnection(connStr))
                {
                    connection.Open();
                    using (SqlCommand command = new SqlCommand(commandText, connection))
                    {
                        command.Parameters.Add("@service_selected", SqlDbType.VarChar);
                        command.Parameters["@service_selected"].Value = ServiceDropDownList.Text;

                        SqlDataReader myReader = command.ExecuteReader();


                        ServiceInfor.Load(myReader);
                        foreach (DataRow dr in ServiceInfor.Rows)
                        {
                            service_description = dr["Description"].ToString();
                            service_frequency = dr["Frequency"].ToString();
                            month_option1 = dr["MeetingMonthsOption1"].ToString();
                            month_option2 = dr["MeetingMonthsOption2"].ToString();
                            month_option3 = dr["MeetingMonthsOption3"].ToString();
                            month_option4 = dr["MeetingMonthsOption4"].ToString();
                        }
                        if (ServiceDropDownList.Text== "GED Tutoring & Testing")
                        {
                            AssignedPanel2.Visible = false;
                            CordinatePanel1.Visible = true;
                            
                        }
                        else if(ServiceDropDownList.Text == "Career Trade Certificate Boot Camps")
                        {
                            CordinatePanel1.Visible = false;
                            AssignedPanel2.Visible = true;
                            ListItem month_range1 = new ListItem(month_option1, month_option1, true);
                            ListItem month_range2 = new ListItem(month_option2, month_option2, true);
                            ListItem month_range3 = new ListItem(month_option3, month_option3, true);
                            ListItem month_range4 = new ListItem(month_option4, month_option4, true);

                            MonthChecklist.Items.Add(month_range1);
                            MonthChecklist.Items.Add(month_range2);
                            MonthChecklist.Items.Add(month_range3);
                            MonthChecklist.Items.Add(month_range4);
                        }
                        DescriptionLb.Text = service_description;
                        FrequencyLb.Text = service_frequency;
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