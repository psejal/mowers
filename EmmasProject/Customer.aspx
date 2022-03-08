<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="EmmasProject.Customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet"/>
    <%--<style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 105px;
        }
        .auto-style3 {
            width: 195px;
        }
        .auto-style4 {
            width: 194px;
        }
        .auto-style5 {
            width: 194px;
            height: 54px;
        }
        .auto-style6 {
            width: 195px;
            height: 54px;
        }
        .auto-style7 {
            height: 54px;
        }
    </style>--%>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <%-- <script type="text/javascript" language="javascript">
    function Func() {
        alert("hello!")
    }
</script>--%>
    <webopt:bundlereference runat="server" path="~/Content/css" />
    <style type="text/css">
        .auto-style2 {
            width: 155px;
        }

        .auto-style8 {
            width: 57%;
            height: 273px;
        }

        .auto-style10 {
            width: 94px;
        }

        .auto-style11 {
            margin-left: 0;
        }

        .auto-style13 {
            width: 94%;
            height: 309px;
			margin-right: 0px;
		}

        .auto-style14 {
            margin-right: 90px;
        }

        .auto-style15 {
            width: 100%;
            height: 175px;
        }

        .auto-style18 {
            height: 79px;
        }
    	.auto-style19 {
			width: 198px;
		}
		.auto-style20 {
			width: 198px;
			height: 79px;
		}
    	.auto-style21 {
			width: 198px;
			height: 61px;
		}
		.auto-style22 {
			height: 61px;
		}
    	.auto-style24 {
			width: 386px;
		}
    	.auto-style25 {
			width: 347px;
		}
    	.auto-style26 {
			width: 347px;
			height: 23px;
		}
		.auto-style27 {
			width: 121px;
			height: 23px;
		}
		.auto-style28 {
			width: 386px;
			height: 23px;
		}
		.auto-style29 {
			width: 121px;
		}
		.auto-style30 {
			width: 347px;
			height: 46px;
		}
		.auto-style31 {
			width: 121px;
			height: 46px;
		}
		.auto-style32 {
			width: 386px;
			height: 46px;
		}
    	.auto-style33 {
			width: 347px;
			height: 42px;
		}
		.auto-style34 {
			width: 121px;
			height: 42px;
		}
		.auto-style35 {
			width: 386px;
			height: 42px;
		}
    </style>
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
 
  
  
</head>
<body><form id="form1" runat="server" style="margin:0 10% 0 10%">
        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" runat="server" style="color:white;" href="~/">Doc Manager</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a runat="server" href="~/">Home</a></li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">Sale
        <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a runat="server" href="~/Sale">Sale</a></li>
                                <li><a runat="server" href="~/Invoice">Invoice</a></li>
                            </ul>
                        </li>
                        <li><a runat="server" href="~/Repair">Repair</a></li>
                        <li><a runat="server" href="~/Customer">Customer</a></li>
                        <li><a runat="server" href="~/Employee">Employee</a></li>
                        <li><a runat="server" href="~/Order">Order</a></li>
                        <li><a runat="server" href="~/Inventory">Inventory</a></li>
                        </ul>
                     <ul class="nav navbar-nav navbar-right">
                        &nbsp;&nbsp;&nbsp;
                    <asp:Panel ID="pnlContent" runat="server">
                          
                          &nbsp;&nbsp; 
                          <asp:LinkButton ID="lbLogout" runat="server" ForeColor="White" OnClick="lbLogout_Click"><span class="glyphicon glyphicon-log-out"  style="color:white;"></span>Logout</asp:LinkButton>
                      </asp:Panel>
                    </ul>

                       

                    
                </div>
            </div>
        </div>
	<br />
	<br />
        <div style="font-family: 'Arial Black'; font-size: xx-large; font-weight: bolder; color: #0000FF; text-align: center">
			 Customer Info
		 </div>
	<br />


	<div style="margin-left:5%;">
  <button type="button" class="btn btn-primary" id="btnCt" data-toggle="modal" data-target="#myModal">
    Add New Customer
  </button>
	</div>
  <!-- The Modal -->
  <div class="modal fade" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">New Customer</h4>
          <button type="button" class="close" data-dismiss="modal">×</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
    <table class="auto-style8" style="width:100%;" >
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="lblFirst" runat="server" Text="First Name:"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtFirst" runat="server"  Height="15px" Width="220px" CssClass="col-xs-offset-0"></asp:TextBox>
                    </td>
                 </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="lblLast" runat="server" Text="Last Name:"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtLast" runat="server"  Height="15px" Width="220px"></asp:TextBox>
                    </td>
                 </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style2">
                       <asp:Label ID="lblPhone" runat="server" Text="Phone:"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtPhone" runat="server"  Height="15px" Width="220px"></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="lblAddress" runat="server" Text="Address:"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtAddress" runat="server"  Height="15px" Width="220px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                     <td>&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="lblCty" runat="server" Text="City:"></asp:Label>
                    </td>
                     <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtCty" runat="server"  Height="15px" Width="220px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="lblPostal" runat="server" Text="Postal Code:"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtPosta" runat="server"  Height="15px" Width="220px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                     <td>&nbsp;</td>
                    <td class="auto-style2">

                        <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
                    </td>
                     <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"  Height="15px" Width="220px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
            <%--<button type="button"  class="btn btn-primary" OnClick="btnCreate_Click" data-dismiss="modal">Create</button>--%>
            <asp:Button  runat="server" OnClick="btnCreateCustomer_Click"  class="btn btn-primary" Text="Create" />
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>
  

            <br />
            <div style="margin: 0 45px 0 45px;">
				
			
<div class="jumbotron" style="border-radius:5px; ">
				<div style="margin-left:10%">
                <table class="auto-style15"  style="margin-left:20px;">
                    <tr>
						
                        <td class="auto-style19">
                            <asp:Label ID="lblCustomer" runat="server" Text="Search By a Customer:"></asp:Label>
                           
                            </td>
                        <td>
                            <asp:TextBox ID="txtCustomerSearch" runat="server"  Height="15px" Width="220px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                     
                        <td class="auto-style20" >
                            <asp:Label ID="lblCity" runat="server" Text="Search by a City:"></asp:Label>
                           </td>
                        <td class="auto-style18">
                            <asp:TextBox ID="txtCitySerach" runat="server" Height="15px" Width="220px"></asp:TextBox>
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style21"></td>
                        <td class="auto-style22">
                            &nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnSearch" runat="server" Class=" btn btn-primary btn-md"  OnClick="btnSearch_Click"  Text="Search" Height="35px" Width="85px"/>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnClear" runat="server" Class=" btn btn-primary btn-md" OnClick="btnClear_Click" Text="Clear" Height="35px" Width="85px" />
                        </td>
                        <td class="auto-style22"></td>
                    </tr>
                </table>
				 </div>
        </div>
            <br />
           
                        <asp:GridView ID="gvCustomer" runat="server" CellPadding="4" HorizontalAlign="center"  ForeColor="#333333" GridLines="None" Height="386px" OnSelectedIndexChanged="gvCustomer_SelectedIndexChanged" Width="100%"   CssClass="auto-style14">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                            </Columns>
                            <EditRowStyle BackColor="#999999" />
                            <EmptyDataTemplate>
                                No Customer Found!
                            </EmptyDataTemplate>
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                         </asp:GridView>
    
	<%--<asp:Panel ID="pnlTab" runat="server" BackColor="#999999" style="margin-left:auto;margin-right:auto;" Width="35%" BorderColor="#333333" BorderStyle="Solid">
            <table class="auto-style13"  >
                <tr>
                    <td class="auto-style33">
                        </td>
                    <td class="auto-style34">
                    </td>
                    <td class="auto-style35">
                    </td>
                </tr>
                <tr>
					<td class="auto-style25">&nbsp;</td>
					<td class="auto-style29">
						<asp:Label ID="txtID" runat="server" Text="ID:"></asp:Label>
					</td>
					<td class="auto-style24">
						<asp:TextBox ID="txtcustID" runat="server" Height="15px" Width="220px"></asp:TextBox>
					</td>
				</tr>
                <tr>
                    <td class="auto-style25">
                        &nbsp;</td>
                    <td class="auto-style29">
                        <asp:Label ID="lblfname" runat="server" Text="First Name:"></asp:Label>
                    </td>
                    <td class="auto-style24">
                        <asp:TextBox ID="txtfname" runat="server"  Height="15px" Width="220px" CssClass="auto-style11"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25">
                        &nbsp;</td>
                    <td class="auto-style29">
                        <asp:Label ID="lbllname" runat="server" Text="Last Name:"></asp:Label>
                    </td>
                    <td class="auto-style24">
                        <asp:TextBox ID="txtlname" runat="server"  Height="15px" Width="220px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25">
                        &nbsp;</td>
                    <td class="auto-style29">
                        <asp:Label ID="lblphn" runat="server" Text="Phone:"></asp:Label>
                    </td>
                    <td class="auto-style24">
                        <asp:TextBox ID="txtphn" runat="server"  Height="15px" Width="220px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25">
                        &nbsp;</td>
                    <td class="auto-style29">
                        <asp:Label ID="lbladd" runat="server" Text="Address:"></asp:Label>
                    </td>
                    <td class="auto-style24">
                        <asp:TextBox ID="txtadd" runat="server"  Height="15px" Width="220px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25">
                        &nbsp;</td>
                    <td class="auto-style29">
                        <asp:Label ID="lblct" runat="server" Text="City:"></asp:Label>
                    </td>
                    <td class="auto-style24">
                        <asp:TextBox ID="txtct" runat="server"  Height="15px" Width="220px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25">
                        &nbsp;</td>
                    <td class="auto-style29">
                        <asp:Label ID="lblpost" runat="server" Text="Postal Code:"></asp:Label>
                    </td>
                    <td class="auto-style24">
                        <asp:TextBox ID="txtpost" runat="server"  Height="15px" Width="220px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25">
                        &nbsp;</td>
                    <td class="auto-style29">
                        <asp:Label ID="lbleml" runat="server" Text="Email:"></asp:Label>
                    </td>
                    <td class="auto-style24">
                        <asp:TextBox ID="txteml" runat="server"  Height="15px" Width="220px"></asp:TextBox>
                    </td>
                </tr>
				
                <tr>
                    <td class="auto-style26">
                        </td>
                    <td class="auto-style27">
                    </td>
                    <td class="auto-style28">
                    </td>
                </tr>
				
                <tr>
                    <td class="auto-style25">
                        &nbsp;</td>
                    <td class="auto-style29">
                        &nbsp;</td>
                    <td class="auto-style24">
                        &nbsp; <asp:Button ID="btnUpdate" runat="server" Text="Update"  Height="35px" OnClick="btnUpdate_Click" Width="103px" Class=" btn btn-primary btn-md" style="margin-left:auto;margin-right:auto;" />
						&nbsp;&nbsp;
            <asp:Button ID="btnDelete" runat="server" Text="Delete" Height="33px" OnClick="btnDelete_Click" Width="101px" Class=" btn btn-primary btn-md"  style="margin-left:auto;margin-right:auto;"/>
            </td>
                </tr>
				
                <tr>
                    <td class="auto-style30">
                        </td>
                    <td class="auto-style31">
                        </td>
                    <td class="auto-style32">
            </td>
                </tr>
				
                <tr>
                    <td class="auto-style25">
                        &nbsp;</td>
                    <td class="auto-style29">
                        &nbsp;</td>
                    <td class="auto-style24">

            <asp:Label ID="lblSave" runat="server"  ></asp:Label>
            </td>
                </tr>
                </table>
		</asp:Panel>--%>
            <br />
		<br />
     <br />
            <asp:ObjectDataSource ID="odsCustomer" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProjectLibrary.EmmasDataSetTableAdapters.customerTableAdapter" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_id" Type="Int32" />
                    <asp:Parameter Name="Original_custFirst" Type="String" />
                    <asp:Parameter Name="Original_custLast" Type="String" />
                    <asp:Parameter Name="Original_custPhone" Type="String" />
                    <asp:Parameter Name="Original_custAddress" Type="String" />
                    <asp:Parameter Name="Original_custCity" Type="String" />
                    <asp:Parameter Name="Original_custPostal" Type="String" />
                    <asp:Parameter Name="Original_custEmail" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="custFirst" Type="String" />
                    <asp:Parameter Name="custLast" Type="String" />
                    <asp:Parameter Name="custPhone" Type="String" />
                    <asp:Parameter Name="custAddress" Type="String" />
                    <asp:Parameter Name="custCity" Type="String" />
                    <asp:Parameter Name="custPostal" Type="String" />
                    <asp:Parameter Name="custEmail" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="custFirst" Type="String" />
                    <asp:Parameter Name="custLast" Type="String" />
                    <asp:Parameter Name="custPhone" Type="String" />
                    <asp:Parameter Name="custAddress" Type="String" />
                    <asp:Parameter Name="custCity" Type="String" />
                    <asp:Parameter Name="custPostal" Type="String" />
                    <asp:Parameter Name="custEmail" Type="String" />
                    <asp:Parameter Name="Original_id" Type="Int32" />
                    <asp:Parameter Name="Original_custFirst" Type="String" />
                    <asp:Parameter Name="Original_custLast" Type="String" />
                    <asp:Parameter Name="Original_custPhone" Type="String" />
                    <asp:Parameter Name="Original_custAddress" Type="String" />
                    <asp:Parameter Name="Original_custCity" Type="String" />
                    <asp:Parameter Name="Original_custPostal" Type="String" />
                    <asp:Parameter Name="Original_custEmail" Type="String" />
                </UpdateParameters>
            </asp:ObjectDataSource>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
			
    </form>
    
</body>
</html>
