using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.SqlTypes;
using System.ComponentModel;
using System.Drawing;
using System.Net;
using System.Net.Mail;
using System.Text.RegularExpressions;

namespace myLogin
{
    public partial class Security : System.Web.UI.Page
    {
        login obj = new login();
        int logIn;
        String name, surname;
        SqlConnection conn = new SqlConnection(@"Server=tcp:cmsdurban.database.windows.net,1433;Initial Catalog=cmsduutt_db;Persist Security Info=False;User ID=PSK;Password=Burgundy12;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = true;
            Panel3.Visible = false;
            Panel4.Visible = false;

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

            SqlConnection conn = new SqlConnection(@"Server=tcp:cmsdurban.database.windows.net,1433;Initial Catalog=cmsduutt_db;Persist Security Info=False;User ID=PSK;Password=Burgundy12;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            conn.Open();

            SqlCommand sqlCmd = new SqlCommand("Select * from tblLoginManagers where EmployeeID='" + logIn + "'", conn);
            SqlDataAdapter sqlDA = new SqlDataAdapter(sqlCmd);
            DataSet ds = new DataSet();
            sqlDA.Fill(ds, "tblLoginManagers");
            int c = ds.Tables["tblLoginManagers"].Rows.Count;

            conn.Close();
        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = true;
            Panel4.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = true;

            if (RadioButtonList1.SelectedItem.Text == "Electricity")
            {
                txtDepartmentDecision.Text = "Electricity";
            }
            else if (RadioButtonList1.SelectedItem.Text == "Water")
            {
                txtDepartmentDecision.Text = "Water";
            }
            else if (RadioButtonList1.SelectedItem.Text == "Rates")
            {
                txtDepartmentDecision.Text = "Rates";
            }
            else if (RadioButtonList1.SelectedItem.Text == "Other")
            {
                txtDepartmentDecision.Text = "Other";
            }
            else if (RadioButtonList1.SelectedItem.Text == "All Departments")
            {
                txtDepartmentDecision.Text = "All";
            }

            if (RadioButtonList2.SelectedItem.Text == "Mayor")
            {
                txtRolesDecision.Text = "Mayor";
            }
            else if (RadioButtonList2.SelectedItem.Text == "Municipal Manager")
            {
                txtRolesDecision.Text = "Municipal Manager";
            }
            else if (RadioButtonList2.SelectedItem.Text == "Manager")
            {
                txtRolesDecision.Text = "Manager";
            }
            else if (RadioButtonList2.SelectedItem.Text == "User")
            {
                txtRolesDecision.Text = "User";
            }
            else if (RadioButtonList1.SelectedItem.Text == "" || RadioButtonList2.SelectedItem.Text == "")
            {
                Label25.Text = "Please make a selection";
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            txtStartDate.Text = DateTime.Now.ToString();
            if (txtPassword.Text == txtConfirmPassword.Text)
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO tblLoginManagers(EmployeeName, EmployeeSurname, EmployeeStartDate, EmployeeDepartment, EmployeeContactNumber, EmployeeRole, EmployeeUserName, EmployeePassword, EmployeeEmail) VALUES (@EmployeeName, @EmployeeSurname, @EmployeeStartDate, @EmployeeDepartment, @EmployeeContactNumber, @EmployeeRole, @EmployeeUserName, @EmployeePassword, @EmployeeEmail);", conn);
                cmd.Parameters.AddWithValue("@EmployeeName", txtName.Text);
                cmd.Parameters.AddWithValue("@EmployeeSurname", txtSurname.Text);
                cmd.Parameters.AddWithValue("@EmployeeStartDate", txtStartDate.Text);
                cmd.Parameters.AddWithValue("@EmployeeDepartment", txtDepartmentDecision.Text);
                cmd.Parameters.AddWithValue("@EmployeeContactNumber", txtContactNumber.Text);
                cmd.Parameters.AddWithValue("@EmployeeRole", txtRolesDecision.Text);
                cmd.Parameters.AddWithValue("@EmployeeUserName", txtUserName.Text);
                cmd.Parameters.AddWithValue("@EmployeePassword", txtPassword.Text);
                cmd.Parameters.AddWithValue("@EmployeeEmail", txtEmail.Text);

                conn.Open();
                cmd.ExecuteNonQuery();
                Response.Redirect("Login.aspx");

            }
            else if (txtPassword.Text != txtConfirmPassword.Text)
            {
                Label23.Visible = true;
                Label23.Text = "Passwords do not match. Please correct";
                Panel1.Visible = true;
                Panel2.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = true;
            }


        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            //String del = "Delete from tblLoginTemp where EmployeeID=" + logIn;
            //obj.queryModify(del);

            Response.Redirect("Login.aspx");
        }

        protected void txtStartDate_TextChanged(object sender, EventArgs e)
        {

        }
    }
}