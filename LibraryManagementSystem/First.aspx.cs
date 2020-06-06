using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class First : System.Web.UI.Page
{
    string c = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
    string str="Login";



    protected void Page_Load(object sender, EventArgs e)
    {
        /*Session["user"] = "";
        if (Session.IsNewSession && Session["user"] == null)
        {

            Session.Abandon();
            Response.Write("<script>window.alert('Session Timed Out! Please login again.');window.location.href='First.aspx';</script>");
        }*/
        /*if (HttpContext.Current.User.Identity.IsAuthenticated)
        {
            Session.Abandon();
            Response.Write("<script>window.alert('Session Timed Out! Please login again.');window.location.href='First.aspx';</script>");
        }*/
        if (!IsPostBack)
        {
            DropDownList1.SelectedValue = "Select";
            //Image1.Visible = false;
        }

        
            if (!Session.IsNewSession)
            {
                if (Session["user"] != null)
                {
                    str ="Hi, "+ Session["user"].ToString();
                    //TextBox1.Text = str;
                    Button1.PostBackUrl = "profile.aspx";
                    Button2.Visible = false;
                    Button9.Visible = true;

                    //Button9.Attributes.Add("onmouseover", "");
                    SqlConnection con = new SqlConnection(c);
                    SqlCommand cmd = new SqlCommand("SELECT DP FROM MEMBER WHERE MEMID='" + Session["memid"].ToString() + "';", con);
                    SqlDataAdapter adp = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    adp.Fill(ds, "ud");
                    Image1.ImageUrl = "ProfilePictures/"+ds.Tables["ud"].Rows[0][0].ToString();
                    Image1.Visible = true;
                    /**Session 03**/
                    Session["dp"] = "ProfilePictures/" + ds.Tables["ud"].Rows[0][0].ToString();
                    if (Session["user"].ToString().Equals("Admin", StringComparison.Ordinal))
                    {
                        TextBox1.Visible = false;
                        DropDownList1.Visible = false;
                        ImageButton1.Visible = false;
                        Label1.Visible = false;
                        Button10.Visible = true;
                        Button10.PostBackUrl = "modifybookshelf.aspx";
                        UpdatePanel1.Visible = false;
                        Label4.Visible = false;
                    }

                }
                
                
            }
            //Response.Write("<script>alert('Hello');</script>");
            Button1.Text = str;
        }
        
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomeDefault.aspx");
    }
    
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
SqlConnection con = new SqlConnection(c);
TextBox1.Text = "";
        string search = DropDownList1.Text;
        SqlCommand cmd = new SqlCommand("Select ACCNO, TITLE, AUTHOR, PUB_YEAR, PAGES, PUBLISHER, EBOOKAVAIL, CATEGORY, TYPE from BOOKS where CATEGORY='" + search + "'", con);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataSet ds=new DataSet();
        adp.Fill(ds, "cat");
        GridView1.DataSource = ds.Tables["cat"];
        GridView1.DataBind();
        

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        string str = GridView1.SelectedRow.Cells[1].Text;
        /**Session 04**/
        Session["selectedbook"] = str;
        
        Response.Redirect("LibraryStatus.aspx");

    }
protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
{
    SqlConnection con = new SqlConnection(c);
    string str = TextBox1.Text;
    DropDownList1.SelectedValue = "Select";
    if (!TextBox1.Text.Equals("",StringComparison.Ordinal))
    {
    SqlCommand cmd = new SqlCommand("Select ACCNO, TITLE, AUTHOR, PUB_YEAR, PAGES, PUBLISHER, EBOOKAVAIL, CATEGORY, TYPE from BOOKS WHERE ACCNO LIKE '%" + str + "%' OR AUTHOR LIKE '%" + str + "%' OR TITLE LIKE '%" + str + "%' OR PUBLISHER LIKE '%" + str + "%' OR TYPE LIKE '%" + str + "%';", con);
    SqlDataAdapter adp = new SqlDataAdapter(cmd);
    DataSet ds = new DataSet();
    adp.Fill(ds, "subcat");
    GridView1.DataSource = ds.Tables["subcat"];
    GridView1.DataBind();
    }


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
        //e.Row.Cells[5].Text = "AVAILABLE QTY";
        e.Row.Cells[5].Text = "PAGES";
        e.Row.Cells[6].Text = "PUBLISHER";
        e.Row.Cells[7].Text = "E-BOOK AVAILABLE?";
        //e.Row.Cells[9].Text = "E-BOOK LINK";
        e.Row.Cells[8].Text = "CATEGORY";
        //e.Row.Cells[11].Text = "SUB-CATEGORY";
        e.Row.Cells[9].Text = "E-BOOK OR PAPERBACK?";
    }
    
}

protected void TextBox1_TextChanged(object sender, EventArgs e)
{
}

protected void Button2_Click(object sender, EventArgs e)
{

}
protected void Button9_Click(object sender, EventArgs e)
{
    //Image1.Visible = false;
    Session.Abandon();
    Response.Redirect("First.aspx");
}

protected void Button8_Click(object sender, EventArgs e)
{
    Response.Redirect("Default.aspx");
}
protected void Button7_Click(object sender, EventArgs e)
{
    Response.Redirect("AboutUs.aspx");
}
}
//onrowdatabound="GridView1_RowDataBound" emptydatatext="No data available.