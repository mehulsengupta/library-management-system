using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AboutUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        Response.Redirect("First.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomeDefault.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("SignUp.aspx.aspx");
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}