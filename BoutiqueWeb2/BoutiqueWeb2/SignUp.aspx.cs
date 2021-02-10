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
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void bclick(object sender, EventArgs e)
        {
            string connectionString = "server=LAPTOP-H2TUPEJQ;database=Boutique;integrated security=true;";
            SqlConnection cnnobj = new SqlConnection(connectionString);
            cnnobj.Open();
            string c = "INSERT INTO UserInfo (UserName,UserMail,UserPassword) values('" + usernametbx.Text + "','" + usermailtbx.Text + "','" + userpasswordtbx.Text + " ')";
            SqlCommand cmd = new SqlCommand(c,cnnobj);

            cmd.ExecuteNonQuery();
            cnnobj.Close();

        }
    }
}