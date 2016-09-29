using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace myLogin
{
    public class ConnectionClass
    {
        SqlConnection con = new SqlConnection(@"Server=tcp:cmsdurban.database.windows.net,1433;Initial Catalog=cmsduutt_db;Persist Security Info=False;User ID=PSK;Password=Burgundy12;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
        DataSet ds = new DataSet();

        public ConnectionClass()
        {
            con.Open();
        }

        public DataSet viewTable(String sql)
        {
            try
            {
                SqlDataAdapter sda = new SqlDataAdapter(sql, con);
                sda.Fill(ds, "tbl");


            }
            catch (Exception ex)
            {

            }
            finally
            {
                con.Close();
            }
            return ds;
        }

        public void modifyTable(String sql, String tbl)
        {
            try
            {
                SqlDataAdapter sda = new SqlDataAdapter(sql, con);
                sda.Fill(ds, "tbl");


            }
            catch (Exception ex)
            {

            }
            finally
            {
                con.Close();
            }

        }
    }
}