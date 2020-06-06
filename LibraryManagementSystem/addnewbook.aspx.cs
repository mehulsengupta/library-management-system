using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class addnewbook : System.Web.UI.Page
{
    static string c = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
    SqlConnection con = new SqlConnection(c);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList1.Items.Add("Select");
            DropDownList1.Items.Add("YES");
            DropDownList1.Items.Add("NO");
            
            DropDownList2.Items.Add("Select");
            SqlCommand cmd = new SqlCommand("SELECT DISTINCT(CATEGORY) FROM BOOKS;", con);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adp.Fill(ds, "cate");
            for (int i = 0; i < ds.Tables["cate"].Rows.Count; i++)
                DropDownList2.Items.Add(ds.Tables["cate"].Rows[i][0].ToString());

            DropDownList3.Items.Add("Select");
            
            DropDownList4.Items.Add("Select");
            
            
        }
        if (!Session.IsNewSession)
        {
            if (Session["user"] != null)
            {
                
                Label21.Text = "Hi, " + Session["user"].ToString();
            }
        }
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        SqlCommand cmd1 = new SqlCommand("SELECT DISTINCT(SUBCATEGORY) FROM BOOKS WHERE CATEGORY='" + DropDownList2.Text + "';", con);
        SqlDataAdapter adp1 = new SqlDataAdapter(cmd1);
        DataSet ds1 = new DataSet();
        adp1.Fill(ds1, "sub");
        for (int i = 0; i < ds1.Tables["sub"].Rows.Count; i++)
            DropDownList3.Items.Add(ds1.Tables["sub"].Rows[i][0].ToString());

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int flag = 0; string filename="",filenamecover="~/BookCovers/Default.jpg";

        if (DropDownList1.Text.Equals("Select", StringComparison.Ordinal))
        {
            Label18.Text = "*REQUIRED";
            Label18.Visible = true;
        }
        else
        {
            flag++;
            Label18.Visible = false;
        }


            if ((DropDownList1.Text.Equals("YES", StringComparison.Ordinal)) && (!FileUpload1.HasFile))
            {
                Label20.Text = "*REQUIRED";
                Label20.Visible = true;
            }
            else
            {
                flag++;
                Label20.Visible = false;
                if (DropDownList1.Text.Equals("NO",StringComparison.Ordinal) && (!FileUpload1.HasFile))
                {
                    filename="N/A";
                }
                else if ((DropDownList1.Text.Equals("YES", StringComparison.Ordinal)) && (FileUpload1.HasFile))
                {
                    filename = FileUpload1.FileName;
                    if (filename.EndsWith(".pdf"))
                    {
                        FileUpload1.SaveAs(Server.MapPath("~/Books/" + filename));
                    }
                    else
                    {
                        Response.Write("<script>window.alert('Only .pdf files accepted');</script>");
                        flag--;
                    }
                }
                else
                {
                    Response.Write("<script>window.alert('Error');</script>");
                    flag--;
                }
            }


            if (DropDownList2.Text.Equals("Select", StringComparison.Ordinal))
            {
                Label15.Text = "*REQUIRED";
                Label15.Visible = true;
            }
            else
            {
                flag++;
                Label15.Visible = false;
            }


            if (DropDownList3.Text.Equals("Select", StringComparison.Ordinal))
            {
                Label19.Text = "*REQUIRED";
                Label19.Visible = true;
            }
            else
            {
                flag++;
                Label19.Visible = false;
            }


            if (!FileUpload2.HasFile)
            {
                Label17.Text = "*REQUIRED";
                Label17.Visible = true;
            }
            else
            {
                flag++;
                Label17.Visible = false;
                filenamecover = FileUpload2.FileName;
                if (filenamecover.EndsWith(".jpg") || filenamecover.EndsWith(".jpeg") || filenamecover.EndsWith(".png"))
                {
                    FileUpload2.SaveAs(Server.MapPath("~/BookCovers/" + filenamecover));
                }
                else
                {
                    Response.Write("<script>window.alert('Only .jpg, .jpeg, .png files accepted');</script>");
                    flag--;
                }
            }

            if (DropDownList4.Text.Equals("Select", StringComparison.Ordinal))
            {
                Label16.Text = "*REQUIRED";
                Label16.Visible = true;
            }
            else
            {
                flag++;
                Label16.Visible = false;
            }


            if (flag != 6)
                Button1.PostBackUrl = "addnewbook.aspx";

            else
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO BOOKS VALUES ('"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"','"+TextBox4.Text+"',"+Convert.ToInt32(TextBox5.Text)+","+Convert.ToInt32(TextBox6.Text)+",'"+TextBox7.Text+"','"+DropDownList1.Text+"','"+"~/Books/"+filename+"','"+DropDownList2.Text+"','"+DropDownList3.Text+"','"+"~/BookCovers/"+filenamecover+"','"+DropDownList4.Text+"');",con);
                con.Open();
                int r=cmd.ExecuteNonQuery();
                con.Close();
                if (r == 1)
                    Response.Write("<script>window.alert('Book successfully Added!');window.location.href='modifybookshelf.aspx';</script>");
            }


    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.Text.Equals("YES", StringComparison.Ordinal))
        {
            DropDownList4.Items.Remove("PAPERBACK");
            DropDownList4.Items.Add("BOTH");
            DropDownList4.Items.Add("E-BOOK");

        }
        else if (DropDownList1.Text.Equals("NO", StringComparison.Ordinal))
        {
            DropDownList4.Items.Add("PAPERBACK");
            DropDownList4.Items.Remove("BOTH");
            DropDownList4.Items.Remove("E-BOOK");
        }
    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (Convert.ToInt32(args.Value) < 1930 || Convert.ToInt32(args.Value) > 2017)
            args.IsValid = false;
        else
            args.IsValid = true;

    }
    protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (Convert.ToInt32(args.Value) < 1 || Convert.ToInt32(args.Value) > 49)
            args.IsValid = false;
        else
            args.IsValid = true;
    }
    
}