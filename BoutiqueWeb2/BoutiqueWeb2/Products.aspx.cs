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
    public partial class Products : System.Web.UI.Page
    {
        string connstr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        //string connstr = "server=LAPTOP-H2TUPEJQ;database=Boutique;integrated security=true;";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //DataTable dtProducts = new DataTable();
                //dtProducts = getProducts();
                DataTable dtProducts =  getProducts();
                products.DataSource = dtProducts;
                products.DataBind();
            }
        }
        private DataTable getProducts()
        {
            SqlConnection conn_obj = new SqlConnection(connstr);
            conn_obj.Open();

            string cmd = "SELECT s.ID,s.ProductName,s.ProductType,s.ProductPrice,s.ProductColor,s.Stock,s.ProductPhoto from dbo.Products s";
            SqlCommand cmdobj = new SqlCommand(cmd, conn_obj);

            SqlDataAdapter da = new SqlDataAdapter(cmdobj);
            DataTable dtproducts = new DataTable();

            da.Fill(dtproducts);
            conn_obj.Close();

            return dtproducts;
        }
    }
}