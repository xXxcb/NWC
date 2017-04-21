using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    User us;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LoginButton_Click(object sender, EventArgs e)
    {
        us = new User();

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["NWC_Simulation"].ConnectionString);
        con.Open();
        string user = "select count(*) from nwc_user where user_trn= '" + Username.Text + "' AND user_password= '" + Pass.Text + "'";
        SqlCommand com = new SqlCommand(user, con);
        int log = Convert.ToInt32(com.ExecuteScalar());
        con.Close();
        if (log == 1)
        {
            int trn = Convert.ToInt32(Username.Text);
            Session["trn"] = trn;
            Response.Redirect("Test.aspx");

        } else {
            Response.Write("User Not Found!");
        }
    }
} 