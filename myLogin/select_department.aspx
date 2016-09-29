<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="select_department.aspx.cs" Inherits="myLogin.select_department" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <script type="text/javascript">
        history.pushState(null, null, 'select_department.aspx');
        window.addEventListener('popstate', function(event){
            history.pushState(null, null, 'select_department.aspx');
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
      .btnEx{
            float:left;
        }
        
        .auto-style1 {
          width: 750px;
          height: 162px;
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
             <asp:ImageButton ID="ImageButton1" runat="server" Height="35px" CssClass="grow logoutbtn" ImageUrl="~/image/TOTAL REQ.PNG" Width="75px" OnClick="ImageButton1_Click"/>
              <div>
                  <img alt="" class="auto-style1" src="image/RESPOND%20HEADER.PNG" />
               </div>
        </center>
                  <br /><br /><br /><br />

        <center>
            <div>
                  <asp:ImageButton ID="waterDept" runat="server" Height="83px" CssClass="grow" ImageUrl="~/image/WATER REQ.PNG" Width="219px" OnClick="waterDept_Click"/>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:ImageButton ID="electDept" runat="server" Height="83px" CssClass="grow" ImageUrl="~/image/ELEC REQ.PNG" Width="219px" OnClick="electDept_Click"/>
                  <br />
                  <br />
                  <asp:ImageButton ID="ratesDept" runat="server" Height="83px" CssClass="grow" ImageUrl="~/image/RATES REQ.PNG" Width="219px" OnClick="ratesDept_Click"/>
                <br />
                 <asp:ImageButton ID="backArrowElectrr" CssClass="btnEx" runat="server" Height="54px" ImageUrl="~/image/red arrow.png" Width="125px" OnClick="backArrowElectrr_Click"/>
            </div>
        </center>
    </form>
</body>
</html>

