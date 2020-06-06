using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class modifybookshelf : System.Web.UI.Page
{
    static string c = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
    SqlConnection con = new SqlConnection(c);
    protected void Page_Load(object sender, EventArgs e)
    {
        

        if (!Session.IsNewSession)
        {
            if (Session["user"] != null)
            {
                Button3.Text = "Hi, "+Session["user"].ToString();
                Button3.PostBackUrl = "profile.aspx";
            }

        }

        if (!IsPostBack)
        {
            DropDownList1.Items.Add("Select");
            SqlCommand cmd = new SqlCommand("SELECT DISTINCT(CATEGORY) FROM BOOKS", con);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adp.Fill(ds, "cat");
            for (int i = 0; i < ds.Tables["cat"].Rows.Count; i++)
            {
                DropDownList1.Items.Add(ds.Tables["cat"].Rows[i][0].ToString());

            }
            DropDownList1.SelectedValue="Select";
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("First.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("First.aspx");
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("SELECT * FROM BOOKS WHERE CATEGORY='" + DropDownList1.Text + "';", con);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adp.Fill(ds, "catsp");
        GridView1.DataSource = ds.Tables["catsp"];
        GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string str = GridView1.SelectedRow.Cells[1].Text;
        /**Session 04**/
        Session["selectedbookad"] = str;

        Response.Redirect("BookDetails.aspx");
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.Header)
        {
            e.Row.Cells[0].Text = "SELECT BOOK";
            e.Row.Cells[1].Text = "ACCESSION NUMBER";
            e.Row.Cells[2].Text = "BOOK TITLE";
            e.Row.Cells[3].Text = "AUTHOR";
            e.Row.Cells[4].Text = "PUBLISHED";
            e.Row.Cells[5].Text = "AVAILABLE QTY";
            e.Row.Cells[6].Text = "PAGES";
            e.Row.Cells[7].Text = "PUBLISHER";
            e.Row.Cells[8].Text = "E-BOOK AVAILABLE?";
            e.Row.Cells[9].Text = "E-BOOK LINK";
            e.Row.Cells[10].Text = "CATEGORY";
            e.Row.Cells[11].Text = "SUB-CATEGORY";
            e.Row.Cells[12].Text = "IMAGE URL";
        }

    }
}