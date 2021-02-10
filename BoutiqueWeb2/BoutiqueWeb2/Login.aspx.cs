using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace BoutiqueWeb2
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void b_click(object sender, EventArgs e)
        {
            string holdpass;
            string connectionString = "server=LAPTOP-H2TUPEJQ;database=Boutique;integrated security=true;";
            SqlConnection cnnobj = new SqlConnection(connectionString);
            cnnobj.Open();
            string c = "SELECT UserPassword from UserInfo where UserMail='"+usermailtbx.Text+"'";
            SqlCommand cmd = new SqlCommand(c,cnnobj);
            holdpass=cmd.ExecuteScalar().ToString();

            if (passwordtbx.Text==holdpass)
            {
                Response.Redirect("Homepage.aspx");
            }
            
        }
}
}