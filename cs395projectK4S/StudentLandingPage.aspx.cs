using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cs395projectK4S
{
    public partial class StudentLandingPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
			if (Session["UserAccount"] != null)
			{
				//Retrieving UserName from Session
				welcomeLb.Text = "Welcome : " + Session["UserAccount"];
			}
			else
			{
				Response.Redirect("Default.aspx");
			}
		}

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentGrade.aspx");
        }


        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("StudentProfiling.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentService.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentForm.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Session["UserAccount"] = null;
            Response.Redirect("Default.aspx");
        }
    }
}