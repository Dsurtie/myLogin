using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Net;
using System.Net.Mail;
using System.Text.RegularExpressions;
using System.Data.SqlClient;

namespace myLogin
{
    public partial class Login : System.Web.UI.Page
    {
        String dept;
        login obj = new login();
        DataSet ds = new DataSet();
        String Role;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                if (TextBox1.Text == String.Empty)
                {
                    lblInvalidUsername.Visible = true;
                    lblInvalidUsername.Text = ("*");
                    lblInvalidUsername.Focus();
                }
                else if (TextBox2.Text == String.Empty)
                {
                    lblInvalidPassword.Visible = true;
                    lblInvalidPassword.Text = ("*");
                    lblInvalidPassword.Focus();
                }
                else
                {
                    String sql = "Select * from tblLoginManagers where EmployeeUserName='" + TextBox1.Text + "'and EmployeePassword='" + TextBox2.Text + "'";
                    ds = obj.querySelect(sql, "tblLoginManagers");

                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        Role = ds.Tables["tblLoginManagers"].Rows[0]["EmployeeRole"].ToString().Trim();
                        dept = ds.Tables["tblLoginManagers"].Rows[0]["EmployeeDepartment"].ToString().Trim();

                        String sql2 = "insert into tblLoginTemp values('" + ds.Tables["tblLoginManagers"].Rows[0]["EmployeeID"].ToString() + "')";
                        obj.queryModify(sql2);

                        if (Role == "Mayor" || Role == "Municipal Manager")
                        {
                            Response.Redirect("mm_dashboard.aspx");
                        }
                        else if(Role == "Manager")
                        {
                            Response.Redirect("managers_dashboard.aspx");
                        }
                        else if(Role == "User" && dept == "Electricity")
                        {
                            Response.Redirect("electricity_department_users.aspx");
                        }
                        else if(Role == "User" && dept == "Water")
                        {
                            Response.Redirect("water_department_users.aspx");
                        }
                        else if (Role == "User" && dept == "Rates")
                        {
                            Response.Redirect("rates_department_users.aspx");
                        }
                        else if (Role == "User" && dept == "All")
                        {
                            Response.Redirect("all_departments.aspx");
                        }
                    }
                    else
                    {
                        lblInvalid.Visible = true;
                        lblInvalid.Text = ("Incorrect User Name or User Password");
                    }
                }
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
        }
    }
}