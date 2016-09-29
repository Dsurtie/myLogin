<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="total_requests.aspx.cs" Inherits="myLogin.total_complaints" %>

<%@ Register assembly="DevExpress.Dashboard.v15.2.Web, Version=15.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.DashboardWeb" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>

    <script type="text/javascript">
        history.pushState(null, null, 'total_complaints.aspx');
        window.addEventListener('popstate', function(event){
        history.pushState(null, null, 'total_complaints.aspx');
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
        <asp:ImageButton ID="backArrowTotal" runat="server" Height="54px" CssClass="btnEx" ImageUrl="~/image/red arrow.png" Width="79px" OnClick="backArrowTotal_Click"/>
        <asp:ImageButton ID="ImageButton1" runat="server" Height="35px" CssClass="grow logoutbtn" ImageUrl="~/image/TOTAL REQ.PNG" Width="75px" OnClick="ImageButton1_Click"/>
        <center>
              <div>
                  <img alt="" class="auto-style1" src="image/HEADER%20TOT%20COMP.PNG" />
               </div>
         </center>

        <dx:ASPxDashboardViewer ID="ASPxDashboardViewer1" runat="server" DashboardSource="~/NewComplaints.xml" Height="1002px" Width="1322px">
        </dx:ASPxDashboardViewer>
    
    </div>
    </form>
</body>
</html>
