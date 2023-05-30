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
    public partial class Mapa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void boton_reg_Click(object sender, EventArgs e)
        {

            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Conexion"].ConnectionString))

            {

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "pd_mez";

                cmd.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = nom.Text.Trim();

                cmd.Parameters.Add("@Dirección", SqlDbType.VarChar).Value = direc.Text.Trim();

                cmd.Parameters.Add("@Latitud", SqlDbType.Float).Value = latitud.Text.Trim();

                cmd.Parameters.Add("@Longitud", SqlDbType.Float).Value = longitud.Text.Trim();

                cmd.Connection = conn;
                conn.Open();
                cmd.ExecuteNonQuery();
            }

        }
    }
}