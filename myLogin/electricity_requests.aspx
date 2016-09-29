<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="electricity_requests.aspx.cs" Inherits="myLogin.electricity_complaints" %>

<%@ Register assembly="DevExpress.Dashboard.v15.2.Web, Version=15.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.DashboardWeb" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>

    <script type="text/javascript">
        history.pushState(null, null, 'electricity_complaints.aspx');
        window.addEventListener('popstate', function(event){
        history.pushState(null, null, 'electricity_complaints.aspx');
    });
    </script>

  <style type="text/css">

        .styleBackground {
            background-image: url('/image/qqqq.jpg');
     
        }
        
        .styleAlign
        {
            text-align:center;
            text-shadow: 0px 0px 11px rgba(255, 226, 224, 1);
        }
        .styleRounded{
            border-radius:25px;
        }
        .btnEx{
            float:left;
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
        
        .auto-style1 {
          width: 680px;
          height: 142px;
      }
        .grow { transition: all .2s ease-in-out; }
      
      
      .grow:hover { transform: scale(1.7); }
      .logoutbtn{
          float:right;
      }

        
        </style>
</head>
<body class="styleBackground">
    <form id="form1" runat="server">
    <div>
        <asp:ImageButton ID="backArrow" runat="server" CssClass="btnEx" Height="54px" ImageUrl="~/image/red arrow.png" Width="79px" OnClick="backArrow_Click"/>
        <asp:ImageButton ID="ImageButton1" runat="server" Height="35px" CssClass="grow logoutbtn" ImageUrl="~/image/TOTAL REQ.PNG" Width="75px" OnClick="ImageButton1_Click"/>
        <center>
              <div>
                  <img alt="" class="auto-style1" src="image/HEADER%20ELEC%20COMP.PNG" />
               </div>
         </center>

        <dx:ASPxDashboardViewer ID="ASPxDashboardViewer1" runat="server" DashboardSource="~/Electricity.xml" Height="732px" Width="1322px">
        </dx:ASPxDashboardViewer>
    
    </div>
    </form>
</body>
</html>
