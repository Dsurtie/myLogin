using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using System.Net;
using System.IO;

namespace myLogin
{
    public class SMS
    {
        private string s;
        private string s_2;

        public SMS()
        {
            s = String.Empty;
            s_2 = String.Empty;
        }


        public SMS(string s, string s_2)
        {

            this.s = s;
            this.s_2 = s_2;
        }
        public string MyString { get; set; }
        private string username;

        public string UserName
        {
            get { return username = "sadha@redbean.co.za"; }
            set { username = "sadha@redbean.co.za"; }
        }
        private string password;

        public string Password
        {
            get { return password = "Password"; }
            set { password = "Password"; }
        }
        public string Message { get; set; }
        public string Number { get; set; }
        public string MailError { get; set; }

        public string readHtmlPage(string url)
        {
            WebResponse objResponse;
            WebRequest objRequest;

            string result;
            try
            {
                objRequest = System.Net.HttpWebRequest.Create(url);
                objResponse = objRequest.GetResponse();
                StreamReader sr = new StreamReader(objResponse.GetResponseStream());
                result = sr.ReadToEnd();
                sr.Close();
                return result;
            }
            catch (Exception er)
            {
                string s = er.Message;
                return s;
            }
        }

        public void Send_SMS(string num, string msgz)
        {

            {
                string datesent = DateTime.Now.Day.ToString() + "-" + DateTime.Now.Month.ToString()
                    + "-" + DateTime.Now.Year.ToString();

                MyString = "http://www.mymobileapi.com/api5/http5.aspx?Type=sendparam&username=";



                MyString = MyString + UserName + "&password=" + Password + "&Delivery=No";
                MyString = MyString + "&data1=" + msgz + "&numto=" + num + ";";
                MailError = (readHtmlPage(MyString));
                //MailError = ("Your message has been sent");


            }


        }
    }
}