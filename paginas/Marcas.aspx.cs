using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRUV.paginas
{
    public partial class Marcas : System.Web.UI.Page
    {
        String conn = ConfigurationManager.ConnectionStrings["Conexion"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection cn;
            SqlDataAdapter da;
            DataSet ds;
            cn = new SqlConnection(conn);
            cn.Open();
            da = new SqlDataAdapter("SELECT * FROM Mezcaleras", cn);
            ds = new DataSet();
            da.Fill(ds, "Mezcal");
            GridView1.DataSource = ds;
            GridView1.DataBind();
            cn.Close();
        }
    
    }
    
}