using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class LibraryStatus : System.Web.UI.Page
{
    int q; string str1,bstr,bstr2,eb; 
   
    static string c = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
    SqlConnection con = new SqlConnection(c);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["selectedbook"] == null)
        {

            //Session.Abandon();
            Response.Write("<script>window.alert('Session Timed Out! Please try again.');window.location.href='First.aspx';</script>");
        }
        //string user = Session["user"].ToString();
        else
        {
            string str = Session["selectedbook"].ToString();
            str1 = str;
            //Response.Write(str);

            SqlCommand cmd = new SqlCommand("SELECT ACCNO, TITLE, AUTHOR, PUB_YEAR, PUBLISHER, EBOOKAVAIL, TYPE FROM BOOKS WHERE ACCNO='" + str + "';", con);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adp.Fill(ds, "bd");
            GridView1.DataSource = ds.Tables["bd"];
            GridView1.DataBind();
            eb = ds.Tables["bd"].Rows[0][6].ToString();

            SqlCommand cmd1 = new SqlCommand("SELECT QTY, IMGURL FROM BOOKS WHERE ACCNO='" + str + "';", con);
            SqlDataAdapter adp1 = new SqlDataAdapter(cmd1);
            DataSet ds1 = new DataSet();
            adp1.Fill(ds1, "im");
            Image1.ImageUrl = ds1.Tables["im"].Rows[0][1].ToString();
            //check of user has already issued the book. Only one copy of each book allowed to each user.

            int qty = Convert.ToInt32(ds1.Tables["im"].Rows[0][0]);
            q = qty;
            if (Session["user"] != null)
            {
                bstr = Session["user"].ToString();
                bstr2 = "Logout";
                Button2.PostBackUrl = "profile.aspx";
                Image2.ImageUrl = Session["dp"].ToString();
                Image2.Visible = true;




                if (Session["memid"] != null)
                {
                    //check for the max number of books issued
                    SqlCommand cmdnomax = new SqlCommand("SELECT COUNT(*) FROM [dbo].[" + Session["memid"].ToString() + "Details];", con);
                    SqlDataAdapter adpnomax = new SqlDataAdapter(cmdnomax);
                    DataSet dsnomax = new DataSet();
                    adpnomax.Fill(dsnomax, "max");
                    int flag1 = 0;
                    int maxk = Convert.ToInt32(dsnomax.Tables["max"].Rows[0][0]);
                    if (maxk > 3)
                        flag1++;


                    //check for any fines
                    SqlCommand cmdfine = new SqlCommand("SELECT FINE FROM [dbo].[" + Session["memid"].ToString() + "Details];", con);
                    SqlDataAdapter adpfine = new SqlDataAdapter(cmdfine);
                    DataSet dsfine = new DataSet();
                    adpfine.Fill(dsfine, "fine");
                    int flag = 0;
                    for (int i = 0; i < dsfine.Tables["fine"].Rows.Count; i++)
                    {
                        if (Convert.ToInt32(dsfine.Tables["fine"].Rows[i][0]) > 0)
                        {
                            flag++;
                            break;
                        }
                    }
                    if (flag == 0 && flag1 == 0)
                    {
                        SqlCommand cmd2 = new SqlCommand("SELECT MEMID FROM ISSUEDTO WHERE ACCNO='" + str + "';", con);
                        SqlDataAdapter adp2 = new SqlDataAdapter(cmd2);
                        DataSet ds2 = new DataSet();
                        adp2.Fill(ds2, "issued");
                        if (ds2.Tables["issued"].Rows.Count != 0)
                        {
                            string mem = ds2.Tables["issued"].Rows[0][0].ToString();
                            //Response.Write(mem + "," + str + "," + Session["memid"].ToString());
                            if (mem.Equals(Session["memid"].ToString(), StringComparison.Ordinal))
                            {

                                Button1.Visible = false;
                                Button4.Visible = false;
                                Label1.Text = "You have already issued this book";

                            }
                            else
                            {
                                if (qty > 1)
                                {
                                    Button1.Visible = true;
                                    Button4.Visible = true;
                                    if (eb.Equals("EBOOK", StringComparison.Ordinal))
                                    {
                                        SqlCommand cmdebook = new SqlCommand("SELECT EBOOKURL FROM BOOKS WHERE ACCNO='" + Session["selectedbook"].ToString() + "';", con);
                                        SqlDataAdapter adpebook = new SqlDataAdapter(cmdebook);
                                        DataSet dsebook = new DataSet();
                                        adpebook.Fill(dsebook, "ebook");
                                        Label2.Visible = true;
                                        HyperLink1.Visible = true;
                                        HyperLink1.Target = "_search";
                                        HyperLink1.Text = "Click Here";
                                        HyperLink1.NavigateUrl = dsebook.Tables["ebook"].Rows[0][0].ToString();
                                        Button1.Visible = false;
                                        Button4.Visible = false;
                                    }
                                    else if (eb.Equals("BOTH", StringComparison.Ordinal))
                                    {
                                        SqlCommand cmdebook = new SqlCommand("SELECT EBOOKURL FROM BOOKS WHERE ACCNO='" + Session["selectedbook"].ToString() + "';", con);
                                        SqlDataAdapter adpebook = new SqlDataAdapter(cmdebook);
                                        DataSet dsebook = new DataSet();
                                        adpebook.Fill(dsebook, "ebook");
                                        Label2.Visible = true;
                                        HyperLink1.Visible = true;
                                        HyperLink1.Target = "_search";
                                        HyperLink1.Text = "Click Here";
                                        HyperLink1.NavigateUrl = dsebook.Tables["ebook"].Rows[0][0].ToString();
                                        //Button1.Visible = false;
                                        //Button4.Visible = false;
                                    }
                                }
                                else
                                {
                                    Label1.Text = "Insufficient Quantity. Please check back later.";
                                }
                            }
                        }
                        else
                        {

                            if (qty > 1)
                            {
                                Button1.Visible = true;
                                Button4.Visible = true;
                                if (eb.Equals("EBOOK", StringComparison.Ordinal))
                                {
                                    SqlCommand cmdebook = new SqlCommand("SELECT EBOOKURL FROM BOOKS WHERE ACCNO='" + Session["selectedbook"].ToString() + "';", con);
                                    SqlDataAdapter adpebook = new SqlDataAdapter(cmdebook);
                                    DataSet dsebook = new DataSet();
                                    adpebook.Fill(dsebook, "ebook");
                                    Label2.Visible = true;
                                    HyperLink1.Visible = true;
                                    HyperLink1.Target = "_search";
                                    HyperLink1.Text = "Click Here";
                                    HyperLink1.NavigateUrl = dsebook.Tables["ebook"].Rows[0][0].ToString();
                                    Button1.Visible = false;
                                    Button4.Visible = false;
                                }
                                else if (eb.Equals("BOTH", StringComparison.Ordinal))
                                {
                                    SqlCommand cmdebook = new SqlCommand("SELECT EBOOKURL FROM BOOKS WHERE ACCNO='" + Session["selectedbook"].ToString() + "';", con);
                                    SqlDataAdapter adpebook = new SqlDataAdapter(cmdebook);
                                    DataSet dsebook = new DataSet();
                                    adpebook.Fill(dsebook, "ebook");
                                    Label2.Visible = true;
                                    HyperLink1.Visible = true;
                                    HyperLink1.Target = "_search";
                                    HyperLink1.Text = "Click Here";
                                    HyperLink1.NavigateUrl = dsebook.Tables["ebook"].Rows[0][0].ToString();
                                    //Button1.Visible = false;
                                    //Button4.Visible = false;
                                }

                            }
                            else
                            {
                                Label1.Text = "Insufficient Quantity. Please check back later.";
                            }
                        }
                    }
                    else if (flag != 0)
                        Label1.Text = "Please clear all fines before issuing";
                    else if (flag1 != 0)
                        Label1.Text = "You have already the maximum number of books issued.";
                    else
                        Label1.Text = "You have both outstanding fines and maximum number of books";
                }
            }

            else
            {
                Label1.Text = "Please Log In to Issue/access E-Book (if available).";
                bstr = "Login";
                bstr2 = "Sign Up";
                Button2.PostBackUrl = "HomeDefault.aspx";
                Button3.PostBackUrl = "SignUp.aspx";
            }

            Button2.Text = bstr;
            Button3.Text = bstr2;

        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.Header)
        {
            //e.Row.Cells[0].Text = "SELECT BOOK";
            e.Row.Cells[0].Text = "ACCESSION NUMBER";
            e.Row.Cells[1].Text = "BOOK TITLE";
            e.Row.Cells[2].Text = "AUTHOR";
            e.Row.Cells[3].Text = "PUBLISHED";
            e.Row.Cells[5].Text = "E-BOOK AVAILABLE?";
            //e.Row.Cells[5].Text = "AVAILABLE QTY";
            //e.Row.Cells[6].Text = "PAGES";
            //e.Row.Cells[4].Text = "PUBLISHER";
            //e.Row.Cells[8].Text = "E-BOOK AVAILABLE?";
            //e.Row.Cells[9].Text = "E-BOOK LINK";
            //e.Row.Cells[10].Text = "CATEGORY";
            //e.Row.Cells[11].Text = "SUB-CATEGORY";
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //Button1.PostBackUrl = "UserDetails.aspx";
        q--;
        SqlCommand cmd = new SqlCommand("UPDATE BOOKS SET QTY=" + q + " WHERE ACCNO='" + str1 + "';", con);
        con.Open();
        int r = cmd.ExecuteNonQuery();
        con.Close();
        SqlCommand cmd1 = new SqlCommand("INSERT INTO ISSUEDTO VALUES ('" + Session["memid"].ToString() + "','" + Session["selectedbook"].ToString() + "');", con);
        con.Open();
        int r1 = cmd1.ExecuteNonQuery();
        con.Close();
        SqlCommand cmd2 = new SqlCommand("INSERT INTO [dbo].["+Session["memid"].ToString()+"Details] VALUES('" + Session["memid"].ToString() + "','" + DateTime.Now.ToString() + "','" + DateTime.Now.AddDays(30).ToString() + "','" + Session["selectedbook"] + "',0);", con);
        con.Open();
        int r2 = cmd2.ExecuteNonQuery();
        con.Close();

        if (r == 1&&r1==1&&r2==1)
            Response.Redirect("Userdata.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("profile.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (Button3.Text.Equals("Logout", StringComparison.Ordinal))
        {
            Session.Abandon();
            Response.Redirect("First.aspx");
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        if (IsAddressAvailable("http://localhost:31909/30DaysLater.asmx"))
        {
            ServiceReference1._30DaysLaterSoapClient ws = new ServiceReference1._30DaysLaterSoapClient();
            Label1.Text = "Return on or before:" + ws.dateofreturn();
        }
        else
            Label1.Text = "Return on or before:" + DateTime.Now.AddDays(30).ToShortDateString();
    }
    public bool IsAddressAvailable(string address)
    {
        try
        {
            System.Net.WebClient client = new System.Net.WebClient();
            client.DownloadData(address);
            return true;
        }
        catch
        {
            return false;
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("First.aspx");
    }
}