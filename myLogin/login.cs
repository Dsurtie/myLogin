using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace myLogin
{
    public class login
    {
        private SqlConnection con;
        private SqlCommand com;
        private SqlDataAdapter da;
        private DataSet ds;

        public login()
        {
            try
            {
                //String sql = "@server = furiosa.aserv.co.za,1434; uid = cmsduutt_user; pwd = lpuszC4d41; database = cmsduutt_db";
                con = new SqlConnection(@"Server=tcp:cmsdurban.database.windows.net,1433;Initial Catalog=cmsduutt_db;Persist Security Info=False;User ID=PSK;Password=Burgundy12;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
                con.Open();
            }
            catch (Exception err)
            {
                //MessageBox.Show(err.Message);
            }
        }

        public DataSet querySelect(String sql, String table)
        {

            com = new SqlCommand(sql);
            com.Connection = con;

            da = new SqlDataAdapter();
            da.SelectCommand = com;
            ds = new DataSet();
            da.Fill(ds, table);
            da.Dispose();

            return ds;
        }

        public void queryModify(String sql)
        {
            com = new SqlCommand(sql);
            com.Connection = con;
            com.ExecuteNonQuery();

        }
    }
}