<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="myLogin.Login" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">

        .styleBackground {
            background-image: url('/image/qqqq.jpg');
            /*c: \users\south side fm\documents\visual studio 2015\Projects\BACK END LOG IN\BACK END LOG IN\NEW BTTONS\qqqq.jpg;*/
        }
        
        .styleAlign
        {
            text-align:center;
            text-shadow: 0px 0px 11px rgba(255, 226, 224, 1);
        }
        .styleRounded{
            border-radius:25px;
        }
        .TextBox
        {
            color:black;
        }
        input:not([type]), input[type="text"]
        { 
            color: blue;
            background-color:lightsteelblue;
            
        }
        .grow { transition: all .2s ease-in-out; }
      
      
      .grow:hover { transform: scale(1.7); }
        
        </style>
</head>
<body class="styleBackground">
    <form id="form1" runat="server" >
     
        <center>
              <div style="margin-top:10px; border:1px solid groove">
                  <img src="image/BACK%20TO%20SNE.PNG" />
              </div>
        </center>
          
        <br /><br /><br /><br /><br />
       
         <center>
             <div>
                <asp:Label ID="Label3"  runat="server" CssClass="styleAlign"  Text="PLEASE ENTER USERNAME AND PASSWORD" Font-Bold="True" Font-Names="Tahoma" Font-Size="XX-Large" ForeColor="#071F8B"></asp:Label>
                 <br /><br /><br />

                 <asp:Label ID="Label1"  runat="server" CssClass="styleAlign"  Text="USERNAME" Font-Bold="True" Font-Names="Tahoma" Font-Size="Medium" ForeColor="#071F8B"></asp:Label>  
                 <br />
                 <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 33px" Width="134px"></asp:TextBox>&nbsp;&nbsp; <asp:Label ID="lblInvalidUsername" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
                 <br /><br />

                  <asp:Label ID="Label2"  runat="server" CssClass="styleAlign"  Text="PASSWORD" Font-Bold="True" Font-Names="Tahoma" Font-Size="Medium" ForeColor="#071F8B"></asp:Label>  
                  <br /> 

                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:TextBox ID="TextBox2"  runat="server" style="margin-left: 38px" Width="134px" TextMode="Password"></asp:TextBox>&nbsp;&nbsp; <asp:Label ID="lblInvalidPassword" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;

                     <br /><br />
                     <asp:Label ID="lblInvalid" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>

                     <br /><br />

                    <asp:ImageButton ID="ImageButton1" runat="server" Height="54px" CssClass="grow" ImageUrl="~/image/submit.PNG" Width="135px" OnClick="ImageButton1_Click" style="margin-left: 15px" />
                    <br />
              </div>
       </center>
    </form>
</body>
</html>
