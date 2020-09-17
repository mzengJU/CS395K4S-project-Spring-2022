using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cs395projectK4S
{
    public partial class StaffLandingPage : System.Web.UI.Page
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

        protected void Button5_Click(object sender, EventArgs e)
        {
            Session["UserAccount"] = null;
            Response.Redirect("Default.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("StaffProfiling.aspx");
        }
    }
}