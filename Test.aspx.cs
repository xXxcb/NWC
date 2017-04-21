using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Test : System.Web.UI.Page
{
    User us = new User();
    int trn = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["trn"] != null)
        {            
            trn = (int)Session["trn"];
            Label6.Text = trn.ToString();
            this.load();
        }
    }

    protected void load()
    {
        //Session.Add("logged", us.trn);        
        Session.Add("logged", trn);
    }
    protected void btn_logout(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("Default.aspx");
    }
}