using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace myLogin
{
    public partial class water : System.Web.UI.Page
    {
        public string reff, fullname, idNo, nature, responseStatus;
        public string date, depart, complaint, responded;
        SMS sms = new SMS();
        static string prevPage = String.Empty;
        login logout = new login();
        int logIn;
        String name, surname;

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            String del = "Delete from tblLoginTemp where EmployeeID=" + logIn;
            logout.queryModify(del);

            Response.Redirect("Login.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DateTime your = new DateTime();
            your = DateTime.Now;

            GridView1.Visible = false;
            txtReff.Visible = true;
            txtFullName.Visible = true;
            txtIDNumber.Visible = true;
            txtNComplaint.Visible = true;
            txtDate.Visible = true;
            txtDepartment.Visible = true;
            //txtResponded.Visible = true;
            //txtRStatus.Visible = true;
            DropDownList1.Visible = true;
            DropDownList2.Visible = true;
            txtComp.Visible = true;
            txtResponse.Visible = true;

            update.Visible = true;
            arrow.Visible = true;
            GridView2.Visible = true;
            backArrowWaterr.Visible = false;

            Label12.Visible = true;
            Label17.Visible = true;
            Label31.Visible = true;
            Label21.Visible = true;
            Label22.Visible = true;
            Label23.Visible = true;
            Label1.Visible = true;
            Label2.Visible = true;
            Label3.Visible = true;
            Label4.Visible = true;
            try
            {

                reff = GridView1.SelectedRow.Cells[1].Text.ToString();
                fullname = GridView1.SelectedRow.Cells[2].Text.ToString();
                idNo = GridView1.SelectedRow.Cells[3].Text.ToString();
                nature = GridView1.SelectedRow.Cells[4].Text.ToString();

                complaint = GridView1.SelectedRow.Cells[6].Text.ToString();
                depart = GridView1.SelectedRow.Cells[7].Text.ToString();
                //responded = GridView1.SelectedRow.Cells[8].Text.ToString();
                //responseStatus = GridView1.SelectedRow.Cells[9].Text.ToString();

                txtReff.Text = reff.ToString();
                txtFullName.Text = fullname.ToString();
                txtIDNumber.Text = idNo.ToString();
                txtNComplaint.Text = nature.ToString();
                txtDate.Text = your.ToString();
                txtDepartment.Text = depart.ToString();
                //txtRStatus.Text = responseStatus.ToString();
                //txtResponded.Text = responded.ToString();
                //DropDownList1.Text = responseStatus.ToString();
                txtComp.Text = complaint.ToString();

                con.Open();
                string str = "SELECT * FROM tblCMS2 WHERE (Reference LIKE '%" + txtReff.Text + "%')";
                SqlCommand com = new SqlCommand(str, con);
                SqlDataReader reader = com.ExecuteReader();

                while (reader.Read())
                {

                    DataTable dt = GetData();

                    if (dt.Rows.Count > 0)
                    {

                        //Binding GridView

                        GridView2.DataSource = dt;

                        GridView2.DataBind();

                    }
                }
                reader.Close();
                con.Close();

            }
            catch (Exception EX)
            {

            }
        }

        private DataTable GetData()
        {

            DataTable dt = new DataTable();

            SqlConnection connection = new SqlConnection(@"Server=tcp:cmsdurban.database.windows.net,1433;Initial Catalog=cmsduutt_db;Persist Security Info=False;User ID=PSK;Password=Burgundy12;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");



            try
            {

                connection.Open();

                string sqlStatement = "SELECT Image FROM tblCMS2 WHERE (Reference LIKE '%" + txtReff.Text + "%')";

                SqlCommand sqlCmd = new SqlCommand(sqlStatement, connection);

                SqlDataAdapter sqlDa = new SqlDataAdapter(sqlCmd);



                sqlDa.Fill(dt);

            }

            catch (System.Data.SqlClient.SqlException ex)
            {

                string msg = "Fetch Error:";

                msg += ex.Message;

                throw new Exception(msg);

            }

            finally
            {

                connection.Close();

            }



            return dt;
        }

        ConnectionClass obj = new ConnectionClass();
        SqlConnection con = new SqlConnection(@"Server=tcp:cmsdurban.database.windows.net,1433;Initial Catalog=cmsduutt_db;Persist Security Info=False;User ID=PSK;Password=Burgundy12;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
        protected void Page_Load(object sender, EventArgs e)
        {
            txtReff.Visible = false;
            txtFullName.Visible = false;
            txtIDNumber.Visible = false;
            txtNComplaint.Visible = false;
            txtDate.Visible = false;
            txtDepartment.Visible = false;
            //txtResponded.Visible = false;
            //txtRStatus.Visible = false;
            DropDownList1.Visible = false;
            DropDownList2.Visible = false;
            txtComp.Visible = false;
            txtResponse.Visible = false;

            update.Visible = false;
            arrow.Visible = false;
            GridView2.Visible = false;

            Label12.Visible = false;
            Label17.Visible = false;
            Label31.Visible = false;
            Label21.Visible = false;
            Label22.Visible = false;
            Label23.Visible = false;
            Label1.Visible = false;
            Label2.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;

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
            DataSet ds1 = logout.querySelect(sql, "tblLoginManagers");
            ds1 = logout.querySelect(sql, "tblLoginTemp");
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

        protected void update_Click(object sender, ImageClickEventArgs e)
        {
            if (DropDownList2.Text.Equals("Closed") && DropDownList1.Text.Equals("No"))
            {
                string messages = "Change Responded to Yes";
                System.Text.StringBuilder sb1 = new System.Text.StringBuilder();
                sb1.Append("<script type = 'text/javascript'>");
                sb1.Append("window.onload=function(){");
                sb1.Append("alert('");
                sb1.Append(messages);
                sb1.Append("')};");
                sb1.Append("</script>");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb1.ToString());

                DateTime your = new DateTime();
                your = DateTime.Now;

                GridView1.Visible = false;
                txtReff.Visible = true;
                txtFullName.Visible = true;
                txtIDNumber.Visible = true;
                txtNComplaint.Visible = true;
                txtDate.Visible = true;
                txtDepartment.Visible = true;
                //txtResponded.Visible = true;
                //txtRStatus.Visible = true;
                DropDownList1.Visible = true;
                DropDownList2.Visible = true;
                txtComp.Visible = true;
                txtResponse.Visible = true;

                update.Visible = true;
                arrow.Visible = true;
                GridView2.Visible = true;
                backArrowWaterr.Visible = false;

                Label12.Visible = true;
                Label17.Visible = true;
                Label31.Visible = true;
                Label21.Visible = true;
                Label22.Visible = true;
                Label23.Visible = true;
                Label1.Visible = true;
                Label2.Visible = true;
                Label3.Visible = true;
                Label4.Visible = true;
            }
            else if (DropDownList2.Text.Equals("Pending") && DropDownList1.Text.Equals("No"))
            {
                string messages = "Change Responded to Yes";
                System.Text.StringBuilder sb1 = new System.Text.StringBuilder();
                sb1.Append("<script type = 'text/javascript'>");
                sb1.Append("window.onload=function(){");
                sb1.Append("alert('");
                sb1.Append(messages);
                sb1.Append("')};");
                sb1.Append("</script>");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb1.ToString());

                DateTime your = new DateTime();
                your = DateTime.Now;

                GridView1.Visible = false;
                txtReff.Visible = true;
                txtFullName.Visible = true;
                txtIDNumber.Visible = true;
                txtNComplaint.Visible = true;
                txtDate.Visible = true;
                txtDepartment.Visible = true;
                //txtResponded.Visible = true;
                //txtRStatus.Visible = true;
                DropDownList1.Visible = true;
                DropDownList2.Visible = true;
                txtComp.Visible = true;
                txtResponse.Visible = true;

                update.Visible = true;
                arrow.Visible = true;
                GridView2.Visible = true;
                backArrowWaterr.Visible = false;

                Label12.Visible = true;
                Label17.Visible = true;
                Label31.Visible = true;
                Label21.Visible = true;
                Label22.Visible = true;
                Label23.Visible = true;
                Label1.Visible = true;
                Label2.Visible = true;
                Label3.Visible = true;
                Label4.Visible = true;
            }
            else if (txtResponse.Text.Length == 0)
            {
                string messagess = "Please respond to this complaint.";
                System.Text.StringBuilder sb1 = new System.Text.StringBuilder();
                sb1.Append("<script type = 'text/javascript'>");
                sb1.Append("window.onload=function(){");
                sb1.Append("alert('");
                sb1.Append(messagess);
                sb1.Append("')};");
                sb1.Append("</script>");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb1.ToString());

                DateTime your = new DateTime();
                your = DateTime.Now;

                GridView1.Visible = false;
                txtReff.Visible = true;
                txtFullName.Visible = true;
                txtIDNumber.Visible = true;
                txtNComplaint.Visible = true;
                txtDate.Visible = true;
                txtDepartment.Visible = true;
                //txtResponded.Visible = true;
                //txtRStatus.Visible = true;
                DropDownList1.Visible = true;
                DropDownList2.Visible = true;
                txtComp.Visible = true;
                txtResponse.Visible = true;

                update.Visible = true;
                arrow.Visible = true;
                GridView2.Visible = true;
                backArrowWaterr.Visible = false;

                Label12.Visible = true;
                Label17.Visible = true;
                Label31.Visible = true;
                Label21.Visible = true;
                Label22.Visible = true;
                Label23.Visible = true;
                Label1.Visible = true;
                Label2.Visible = true;
                Label3.Visible = true;
                Label4.Visible = true;
            }
            else
            {
                try
                {
                    //Updating CMS2 table after replying to a customers complaint
                    String sql1 = "UPDATE tblCMS2 SET Responded = '" + DropDownList1.Text + "', ResponseStatus = '" + DropDownList2.Text + "' WHERE Reference = '" + txtReff.Text + "'";
                    String tbl1 = "tblCMS2";
                    obj.modifyTable(sql1, tbl1);

                    GridView1.Visible = true;
                    GridView2.Visible = false;
                    txtReff.Visible = false;
                    txtFullName.Visible = false;
                    txtIDNumber.Visible = false;
                    txtNComplaint.Visible = false;
                    txtDate.Visible = false;
                    txtDepartment.Visible = false;
                    //txtResponded.Visible = false;
                    //txtRStatus.Visible = false;
                    txtComp.Visible = false;
                    txtResponse.Visible = false;

                    update.Visible = false;
                    arrow.Visible = false;
                    backArrowWaterr.Visible = true;

                    Label12.Visible = false;
                    Label17.Visible = false;
                    Label31.Visible = false;
                    Label21.Visible = false;
                    Label22.Visible = false;
                    Label23.Visible = false;
                    Label1.Visible = false;
                    Label2.Visible = false;
                    Label3.Visible = false;
                    Label4.Visible = false;

                }
                catch (Exception ex)
                {
                }

                //Updating Response table after replying to a customers complaint
                String sql2 = "UPDATE tblResponse SET DateOFResponse = '" + txtDate.Text + "', ResponseSms = '" + txtResponse.Text + "' WHERE Reference = '" + txtReff.Text + "'";
                String tbl2 = "tblResponse";
                obj.modifyTable(sql2, tbl2);

                string message = "You have Successfully replied to this Complaint.";
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                sb.Append("<script type = 'text/javascript'>");
                sb.Append("window.onload=function(){");
                sb.Append("alert('");
                sb.Append(message);
                sb.Append("')};");
                sb.Append("</script>");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());

                if (DropDownList2.Text == "Closed" || DropDownList2.Text == "Pending")
                {
                    sms.Send_SMS(txtIDNumber.Text, "Hi " + txtFullName.Text + " Your complaint has been responded to. Your reference number is : MAN-" + txtReff.Text + ". " + "Please go to test.cmsdurban.co.za/cmsRating.aspx to rate our services." + " " + "Here is the response: " + txtResponse.Text);
                }

                GridView1.DataBind();
            }
        }

        protected void arrow_Click(object sender, ImageClickEventArgs e)
        {
            GridView1.Visible = true;
            GridView2.Visible = false;
            txtReff.Visible = false;
            txtFullName.Visible = false;
            txtIDNumber.Visible = false;
            txtNComplaint.Visible = false;
            txtDate.Visible = false;
            txtDepartment.Visible = false;
            //txtResponded.Visible = false;
            //txtRStatus.Visible = false;
            DropDownList1.Visible = false;
            DropDownList2.Visible = false;
            txtComp.Visible = false;
            txtResponse.Visible = false;

            update.Visible = false;
            arrow.Visible = false;
            backArrowWaterr.Visible = true;

            Label12.Visible = false;
            Label17.Visible = false;
            Label31.Visible = false;
            Label21.Visible = false;
            Label22.Visible = false;
            Label23.Visible = false;
            Label1.Visible = false;
            Label2.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;
        }

        protected void backArrowWaterr_Click(object sender, ImageClickEventArgs e)
        {
            //Response.Redirect("dashboard_overview.aspx");
            Response.Redirect(prevPage);
        }
    }
}