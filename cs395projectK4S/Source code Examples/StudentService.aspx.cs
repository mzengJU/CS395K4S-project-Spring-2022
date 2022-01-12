using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.Data;
using System.Configuration;


namespace cs395projectK4S
{
    public partial class StudentService : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
                ServiceTableLb.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable ServiceTable = new DataTable();

            string commandText = "select Name,ServiceName,Months,Day,MeetingTime,CurrentHours,RemainingHours from Group1_ScheduledClasses where EmailID = @email; ";

            try
            {
                string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;

                using (SqlConnection connection = new SqlConnection(connStr))
                {
                    using (SqlCommand command = new SqlCommand(commandText, connection))
                    {
                        command.Parameters.Add("@email", SqlDbType.VarChar);
                        command.Parameters["@email"].Value = EmailTx.Text;


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
                            string studentname = dr["Name"].ToString();
                            string services = dr["ServiceName"].ToString();
                            string months = dr["Months"].ToString();
                            string weekdays = dr["Day"].ToString();
                            string meetingtime = dr["MeetingTime"].ToString();
                            string currenthours = dr["CurrentHours"].ToString();
                            string remaininghours = dr["RemainingHours"].ToString();
                            htmlTable += "<tr><td>" + studentname + "</td><td>" + services + "</td><td>" + months + "</td><td>" + weekdays + "</td><td>" + meetingtime + "</td><td>" + currenthours + "</td><td>" + remaininghours + "</td></tr>";
                        }
                        htmlTable += "</table>";
                        System.Diagnostics.Debug.WriteLine(htmlTable);
                        ServiceTableLb.Text = htmlTable;
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