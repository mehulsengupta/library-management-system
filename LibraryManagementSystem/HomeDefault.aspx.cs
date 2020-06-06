using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class HomeDefault : System.Web.UI.Page
{
    string c;
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["selectedbook"] != null)
        //{
        //    string str = Session["selectedbook"].ToString();
        //    Response.Write(str);
        //}
        //else
        //{
        //    Response.Write("<script>window.alert('SESSION EXPIRED! PLEASE LOGIN AGAIN');window.location.href='First.aspx';</script>");
        //    //Response.Redirect("First.aspx");
        //}

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        c = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        SqlConnection con = new SqlConnection(c);
        string uname = TextBox1.Text;
        string pass = TextBox2.Text;
        SqlCommand cmd = new SqlCommand("SELECT PASSWORD, FIRSTNAME FROM MEMBER WHERE MEMID='" + uname + "'", con);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adp.Fill(ds, "unp");
        if (ds.Tables["unp"].Rows.Count == 1)
        {
            if (pass.Equals(ds.Tables["unp"].Rows[0][0].ToString(), StringComparison.Ordinal))
            {
                /**Session 01 **/
                Session["user"] = ds.Tables["unp"].Rows[0][1].ToString();
                Session.Timeout = 10;
                /**Session 02**/
                Session["memid"] = uname;
                Response.Redirect("First.aspx");
            }
            else
            {
                Response.Write("<script>alert('Wrong ID or Password')</script>");
            }



        }
        else
        {
            Response.Write("<script>alert('Wrong ID or Password')</script>");
        }
    }
    
}