﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) //check if the webpage is loaded for the first time.
        {
            ViewState["PreviousPage"] = Request.UrlReferrer;
            //Saves the Previous page url in ViewState
        }
    }
    protected void backButton_Click(object sender, EventArgs e)
    {

        if (ViewState["PreviousPage"] != null)	//Check if the ViewState 
        //contains Previous page URL
        {
            Response.Redirect(ViewState["PreviousPage"].ToString());//Redirect to 
            //Previous page by retrieving the PreviousPage Url from ViewState.
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomeDefault.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("SignUp.aspx");
    }
}