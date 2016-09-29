using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace myLogin
{
    public partial class all_departments : System.Web.UI.Page
    {
        login obj = new login();
        int logIn;
        String name, surname;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Displaying full name of the logged in user
            String sql = "select * from tblLoginTemp";
            DataSet ds1 = obj.querySelect(sql, "tblLoginManagers");
            ds1 = obj.querySelect(sql, "tblLoginTemp");

            int chech = ds1.Tables["tblLoginTemp"].Rows.Count;

            if (chech > 0)
            {
                logIn = Convert.ToInt32(ds1.Tables["tblLoginTemp"].Rows[0]["EmployeeID"].ToString());
            }
            else
            {
                Response.Redirect("Login.aspx");
            }

            //SqlConnection conn = new SqlConnection(@"server=furiosa.aserv.co.za,1434;uid=cmsduutt_user;pwd=lpuszC4d41;database=cmsduutt_db");
            SqlConnection conn = new SqlConnection(@"Server=tcp:cmsdurban.database.windows.net,1433;Initial Catalog=cmsduutt_db;Persist Security Info=False;User ID=PSK;Password=Burgundy12;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            conn.Open();

            SqlCommand sqlCmd = new SqlCommand("Select * from tblLoginManagers where EmployeeID='" + logIn + "'", conn);
            SqlDataAdapter sqlDA = new SqlDataAdapter(sqlCmd);
            DataSet ds = new DataSet();
            sqlDA.Fill(ds, "tblLoginManagers");
            int c = ds.Tables["tblLoginManagers"].Rows.Count;

            if (c > 0)
            {
                name = ds.Tables["tblLoginManagers"].Rows[0]["EmployeeName"].ToString();
                surname = ds.Tables["tblLoginManagers"].Rows[0]["EmployeeSurname"].ToString();
                Label24.Text = "Welcome" + " " + name + " " + surname;
            }
            conn.Close();
        }

        protected void viewWater_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("water_requests.aspx");
        }

        protected void viewElect_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("electricity_requests.aspx");
        }

        protected void viewRates_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("rates_requests.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            String del = "Delete from tblLoginTemp where EmployeeID=" + logIn;
            obj.queryModify(del);

            Response.Redirect("Login.aspx");
        }

        protected void respondAll_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("select_department.aspx");
        }
    }
}