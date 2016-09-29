<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Security.aspx.cs" Inherits="myLogin.Security" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .background
        {
            background-image:url('/image/qqqq.jpg');
        }
        .styleAlign
        {
            text-shadow: 0px 0px 11px rgba(255, 226, 224, 1);
        }
        .styleAlign1
        {
            text-align: center;
        }
        .styleRounded
        {
            border-radius: 25px;
            margin-top: 1px;
            text-align: left;
            margin-bottom: 1px;
        }

        .TextBox
        {
            color: black;
        }

        input:not([type]), input[type="text"]
        {
            color: blue;
            background-color: lightsteelblue;
        }

        .auto-style1 {
            width: 750px;
            height: 186px;
        }
        .grow { transition: all .2s ease-in-out; }
      
      
      .grow:hover { transform: scale(1.7); }
      .logoutbtn{
          float:right;
      }

        </style>
</head>
<body class="background" style="font-family: Tahoma">
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server">
            <center>
            <asp:Label ID="Label24"  runat="server" CssClass="styleAlign"  Text="SECURITY MODULE" Font-Bold="True" Font-Names="Tahoma" Font-Size="XX-Large" ForeColor="#071F8B"></asp:Label>
                <asp:ImageButton ID="ImageButton1" runat="server" Height="35px" CssClass="grow logoutbtn" ImageUrl="~/image/TOTAL REQ.PNG" Width="75px" OnClick="ImageButton1_Click"/>
                <br />
                <img alt="" class="auto-style1" src="image/BACK%20TO%20SNE.PNG" />
            </center>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server">
            <center>
                <asp:Label ID="Label4"  runat="server" CssClass="styleAlign"  Text="PLEASE ENTER EMPLOYEE PERSONAL DETAILS AND CLICK NEXT TO CONTINUE:" Font-Bold="True" Font-Names="Tahoma" Font-Size="XX-Large" ForeColor="#071F8B"></asp:Label>
            </center>
                <br />
                <br />
            <center>
                <asp:Label ID="Label12" runat="server" CssClass="styleAlign" Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Large" ForeColor="#071F8B" Text="First Name: "></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtName" runat="server" AutoCompleteType="Disabled" BackColor="#99CCFF"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label13" runat="server" CssClass="styleAlign" Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Large" ForeColor="#071F8B" Text="Surname: "></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtSurname" runat="server" AutoCompleteType="Disabled" BackColor="#99CCFF"></asp:TextBox>
                </center>
            <br />
            <br />
            <center>
            &nbsp;<asp:Label ID="Label14" runat="server" CssClass="styleAlign" Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Large" ForeColor="#071F8B" Text="Contact Number: "></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtContactNumber" runat="server" style="margin-bottom: 0px" AutoCompleteType="Disabled" BackColor="#99CCFF"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label15" runat="server" CssClass="styleAlign" Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Large" ForeColor="#071F8B" Text="E-Mail Address: "></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtEmail" runat="server" AutoCompleteType="Disabled" BackColor="#99CCFF"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </center>
            <br />
            <br />
            <center>
                <asp:Label ID="Label16" runat="server" CssClass="styleAlign" Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Large" ForeColor="#071F8B" Text="Start Date: " Visible="False"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtStartDate" runat="server" ReadOnly="true" OnTextChanged="txtStartDate_TextChanged" Visible="False" AutoCompleteType="Disabled" BackColor="#99CCFF"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </center>
               <br />
            <center>
               <asp:Button ID="Button1" runat="server" Text="Continue" OnClick="Button1_Click1" />
                </center>
               <br />
               <br />
            
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server">
            <center>
            <asp:Label ID="Label1" runat="server" CssClass="styleAlign"  Text="PLEASE ENTER EMPLOYEE ROLES AND RIGHTS AS WELL AS THEIR ASSIGNED DEPARMENT AND CLICK NEXT TO CONTINUE:" Font-Bold="True" Font-Names="Tahoma" Font-Size="XX-Large" ForeColor="#071F8B"></asp:Label>
                <br />
                <asp:Label ID="Label25" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
                <br />
                <asp:Label ID="Label17" runat="server" CssClass="styleAlign" Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Large" ForeColor="#071F8B" Text="Department: "></asp:Label>
                &nbsp;
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="White" style="text-align: left" Width="178px">
                    <asp:ListItem Text="Electricity" Value="Electricity"></asp:ListItem>
                    <asp:ListItem Text="Water" Value="Water"></asp:ListItem>
                    <asp:ListItem Text="Rates" Value="Rates"></asp:ListItem>
                    <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
                    <asp:ListItem Text="All Departments" Value="All"></asp:ListItem>
                </asp:RadioButtonList>
                <br />
                <asp:Label ID="Label18" runat="server" CssClass="styleAlign" Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Large" ForeColor="#071F8B" Text="Roles: "></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:RadioButtonList ID="RadioButtonList2" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="White" style="text-align: left">
                    <asp:ListItem Text="Mayor" Value="Mayor"></asp:ListItem>
                    <asp:ListItem Text="Municipal Manager" Value="MunicipalManager"></asp:ListItem>
                    <asp:ListItem Text="Manager" Value="Manager"></asp:ListItem>
                    <asp:ListItem Text="User" Value="User"></asp:ListItem>
                </asp:RadioButtonList>
                <asp:TextBox ID="txtDepartmentDecision" runat="server" Visible="False"></asp:TextBox>
                &nbsp;&nbsp;
                <asp:TextBox ID="txtRolesDecision" runat="server" Visible="False"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" Text="Continue" OnClick="Button2_Click" />
            </center>
        </asp:Panel>
        <asp:Panel ID="Panel4" runat="server">
            <center style="font-weight: 700">
            <asp:Label ID="Label19"  runat="server" CssClass="styleAlign"  Text="PLEASE SPECIFY THE USER'S USERNAME AND PASSWORD AND SUBMIT: " Font-Bold="True" Font-Names="Tahoma" Font-Size="XX-Large" ForeColor="#071F8B"></asp:Label>
                <br />
                <asp:Label ID="Label23" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label20" runat="server" CssClass="styleAlign" Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Large" ForeColor="#071F8B" Text="Username: "></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtUserName" runat="server" AutoCompleteType="Disabled" BackColor="#99CCFF" ForeColor="Blue"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label21" runat="server" CssClass="styleAlign" Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Large" ForeColor="#071F8B" Text="Password: "></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" AutoCompleteType="Disabled" BackColor="#99CCFF" ForeColor="Blue"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label22" runat="server" CssClass="styleAlign" Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Large" ForeColor="#071F8B" Text="Confirm Password: "></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" AutoCompleteType="Disabled" BackColor="#99CCFF" ForeColor="Blue"></asp:TextBox>
                &nbsp;<br />
                <br />
                <br />
                <asp:Button ID="Button3" runat="server" Text="Submit" OnClick="Button3_Click" />
            </center>
        </asp:Panel>
    </form>
</body>
</html>
