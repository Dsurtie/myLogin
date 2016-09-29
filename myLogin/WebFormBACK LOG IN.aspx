<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormBACK LOG IN.aspx.cs" Inherits="myLogin.WebFormBACK_LOG_IN" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">

        .styleBackground {
            background-image: url('/NEW BTTONS/qqqq.jpg');
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
        
        </style>
</head>
<body class="styleBackground">
    <form id="form1" runat="server" >
     
        <center>
              <div>
    
         
           <img src="NEW%20BTTONS/IMG%20FOR%20LOG%20IN.png" /></div>
      
        
        <br />
       
     <asp:Label ID="Label3"  runat="server" CssClass="styleAlign"  Text="PLEASE ENTER USERNAME AND PASSWORD" Font-Bold="True" Font-Names="Tahoma" Font-Size="XX-Large" ForeColor="#071F8B"></asp:Label>
       
        
       
              <br />
              <br />
              <br />
             <asp:Label ID="Label1"  runat="server" CssClass="styleAlign"  Text="USERNAME" Font-Bold="True" Font-Names="Tahoma" Font-Size="Medium" ForeColor="#071F8B"></asp:Label>  
              <br />
              <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
              <br />
              <br />
             <asp:Label ID="Label2"  runat="server" CssClass="styleAlign"  Text="PASSWORD" Font-Bold="True" Font-Names="Tahoma" Font-Size="Medium" ForeColor="#071F8B"></asp:Label>  
           
            <br />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:TextBox ID="TextBox2"  runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <br />
            <br />
              <asp:ImageButton ID="ImageButton1" runat="server" Height="54px" ImageUrl="~/NEW BTTONS/submit.PNG" Width="135px" />
            <br />
           </center>
    </form>
</body>
</html>
