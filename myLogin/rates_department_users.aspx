<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rates_department_users.aspx.cs" Inherits="myLogin.rates_department_users" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
     <script type="text/javascript">
        history.pushState(null, null, 'rates_department_users.aspx');
        window.addEventListener('popstate', function(event){
            history.pushState(null, null, 'rates_department_users.aspx');
    });
    </script>

  <style type="text/css">

        .styleBackground {
            background-image: url('/image/qqqq.jpg');
            c: \users\south side fm\documents\visual studio 2015\Projects\BACK END LOG IN\BACK END LOG IN\NEW BTTONS\qqqq.jpg;
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
       .logoutbtn{
          float:right;
      }
        
        </style>
</head>
<body class="styleBackground">
    <form id="form1" runat="server" >
     
        <center>
              <asp:Label ID="Label24"  runat="server" CssClass="styleAlign"  Text="Dashboard" Font-Bold="True" Font-Names="Tahoma" Font-Size="XX-Large" ForeColor="#071F8B"></asp:Label>
              <asp:ImageButton ID="ImageButton1" runat="server" Height="35px" CssClass="grow logoutbtn" ImageUrl="~/image/TOTAL REQ.PNG" Width="75px" OnClick="ImageButton1_Click"/>
                <br />
                <img alt="" class="auto-style1" src="image/BACK%20TO%20SNE.PNG" />
        </center>
                  <br /><br /><br /><br />

        <center>
            <div>
                  <asp:ImageButton ID="rates" runat="server" Height="83px" CssClass="grow" ImageUrl="~/image/RATES REQ.PNG" Width="219px" OnClick="rates_Click"/>
                  &nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:ImageButton ID="respondRates" runat="server" Height="83px" CssClass="grow" ImageUrl="~/image/RESPOND TO REQ.PNG" Width="219px" OnClick="respondRates_Click"/>
            </div>
        </center>
    </form>
</body>
</html>

