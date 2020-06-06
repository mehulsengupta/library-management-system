using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class SignUp : System.Web.UI.Page
{
    string c;
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    /*protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (args.Value.Length < 6)
            args.IsValid = false;
        else
            args.IsValid = true;
    }*/
    protected void Button1_Click(object sender, EventArgs e)
    {
        int flagage = 0, flagph = 0,r = 0,flagadhrn = 0,flagcpwd = 0;
        string memidstr = "";
        c = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        SqlConnection con = new SqlConnection(c);
        con.Open();
        string fn = TextBox1.Text;
        string ln = TextBox2.Text;
        string eid = TextBox3.Text;
        string gender = "";
        if (RadioButtonList1.SelectedIndex == 0)
            gender = "Male";
        else
            gender = "Female";
        string address = TextBox4.Text;
        DateTime j = DateTime.Now;
        string doj = j.ToString();
        string age = TextBox5.Text;
        if (age.Length > 2)
        {
            Response.Write("<script>alert('Please Enter Proper Age')</script>");
            flagage = 1;
        }
        string ph = TextBox7.Text;
        if (ph.Length != 10)
        {
            Response.Write("<script>alert('Please Enter Proper 10-Digit Mobile Number')</script>");
            flagph = 1;
        }
        string pwd = TextBox8.Text;
        string cpwd = TextBox9.Text;
        if (cpwd.Length < 6)
        {
            Response.Write("<script>alert('Password should be minimum 6 characters long')</script>");
            flagcpwd = 1;
        }
        string adhrn = TextBox10.Text;
        if (adhrn.Length!=12)
            {
            Response.Write("<script>alert('Please Enter Correct Aadhar Number')</script>");
            flagadhrn = 1;
            }
        string filename="";
        if (FileUpload1.HasFile)
        {
            filename = FileUpload1.FileName;
            if (filename.EndsWith("jpg"))
            {
                FileUpload1.SaveAs(Server.MapPath("~/ProfilePictures/") + filename);


            }
            else
                Response.Write("<script>window.alert('Only .jpg files accepted');</script>");
        }
        else
        {
            filename = "Default.png";
        }
        Random rnd = new Random();
        string id = (rnd.Next(100000, 1000000)).ToString();
        string memid = id + fn;
        if (flagage != 1 && flagph != 1 && flagadhrn != 1 && flagcpwd != 1)
        {
            string qryid = "CREATE TABLE [dbo].[" + memid + "Details] ([MEMID] VARCHAR(40) NOT NULL, [ISSUEDATE] VARCHAR(50) NOT NULL, [RETURNDATE] VARCHAR(50) NOT NULL, [ACCNO] VARCHAR(10) NOT NULL, [FINE] INT NOT NULL);";
            SqlCommand cmd = new SqlCommand(qryid, con);
            cmd.ExecuteNonQuery();
            SqlCommand cmd1 = new SqlCommand("INSERT INTO MEMBER VALUES('" + memid + "','" + eid + "','" + cpwd + "','" + fn + "','" + ln + "','" + gender + "','" + address + "','" + ph + "','" + age + "','" + doj + "','" + adhrn + "','" + filename + "');", con);
            r = cmd1.ExecuteNonQuery();
            con.Close();
            memidstr = "Account Created. Please Note Down Membership ID: ****" + memid + "****. ACCESS IS DENIED WITHOUT PROPER ID!";
        }
        if (r==1){
            Response.Write("<script language='javascript'>window.alert('"+Server.HtmlEncode(memidstr)+"'); window.location.href='HomeDefault.aspx';</script>");
           
            
        }
   
    }



    protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
    {
        //Response.Write("<script>window.alert('hello');</script>");
        if (args.Value.Length < 6)
            args.IsValid = false;
        else
            args.IsValid = true;
    }
}