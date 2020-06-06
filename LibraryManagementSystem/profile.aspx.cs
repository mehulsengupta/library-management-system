using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class profile : System.Web.UI.Page
{
    string str;
    static string c=ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
    SqlConnection con=new SqlConnection(c);
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
                if (Session["user"] != null)
                {
                    Label8.Text = "Hi, " + Session["user"].ToString();
                    str = Session["memid"].ToString();
                    if (Session["user"].ToString().Equals("Admin", StringComparison.Ordinal))
                    {
                        Button7.Text = "MODIFY BOOK-SHELF";
                        Button7.PostBackUrl = "modifybookshelf.aspx";
                    }
                }
            }
            if (!IsPostBack)
            {
                SqlCommand cmd = new SqlCommand("SELECT * FROM MEMBER WHERE MEMID='" + str + "';", con);
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adp.Fill(ds, "ud");
                Label2.Text = ds.Tables["ud"].Rows[0][0].ToString();
                TextBox17.Text = ds.Tables["ud"].Rows[0][3].ToString();
                TextBox18.Text = ds.Tables["ud"].Rows[0][4].ToString();
                TextBox19.Text = ds.Tables["ud"].Rows[0][5].ToString();
                TextBox20.Text = ds.Tables["ud"].Rows[0][8].ToString();
                TextBox24.Text = ds.Tables["ud"].Rows[0][6].ToString();
                TextBox25.Text = ds.Tables["ud"].Rows[0][7].ToString();
                TextBox26.Text = ds.Tables["ud"].Rows[0][1].ToString();
                TextBox22.Text = ds.Tables["ud"].Rows[0][10].ToString();
                TextBox23.Text = ds.Tables["ud"].Rows[0][9].ToString();
                Image1.ImageUrl = Session["dp"].ToString();
                if (!Session["dp"].ToString().Equals("ProfilePictures/Default.png", StringComparison.Ordinal))
                    Button6.Visible = true;


            }
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





    protected void Button3_Click(object sender, EventArgs e)
    {
            Label17.Visible = true;
            TextBox27.Visible = true;
            TextBox17.ReadOnly = false;
            TextBox18.ReadOnly = false;
            TextBox24.ReadOnly = false;
            TextBox25.ReadOnly = false;
            TextBox26.ReadOnly = false;
            Button4.Visible = true;
            Button3.Visible = false;
    }




    protected void Button4_Click(object sender, EventArgs e)
    {
            int flagph=0;
            string eid = TextBox26.Text;
            string pwd = TextBox27.Text;
            string fn = TextBox17.Text;
            string ln = TextBox18.Text;
            string add = TextBox24.Text;
            string ph = TextBox25.Text;
            string qry="";
            if (ph.Length != 10)
            {
                Response.Write("<script>alert('Please Enter Proper 10-Digit Mobile Number')</script>");
                flagph = 1;
            }
            if (flagph != 1)
            {
                if (!pwd.Equals("", StringComparison.Ordinal))
                {//for changed password the password is updated
                    if (pwd.Length < 6)
                    {
                        Response.Write("<script>window.alert('Minimum password length=6. Please re-enter.');window.location.href='profile.aspx';</script>");
                    }
                    else
                    {
                        qry = "UPDATE MEMBER SET EMAILID='" + eid + "',PASSWORD='" + pwd + "',FIRSTNAME='" + fn + "',LASTNAME='" + ln + "',ADDRESS='" + add + "',PHNUMBER='" + ph + "' WHERE MEMID='" + str + "'";
                    }
                }
                else
                {//for blank password field the password remains the same
                    qry = "UPDATE MEMBER SET EMAILID='" + eid + "',FIRSTNAME='" + fn + "',LASTNAME='" + ln + "',ADDRESS='" + add + "',PHNUMBER='" + ph + "' WHERE MEMID='" + str + "'";
                }
                if (!qry.Equals("", StringComparison.Ordinal))
                {
                    SqlCommand cmd1 = new SqlCommand(qry, con);
                    con.Open();
                    cmd1.ExecuteNonQuery();
                    con.Close();

                    Button3.Visible = true;
                    Button4.Visible = false;
                    Label17.Visible = false;
                    TextBox27.Visible = false;
                    if (!(TextBox17.Text.Equals(Session["user"].ToString(), StringComparison.Ordinal)))
                    {
                        Session["user"] = TextBox17.Text;
                    }

                    Response.Write("<script>window.alert('*Records updated successfully');window.location.href='profile.aspx';</script>");
                }
            }
            }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (args.Value.Length < 6)
            args.IsValid = false;
        else
            args.IsValid = true;
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        string filename;
        if (FileUpload1.HasFile)
        {
            filename=FileUpload1.FileName;
            if (filename.EndsWith("jpg"))
            {
                FileUpload1.SaveAs(Server.MapPath("~/ProfilePictures/"+filename));
                SqlCommand cmd = new SqlCommand("UPDATE MEMBER SET DP='" + filename + "' WHERE MEMID='" + str + "';", con);
                con.Open();
                int r=cmd.ExecuteNonQuery();
                con.Close();
                if (r == 1)
                {
                    Label18.Text = "Uploaded Successfully!";
                    Session["dp"] = "~/ProfilePictures/" + filename;
                    Image1.ImageUrl = "~/ProfilePictures/" + filename;//for postback on button click, if this is not added the url does not change till fresh load (!IsPostBack)
                    Button6.Visible = true;
                }
            }
            else
            {
                Label18.Text = "Only .jpg files accepted";
                Image1.ImageUrl = Session["dp"].ToString();
            }
            //Image1.ImageUrl = "~/ProfilePictures/" + filename;
        }
        
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("UPDATE MEMBER SET DP='Default.png' WHERE MEMID='" + Session["memid"].ToString() + "';", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Label18.Text = "Removed Successfully";
        Button6.Visible = false;
        Session["dp"] = "ProfilePictures/Default.png";
        Image1.ImageUrl=Session["dp"].ToString();
        //Image1.ImageUrl="~/ProfilePictures/Default.png";
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("Userdata.aspx");

    }
}