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
    public partial class resolved_complaints : System.Web.UI.Page
    {
        static string prevPage = String.Empty;
        login obj = new login();
        int logIn;
        String name, surname;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.UrlReferrer != null)
            {
                if (!IsPostBack)
                {
                    prevPage = Request.UrlReferrer.ToString();
                }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }

            //Displaying full name of the logged in user
            String sql = "select * from tblLoginTemp";
            DataSet ds1 = obj.querySelect(sql, "tblLoginManagers");
            ds1 = obj.querySelect(sql, "tblLoginTemp");
            logIn = Convert.ToInt32(ds1.Tables["tblLoginTemp"].Rows[0]["EmployeeID"].ToString());

            SqlConnection conn = new SqlConnection(@"Server=tcp:cmsdurban.database.windows.net,1433;Initial Catalog=cmsduutt_db;Persist Security Info=False;User ID=PSK;Password=Burgundy12;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            conn.Open();

            SqlCommand sqlCmd = new SqlCommand("Select * from tblLoginManagers where EmployeeID='" + logIn + "'", conn);
            SqlDataAdapter sqlDA = new SqlDataAdapter(sqlCmd);
            DataSet ds = new DataSet();
            sqlDA.Fill(ds, "tblLoginManagers");
            int c = ds.Tables["tblLoginManagers"].Rows.Count;

            conn.Close();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            String del = "Delete from tblLoginTemp where EmployeeID=" + logIn;
            obj.queryModify(del);

            Response.Redirect("Login.aspx");
        }

        protected void backArrowResolved_Click(object sender, ImageClickEventArgs e)
        {
            //Response.Redirect("dashboard_overview.aspx");
            Response.Redirect(prevPage);
        }
    }
}