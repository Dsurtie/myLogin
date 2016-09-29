<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="electricity.aspx.cs" Inherits="myLogin.electricity" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>

    <script type="text/javascript">
        history.pushState(null, null, 'electricity.aspx');
        window.addEventListener('popstate', function(event){
        history.pushState(null, null, 'electricity.aspx');
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
          width: 750px;
          height: 162px;
      }
        
        .auto-style2 {
          height: 37px;
      }

        .bt{
            float:right;
        }

        .btarrow{
            float:left;
        }

        .btarrow2{
            margin-top:50px;
            float:right;
        }
        
        .auto-style3 {
          width: 365px;
      }
      .auto-style4 {
          height: 37px;
          width: 365px;
      }
      tr.spaceUnder > td
        {
          padding-bottom: 1em;
        }
      .capitalize {
            text-transform: capitalize;
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
        <center>
            <asp:ImageButton ID="backArrowElectrr" CssClass="btnEx" runat="server" Height="54px" ImageUrl="~/image/red arrow.png" Width="79px" OnClick="backArrowElectrr_Click"/>
            <asp:ImageButton ID="ImageButton1" runat="server" Height="35px" CssClass="grow logoutbtn" ImageUrl="~/image/TOTAL REQ.PNG" Width="75px" OnClick="ImageButton1_Click"/>
              <div>
                  <img alt="" class="auto-style1" src="image/RESPOND%20HEADER.PNG" />
               </div>
         </center>

        <center>
            <div >
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" DataSourceID="SqlDataSource1" 
                    AllowSorting="True" AutoGenerateColumns="False" CellPadding="4"
                    BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" PageSize="15"
                    EmptyDataText="There are no data records to display." ForeColor="#333333" Font-Size="15px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="Reference" HeaderText="Reference"  />
                        <asp:BoundField DataField="FirstName" HeaderText="Name" />
                        <asp:BoundField DataField="LastName" HeaderText="Surname" />
                        <asp:BoundField DataField="ContactNumber" HeaderText="Contact Number" />
                        <asp:BoundField DataField="NatureOfComplaint" HeaderText="Nature Of Complaint"  />
                        <asp:BoundField DataField="Date" HeaderText="Date"/>
                        <asp:BoundField DataField="Complaint" HeaderText="Complaint"  />
                        <asp:BoundField DataField="Department" HeaderText="Department"  />
                        <asp:BoundField DataField="Responded" HeaderText="Responded"  />
                        <asp:BoundField DataField="ResponseStatus" HeaderText="Response Status"  />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:SQLServerDBConnectionString %>" 
                    SelectCommand="SELECT * FROM [tblCMS2] WHERE ([Department] = 'Electricity/Ugesi') AND ([ResponseStatus] = 'Open') OR ([ResponseStatus] = 'Pending')">
                </asp:SqlDataSource>
            </div>
        </center>

        <center>
            <div>
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="Label12" runat="server" CssClass="styleAlign" Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Large" ForeColor="#071F8B" Text="Reference Number"></asp:Label>
                        </td>
                        <td>
                         </td>
                        <td>
                         </td>
                        <td>
                         </td>
                        <td>
                         </td>
                        <td>
                            <asp:Label ID="Label17" runat="server" CssClass="styleAlign" Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Large" ForeColor="#071F8B" Text="Full Name"></asp:Label>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <asp:TextBox ID="txtReff" runat="server"  AutoCompleteType="Disabled" AutoPostBack="True" CssClass="styleRounded" CausesValidation="True" Height="27px" Width="247px" Enabled="false"></asp:TextBox>
                        </td>
                        <td>
                         </td>
                        <td>
                         </td>
                        <td>
                         </td>
                        <td>
                         </td>
                        <td>
                            <asp:TextBox ID="txtFullName" runat="server" CssClass="styleRounded" AutoCompleteType="Disabled" Enabled="false" Height="27px" Width="247px"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <asp:Label ID="Label31" runat="server" CssClass="styleAlign" Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Large" ForeColor="#071F8B" Text="CONTACT NUMBER"></asp:Label>
                        </td>
                        <td>
                         </td>
                        <td>
                         </td>
                        <td>
                         </td>
                        <td>
                         </td>
                        <td>
                            <asp:Label ID="Label21" runat="server" CssClass="styleAlign" Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Large" ForeColor="#071F8B" Text="Nature Of Complaint"></asp:Label>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <asp:TextBox ID="txtIDNumber" runat="server" AutoCompleteType="Disabled" Enabled="false" CssClass="styleRounded" Height="27px" Width="247px" MaxLength="13"></asp:TextBox>
                        </td>
                        <td>
                         </td>
                        <td>
                         </td>
                        <td>
                         </td>
                        <td>
                         </td>
                        <td>
                            <asp:TextBox ID="txtNComplaint" runat="server" Enabled="false" AutoCompleteType="Disabled" CssClass="styleRounded" Height="27px" Width="247px" MaxLength="10"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td>
                         </td>
                        <td>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <asp:Label ID="Label22" runat="server" CssClass="styleAlign" Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Large" ForeColor="#071F8B" Text="Date"></asp:Label>
                        </td>
                        <td>
                         </td>
                        <td>
                         </td>
                        <td>
                         </td>
                        <td>
                         </td>
                        <td>
                            <asp:Label ID="Label23" runat="server" CssClass="styleAlign" Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Large" ForeColor="#071F8B" Text="Department"></asp:Label>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <asp:TextBox ID="txtDate" runat="server" AutoCompleteType="Disabled" Enabled="false" CssClass="styleRounded" Height="27px" Width="247px"></asp:TextBox>
                        </td>
                        <td>
                         </td>
                        <td>
                         </td>
                        <td>
                         </td>
                        <td>
                         </td>
                        <td>
                            <asp:TextBox ID="txtDepartment" runat="server" Enabled="false" AutoCompleteType="Disabled" CssClass="styleRounded" Height="27px" Width="247px"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td>
                         </td>
                        <td>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" CssClass="styleAlign" Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Large" ForeColor="#071F8B" Text="Response Status"></asp:Label>
                        </td>
                        <td>
                         </td>
                        <td>
                         </td>
                        <td>
                         </td>
                        <td>
                         </td>
                        <td>
                            <asp:Label ID="Label2" runat="server" CssClass="styleAlign" Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Large" ForeColor="#071F8B" Text="Responded"></asp:Label>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <%--<asp:TextBox ID="txtRStatus" runat="server" AutoCompleteType="Disabled" CssClass="styleRounded capitalize" Height="27px" Width="247px"></asp:TextBox>--%>
                            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="styleRounded capitalize" Height="34px" Width="247px">
                                <asp:ListItem>Open</asp:ListItem>
                                <asp:ListItem>Closed</asp:ListItem>
                                <asp:ListItem>Pending</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                         </td>
                        <td>
                         </td>
                        <td>
                         </td>
                        <td>
                         </td>
                        <td>
                            <%--<asp:TextBox ID="txtResponded" runat="server" AutoCompleteType="Disabled" CssClass="styleRounded capitalize" Height="27px" Width="247px"></asp:TextBox>--%>
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="styleRounded capitalize" Height="34px" Width="247px">
                                <asp:ListItem>No</asp:ListItem>
                                <asp:ListItem>Yes</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>

                    <tr>
                        <td>
                         </td>
                        <td>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" CssClass="styleAlign" Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Large" ForeColor="#071F8B" Text="Complaint"></asp:Label>
                        </td>
                        <td>
                         </td>
                        <td>
                         </td>
                        <td>
                         </td>
                        <td>
                         </td>
                        <td>
                            <asp:Label ID="Label4" runat="server" CssClass="styleAlign" Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Large" ForeColor="#071F8B" Text="Response"></asp:Label>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <asp:TextBox ID="txtComp" runat="server" AutoCompleteType="Disabled" Enabled="false" Height="75px" MaxLength="150" TextMode="MultiLine" Width="258px"></asp:TextBox>
                        </td>
                        <td>
                         </td>
                        <td>
                         </td>
                        <td>
                         </td>
                        <td>
                         </td>
                        <td>
                            <asp:TextBox ID="txtResponse" runat="server" AutoCompleteType="Disabled" Height="75px" MaxLength="150" TextMode="MultiLine" Width="258px"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td>
                         </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="false" Width="264px">
                                <Columns>
                                    <asp:ImageField ControlStyle-Height="150px" ControlStyle-Width="264px" DataImageUrlField="Image">
                                    </asp:ImageField>
                                </Columns>
                            </asp:GridView>
                         </td>
                        <td>
                         </td>
                        <td>
                         </td>
                        <td>
                         </td>
                        <td>
                         </td>
                        <td>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <asp:ImageButton ID="arrow" runat="server" CssClass="btarrow" Height="64px" ImageUrl="~/image/red arrow.png" Width="151px" OnClick="arrow_Click"/>
                      
                         </td>
                        <td>
                         </td>
                        <td>
                         </td>
                        <td>
                        </td>
                        <td>
                        </td>
                        <td>
                            <asp:ImageButton ID="update" CssClass="bt" runat="server" Height="64px"  ImageUrl="~/image/submit.PNG" Width="186px" OnClick="update_Click"/>
                        </td>
                    </tr>
                </table>
            </div>
        </center>
    </form>
</body>
</html>
