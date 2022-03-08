<%@ Page Language="C#" AutoEventWireup="true"  CodeBehind="Invoice.aspx.cs" Inherits="EmmasProject.Invoice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet"/>
    <style type="text/css">
        .auto-style12 {
			height: 20px;
		}
        .auto-style14 {
			width: 4px;
		}
		.auto-style15 {
			height: 20px;
			width: 52px;
		}
		.auto-style16 {
			width: 50px;
		}
		.auto-style20 {
			height: 20px;
			width: 150px;
		}
		.auto-style23 {
			margin-right: 0;
		}
		.auto-style27 {
			width: 67px;
		}
		.auto-style28 {
			width: 52px;
		}
		.auto-style29 {
			width: 150px;
		}
		.auto-style30 {
			width: 200px;
		}
        </style>
    <webopt:BundleReference runat="server" Path="~/Content/css" />
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body >
    <form id="form1" runat="server" style="margin:0 10% 0 10%">
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
        <div>
        </div>
        <div id="lblInvoice">
           <br />
	<br />
        <div style="font-family: 'Arial Black'; font-size: xx-large; font-weight: bolder; color: #0000FF; text-align: center">
			 Invoice
		 </div>
	<br />
                    
                        <asp:Panel ID="Panel3" runat="server" Width="100%" BackColor="#CCCCCC" Height="135px" >
							<br />
							<table  style="width:100%">
								<tr><td>&nbsp;</td>
									<td class="auto-style29">   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<asp:Label ID="lblInvoiceNo" runat="server" Text="Invoice No:"></asp:Label>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
										<asp:DropDownList ID="ddlInvoiceNo" runat="server" Width="221px" DataSourceID="odsOnOrder" DataTextField="onordInvoiceNum" DataValueField="id" Style="padding:2px; Height:41px;">
										</asp:DropDownList>
									</td>
									<td class="auto-style28">&nbsp;</td>
									<td class="auto-style29">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblDate" runat="server" Text="Invoice Date:"></asp:Label>&nbsp; &nbsp; &nbsp; 
                        
                            <asp:TextBox ID="txtInvoiceDate" runat="server" Height="41px" Width="202px" TextMode="Date" CssClass="auto-style23"></asp:TextBox></td>
									<td class="auto-style27">&nbsp;</td>
									<td class="auto-style29">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;&nbsp;
										<asp:Label ID="lblCustID" runat="server" Text="Customer ID:"></asp:Label>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<asp:DropDownList ID="ddlCustID" runat="server" DataSourceID="odsCustomer" DataTextField="id" DataValueField="id" Style="padding:2px; Height:41px;" Width="221px">
										</asp:DropDownList>
										&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
											<td class="auto-style16">&nbsp;<td class="auto-style30">&nbsp;
												<asp:Label ID="lblCustName" runat="server" Text="Customer Name:"></asp:Label>
												&nbsp;&nbsp;&nbsp;
												<asp:DropDownList ID="ddlCustName" runat="server" DataSourceID="odsCustomer" DataTextField="custFirst" DataValueField="id" Style="padding:2px" Height="41px" OnSelectedIndexChanged="ddlCustName_SelectedIndexChanged" Width="220px">
												</asp:DropDownList>
												</td>
												
										</td>
										 <td>&nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;
											 <asp:Label ID="lblPaymentType" runat="server" Text="Payment Type:"></asp:Label>
											 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											 <asp:DropDownList ID="ddlPaymentType" runat="server" DataSourceID="odsPayment" DataTextField="payType" DataValueField="id" Style="padding:2px" Height="41px" Width="220px">
											 </asp:DropDownList>
										</td>
										<td>&nbsp;</td>
									</td><td>&nbsp;</td>
																<td><button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-print"></span> Print
        </button></td>
								</tr><tr><td>&nbsp;</td>
									

								     </tr>
								<tr><td class="auto-style12"></td>
									
								
									<td class="auto-style20"></td>
									<td class="auto-style15">&nbsp;

			
									</td>
								</tr>
								
							</table>
                          
                       </asp:Panel>
           
			<br />
			
			
			

                <asp:Panel ID="Panel5" runat="server" Height="121px" Width="100%" BackColor="#CCCCCC">
					<table style="width:80%" >
					<tr><td>&nbsp;</td>
									<td>   &nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>
								&nbsp;</td>
						</tr>
						
						<tr>
							<td>&nbsp;</td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<asp:Label ID="lblProduct" runat="server" Text="Product:"></asp:Label>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<asp:DropDownList ID="ddlProduct" runat="server" DataSourceID="odsProduct" DataTextField="prodName" DataValueField="prodName" Style="padding:2px" Height="41px" Width="220px">
								</asp:DropDownList>
							</td>
							<td>&nbsp;
								<asp:Label ID="lblModel" runat="server" Text="Model:"></asp:Label>
								&nbsp;
								<asp:DropDownList ID="ddlModel" runat="server" DataSourceID="odsEquipment" DataTextField="equModel" DataValueField="equModel" Style="padding:2px" Height="41px" Width="220px">
								</asp:DropDownList>
							</td>
							<td>&nbsp;
								<asp:Label ID="lblPurchasePrice" runat="server" Text="Purchase Price:"></asp:Label>
								&nbsp;
								<asp:TextBox ID="txtPurchasePrice" runat="server" Height="15px" Width="220px"></asp:TextBox>
							</td>
							<td>&nbsp;
								<asp:Label ID="lblSalePrice" runat="server" Text="Sale Price:"></asp:Label>
								&nbsp;
								<asp:TextBox ID="txtSalePrice" runat="server" Height="15px" Width="220px"></asp:TextBox>
							</td>
							<td>&nbsp;
								<asp:Label ID="lblQty" runat="server" Text="Qty:"></asp:Label>
								&nbsp;
								<asp:TextBox ID="txtQty" runat="server" Height="15px" Width="220px"></asp:TextBox>
							</td>
							<td>
								<asp:Button ID="btnAdd" runat="server" Height="26px" OnClick="btnAdd_Click" Text="Add" Width="70px" />
							</td>
						</tr>
						
					</table>
                   
                    <br />
					 </asp:Panel>
              
                    <br />




                    <asp:GridView ID="gvInvoice" runat="server" CellPadding="4"  HorizontalAlign="center" ForeColor="#333333" GridLines="None"  Height="250px" Width="100%"   CssClass="auto-style14">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <EditRowStyle BackColor="#999999" />
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
                    <br />



                
                                <asp:Panel ID="Panel6" runat="server" BackColor="#CCCCCC" Height="86px" Width="100%">
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="lblTotalAmount" runat="server" Text="Total Amount:"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="lblamount" runat="server" Text="$"></asp:Label>
                                    
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    
                                    <asp:Button ID="btnSave" runat="server" Text="Save" Width="93px" OnClick="btnSave_Click" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" Width="93px" OnClick="btnCancel_Click" />
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <br />
                                </asp:Panel>
                          
                            
                            
                   
                    <br />
                    <asp:ObjectDataSource ID="odsCustomer" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProjectLibrary.EmmasDataSetTableAdapters.customerTableAdapter" DeleteMethod="Delete" InsertMethod="Insert" UpdateMethod="Update">
						<DeleteParameters>
							<asp:Parameter Name="Original_id" Type="Int32" />
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
						</UpdateParameters>
			</asp:ObjectDataSource>
               
           
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:ObjectDataSource ID="odsProduct" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProjectLibrary.EmmasDataSetTableAdapters.productNameTableAdapter" InsertMethod="Insert">
                <InsertParameters>
                    <asp:Parameter Name="prodName" Type="String" />
                </InsertParameters>
            </asp:ObjectDataSource>
            <br />
            <br />
            <asp:ObjectDataSource ID="odsPayment" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProjectLibrary.EmmasDataSetTableAdapters.paymentTableAdapter" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_id" Type="Int32" />
                    <asp:Parameter Name="Original_payType" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="payType" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="payType" Type="String" />
                    <asp:Parameter Name="Original_id" Type="Int32" />
                    <asp:Parameter Name="Original_payType" Type="String" />
                </UpdateParameters>
            </asp:ObjectDataSource>
            <asp:ObjectDataSource ID="odsEquipment" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProjectLibrary.EmmasDataSetTableAdapters.equipmentNameTableAdapter"></asp:ObjectDataSource>
            <asp:ObjectDataSource ID="odsReceipt" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProjectLibrary.EmmasDataSetTableAdapters.receiptTableAdapter" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ordNumber" Type="String" />
                    <asp:Parameter Name="ordDate" Type="DateTime" />
                    <asp:Parameter Name="ordPaid" Type="Boolean" />
                    <asp:Parameter Name="paymentID" Type="Int32" />
                    <asp:Parameter Name="custID" Type="Int32" />
                    <asp:Parameter Name="empID" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ordNumber" Type="String" />
                    <asp:Parameter Name="ordDate" Type="DateTime" />
                    <asp:Parameter Name="ordPaid" Type="Boolean" />
                    <asp:Parameter Name="paymentID" Type="Int32" />
                    <asp:Parameter Name="custID" Type="Int32" />
                    <asp:Parameter Name="empID" Type="Int32" />
                    <asp:Parameter Name="Original_id" Type="Int32" />
                </UpdateParameters>
            </asp:ObjectDataSource>
           
        	<br />
			<asp:ObjectDataSource ID="odsOnOrder" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProjectLibrary.EmmasDataSetTableAdapters.on_orderTableAdapter" UpdateMethod="Update">
				<DeleteParameters>
					<asp:Parameter Name="Original_id" Type="Int32" />
					<asp:Parameter Name="Original_onordInvoiceNum" Type="String" />
					<asp:Parameter Name="Original_onordArriveDate" Type="DateTime" />
					<asp:Parameter Name="Original_onordNumInOrder" Type="Int32" />
					<asp:Parameter Name="Original_onordPrice" Type="Decimal" />
					<asp:Parameter Name="Original_inventoryID" Type="Int32" />
					<asp:Parameter Name="Original_prodorderID" Type="Int32" />
				</DeleteParameters>
				<InsertParameters>
					<asp:Parameter Name="onordInvoiceNum" Type="String" />
					<asp:Parameter Name="onordArriveDate" Type="DateTime" />
					<asp:Parameter Name="onordNumInOrder" Type="Int32" />
					<asp:Parameter Name="onordPrice" Type="Decimal" />
					<asp:Parameter Name="inventoryID" Type="Int32" />
					<asp:Parameter Name="prodorderID" Type="Int32" />
				</InsertParameters>
				<UpdateParameters>
					<asp:Parameter Name="onordInvoiceNum" Type="String" />
					<asp:Parameter Name="onordArriveDate" Type="DateTime" />
					<asp:Parameter Name="onordNumInOrder" Type="Int32" />
					<asp:Parameter Name="onordPrice" Type="Decimal" />
					<asp:Parameter Name="inventoryID" Type="Int32" />
					<asp:Parameter Name="prodorderID" Type="Int32" />
					<asp:Parameter Name="Original_id" Type="Int32" />
					<asp:Parameter Name="Original_onordInvoiceNum" Type="String" />
					<asp:Parameter Name="Original_onordArriveDate" Type="DateTime" />
					<asp:Parameter Name="Original_onordNumInOrder" Type="Int32" />
					<asp:Parameter Name="Original_onordPrice" Type="Decimal" />
					<asp:Parameter Name="Original_inventoryID" Type="Int32" />
					<asp:Parameter Name="Original_prodorderID" Type="Int32" />
				</UpdateParameters>
			</asp:ObjectDataSource>
           
        </div>
    </form>
</body>
</html>
