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
    public partial class StaffCheckAttendence : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitBt_Click(object sender, EventArgs e)
        {
            string youthName = NameTb.Text;
            string youthEmail = EmailTb.Text;
            string service = ServiceDropDownList1.Text;
            string attendDate = yearTb.Text + "-" + monthTb.Text + "-" + dayTb.Text;
            string attendTime = StartHourTb.Text + ":" + StartMinTb.Text + " " + TimeDropDownList2.Text;
            string duration = durationTb.Text;

            try
            {
                string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;

                using (SqlConnection connection = new SqlConnection(connStr))
                {
                    connection.Open();
                    string commandText = "insert into StudentAttendEventVersion1(YouthEmail, YouthName, ServiceName, AttendDate, AttendTime, Duration) values(@youthemail, @youthname, @serviceName, @attendate, @starttime, @duration);";
                    using (SqlCommand command = new SqlCommand(commandText, connection))
                    {
                        command.Parameters.Add("@youthemail", SqlDbType.VarChar);
                        command.Parameters["@youthemail"].Value = youthEmail;

                        command.Parameters.Add("@youthname", SqlDbType.VarChar, 50);
                        command.Parameters["@youthname"].Value = youthName;

                        command.Parameters.Add("@serviceName", SqlDbType.VarChar, 50);
                        command.Parameters["@serviceName"].Value = service;

                        command.Parameters.Add("@attendate", SqlDbType.VarChar);
                        command.Parameters["@attendate"].Value = attendDate;

                        command.Parameters.Add("@starttime", SqlDbType.VarChar);
                        command.Parameters["@starttime"].Value = attendTime;

                        command.Parameters.Add("@duration", SqlDbType.Decimal);
                        command.Parameters["@duration"].Value = decimal.Parse(duration);

                        System.Diagnostics.Debug.WriteLine(command.CommandText);
                        int RowsAffected = command.ExecuteNonQuery();
                        //connection.Close();
                    }

                }
            }
            catch (SqlException SQL_error)
            {
                System.Diagnostics.Debug.WriteLine(e.ToString());
            }
            //}
        }
    }
}