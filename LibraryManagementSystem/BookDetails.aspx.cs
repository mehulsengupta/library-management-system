using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class BookDetails : System.Web.UI.Page
{
    static string c = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
    SqlConnection con = new SqlConnection(c);
    string data="";

    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!Session.IsNewSession)
        {
            if (Session["user"] != null)
                Label15.Text = "Hi, " + Session["user"].ToString();
        }
        if (!IsPostBack)
        {
            SqlCommand cmd=new SqlCommand("SELECT * FROM BOOKS WHERE ACCNO='"+Session["selectedbookad"].ToString()+"';",con);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adp.Fill(ds,"sel");
            TextBox1.Text = ds.Tables["sel"].Rows[0][0].ToString();
            TextBox2.Text = ds.Tables["sel"].Rows[0][1].ToString();
            TextBox3.Text = ds.Tables["sel"].Rows[0][2].ToString();
            TextBox4.Text = ds.Tables["sel"].Rows[0][3].ToString();
            TextBox5.Text = ds.Tables["sel"].Rows[0][4].ToString();
            TextBox6.Text = ds.Tables["sel"].Rows[0][5].ToString();
            TextBox7.Text = ds.Tables["sel"].Rows[0][6].ToString();
            TextBox9.Text = ds.Tables["sel"].Rows[0][9].ToString();
            TextBox8.Text = ds.Tables["sel"].Rows[0][10].ToString();
            Label16.Text = "Current: " + ds.Tables["sel"].Rows[0][7].ToString();
            DropDownList1.Items.Add("YES");
            DropDownList1.Items.Add("NO");
            if (ds.Tables["sel"].Rows[0][7].ToString().Equals("NO",StringComparison.Ordinal))
                HyperLink1.Visible=false;

            Label17.Text = "Current: " + ds.Tables["sel"].Rows[0][8].ToString();
            HyperLink1.NavigateUrl = ds.Tables["sel"].Rows[0][8].ToString();
            HyperLink1.Text = "Click Here to View E-Book";
            HyperLink1.Target = "_search";
            Image1.ImageUrl = ds.Tables["sel"].Rows[0][11].ToString();
            Label18.Text = ds.Tables["sel"].Rows[0][12].ToString();
            //data = ds.Tables["sel"].Rows[0][12].ToString();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string filename, qry; int flag = 0;
        if (DropDownList1.Text.Equals("YES", StringComparison.Ordinal))
        {
            if (FileUpload1.HasFile)
            {
                filename = FileUpload1.FileName;
                if (filename.EndsWith(".pdf"))
                {
                    
                    FileUpload1.SaveAs(Server.MapPath("~/Books/" + filename));
                    qry = "UPDATE BOOKS SET EBOOKAVAIL='YES', EBOOKURL='" + "~/Books/"+filename + "' WHERE ACCNO='"+Session["selectedbookad"].ToString()+"';";
                    SqlCommand cmd = new SqlCommand(qry, con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    flag++;
                }
                else
                    Response.Write("<script>window.alert('Only .pdf files are accepted');</script>");
            }
        }
        SqlCommand cmd1 = new SqlCommand("UPDATE BOOKS SET QTY=" + Convert.ToInt32(TextBox5.Text) + " WHERE ACCNO='" + Session["selectedbookad"].ToString() + "';", con);
        con.Open();
        cmd1.ExecuteNonQuery();
        con.Close();
        //Response.Write(data + "@");
        SqlCommand cmd3 = new SqlCommand("SELECT TYPE FROM BOOKS WHERE ACCNO='" + Session["selectedbookad"].ToString() + "';", con);
        SqlDataAdapter adp = new SqlDataAdapter(cmd3);
        DataSet ds = new DataSet();
        adp.Fill(ds, "type");
        data = ds.Tables["type"].Rows[0][0].ToString();
        if (data.Equals("PAPERBACK", StringComparison.Ordinal) && flag == 1)
        {
            qry = "UPDATE BOOKS SET TYPE='BOTH' WHERE ACCNO='" + Session["selectedbookad"].ToString() + "';";
            SqlCommand cmd2 = new SqlCommand(qry, con);
            con.Open();
            cmd2.ExecuteNonQuery();
            con.Close();
        }
        Response.Redirect("modifybookshelf.aspx");
    }
   
    protected void CustomValidator1_ServerValidate1(object source, ServerValidateEventArgs args)
    {
        if (Convert.ToInt32(args.Value) < 1 || Convert.ToInt32(args.Value) > 49)
            args.IsValid = false;
    }
}