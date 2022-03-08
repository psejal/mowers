<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="EmmasProject.Order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet"/>
    <webopt:bundlereference runat="server" path="~/Content/css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


</head>
<body>
     <form id="form1" runat="server" style="margin:0 15% 0 15%">
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
    
          <br />

<%--		 <div style="font-family: 'Arial Black'; font-size: xx-large; font-weight: bolder; color: #0000FF; text-align: center">
			 Order Details
		 </div>--%>
	
		  <br />
		  <br />
     <div class="jumbotron">
			 
			 <br />
		 <div style="margin-left:15%">
		 <asp:Label ID="lblOrder" runat="server" Text="Search by Order Arrive Date:"></asp:Label>
		 &nbsp;
			 <asp:DropDownList ID="ddlOrderDate" runat="server" Style="padding:2px;" Height="41px" Width="143px" AppendDataBoundItems="True" DataSourceID="odsDate" DataTextField="onordArriveDate" DataValueField="onordArriveDate" DataTextFormatString="{0:yyyy/MM/dd}">
			 </asp:DropDownList>
			 <br />
			 </div>
			 <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
			 <asp:Button ID="btnOrder" runat="server"  class="btn btn-primary" Text="Serach Order" OnClick="btnOrder_Click" />
		 </div>
		 <div>

			 <br />
			 <br />
			 <asp:GridView ID="gvOrderDetail" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" AllowSorting="True" DataSourceID="odsOrder" Height="188px" Width="100%" >
				 <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
				 <Columns>
					 <asp:BoundField DataField="prodName" HeaderText="Product Name" SortExpression="prodName" />
					 <asp:BoundField DataField="pordDateOrdered" DataFormatString="{0:d}" HeaderText="Order Date" SortExpression="pordDateOrdered" />
					 <asp:BoundField DataField="onordArriveDate" DataFormatString="{0:d}" HeaderText="Arrive Date" SortExpression="onordArriveDate" />
					 <asp:BoundField DataField="orlPrice" HeaderText="Price" SortExpression="orlPrice" />
					 <asp:BoundField DataField="orlQuantity" HeaderText="Quantity" SortExpression="orlQuantity" />
					 <asp:BoundField DataField="orlNote" HeaderText="Note" SortExpression="orlNote" />
					 <asp:BoundField DataField="custFull" HeaderText="Customer Name" ReadOnly="True" SortExpression="custFull" />
					 <asp:CheckBoxField DataField="pordPaid" HeaderText="Payment Status" SortExpression="pordPaid" />
				 </Columns>
				 <EditRowStyle BackColor="#999999" />
				 <EmptyDataTemplate>
					 No Order Found!
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



			 <asp:GridView ID="gvDetail" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="odsOrderDetail" ForeColor="#333333"  GridLines="None" Height="284px" Width="100%" >
				 <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
				 <Columns>
					 <asp:BoundField DataField="prodName" HeaderText="Product Name" SortExpression="prodName" />
					 <asp:BoundField DataField="pordDateOrdered" DataFormatString="{0:d}" HeaderText="Order Date" SortExpression="pordDateOrdered" />
					 <asp:BoundField DataField="onordArriveDate" DataFormatString="{0:d}" HeaderText="Arrive Date" SortExpression="onordArriveDate" />
					 <asp:BoundField DataField="orlPrice" HeaderText="Price" SortExpression="orlPrice" />
					 <asp:BoundField DataField="orlQuantity" HeaderText="Quantity" SortExpression="orlQuantity" />
					 <asp:BoundField DataField="orlNote" HeaderText="Note" SortExpression="orlNote" />
					 <asp:BoundField DataField="custFull" HeaderText="Customer Name" ReadOnly="True" SortExpression="custFull" />
					 <asp:CheckBoxField DataField="pordPaid" HeaderText="Payment Status" SortExpression="pordPaid" />
				 </Columns>
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
			 <asp:LinkButton ID="LinkButton1" runat="server" Font-Underline="True">Back to order List</asp:LinkButton>
			 <br />
			 <br />



			 <asp:ObjectDataSource ID="odsDate" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProjectLibrary.InventoryDataSetTableAdapters.OrderDateTableAdapter" OnSelecting="odsDate_Selecting"></asp:ObjectDataSource>
			 <asp:ObjectDataSource ID="odsOrder" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProjectLibrary.InventoryDataSetTableAdapters.DataTable1TableAdapter">
				 <SelectParameters>
					 <asp:ControlParameter ControlID="ddlOrderDate" Name="Param1" PropertyName="SelectedValue" Type="String" />
				 </SelectParameters>
			 </asp:ObjectDataSource>
			 <asp:ObjectDataSource ID="odsOrderDetail" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProjectLibrary.InventoryDataSetTableAdapters.DataTable2TableAdapter"></asp:ObjectDataSource>
			 <br />
			 <br />
			 <br />

		 </div>
         </form>
     </body>
</html>
