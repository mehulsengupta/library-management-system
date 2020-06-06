using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Userdata : System.Web.UI.Page
{
    string user, memid, dp;int f=0;
    static string c = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
    SqlConnection con = new SqlConnection(c);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {

            //Session.Abandon();
            Response.Write("<script>window.alert('Session Timed Out! Please login again.');window.location.href='First.aspx';</script>");
        }
        else
        {

            if (!Session.IsNewSession)
            {
                user = Session["user"].ToString();
                memid = Session["memid"].ToString();
                dp = Session["dp"].ToString();
            }

            Button2.Text = "Hi, " + user;
            Label5.Text = memid;
            Image1.ImageUrl = dp;
            SqlCommand finedays = new SqlCommand("SELECT RETURNDATE, ACCNO FROM [dbo].[" + memid + "Details];", con);
            SqlDataAdapter adpfine = new SqlDataAdapter(finedays);
            DataSet dsfine = new DataSet();
            adpfine.Fill(dsfine, "fine");
            for (int i = 0; i < dsfine.Tables["fine"].Rows.Count; i++)
            {
                DateTime datet = DateTime.Now;
                DateTime dater = Convert.ToDateTime(dsfine.Tables["fine"].Rows[i][0].ToString());
                string accno = dsfine.Tables["fine"].Rows[i][1].ToString();
                int diff = (int)(dater - datet).TotalDays;
                if (diff < 0)
                {
                    f = Math.Abs(diff);
                    SqlCommand updatefine = new SqlCommand("UPDATE [dbo].[" + memid + "Details] SET FINE=" + f + " WHERE ACCNO='" + accno + "';", con);
                    con.Open();
                    updatefine.ExecuteNonQuery();
                    con.Close();
                }
            }





            if (!IsPostBack)
            {
                SqlCommand cmd = new SqlCommand("SELECT * FROM [dbo].[" + memid + "Details];", con);
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adp.Fill(ds, "allbooks");
                GridView1.DataSource = ds.Tables["allbooks"];
                GridView1.DataBind();
            }
        }
    }

    
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("First.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("profile.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("First.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string retbook = GridView1.SelectedRow.Cells[4].Text;
       
        SqlCommand cmd2 = new SqlCommand("DELETE FROM [dbo].[" + memid + "Details] WHERE ACCNO='" + retbook + "';", con);
        con.Open();
        int r2 = cmd2.ExecuteNonQuery();
        con.Close();

        SqlCommand cmd3 = new SqlCommand("DELETE FROM ISSUEDTO WHERE ACCNO='" + retbook + "' AND MEMID='" + memid + "';", con);
        con.Open();
        int r3 = cmd3.ExecuteNonQuery();
        con.Close();

        SqlCommand cmd = new SqlCommand("SELECT QTY FROM BOOKS WHERE ACCNO='" + retbook + "';", con);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adp.Fill(ds, "qty");
        int qty = Convert.ToInt32(ds.Tables["qty"].Rows[0][0]);
        SqlCommand cmd1 = new SqlCommand("UPDATE BOOKS SET QTY=" + (++qty) + " WHERE ACCNO='" + retbook + "';", con);
        con.Open();
        int r1 = cmd1.ExecuteNonQuery();
        con.Close();

        if (r1 == 1 && r2 == 1 && r3 == 1)
            Response.Write("<script>window.alert('Return of book with accession number="+Server.HtmlEncode(retbook)+" is successful.');window.location.href='Userdata.aspx';</script>");
       




    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.Header)
        {
            e.Row.Cells[0].Text = "RETURN BOOK";
            e.Row.Cells[1].Text = "MEMBERSHIP ID";
            e.Row.Cells[2].Text = "DATE OF ISSUE";
            e.Row.Cells[3].Text = "DATE OF RETURN";
            e.Row.Cells[4].Text = "ACCESSION NO.";
            e.Row.Cells[5].Text = "FINE";
        }

    }
}