<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inventory.aspx.cs" Inherits="EmmasProject.Inventory" %>

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
     <div>

          <br />
		   <div style="font-family: 'Arial Black'; font-size: xx-large; font-weight: bolder; color: #0000FF; text-align: center">
			 Inventory
		 </div>
		
		  <br />
		  <br />
		
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		 <div class="jumbotron">
			 <br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="lblInventory" runat="server" Text="Search by a Product:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:DropDownList ID="ddlProduct" runat="server" AppendDataBoundItems="True" DataSourceID="odsProduct" DataTextField="prodName" DataValueField="prodName" Style="padding:2px" Height="41px"  Width="152px" >
				 <asp:ListItem Selected="True" Value="0">All Products</asp:ListItem>
		  </asp:DropDownList>
		  &nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
			 <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="lblProductOrderDate" runat="server" Text="Search by a Product Order Date:"></asp:Label>
			 &nbsp;&nbsp;&nbsp;&nbsp;
			 <asp:DropDownList ID="ddlProductOrderDate" runat="server" Style="padding:2px" Height="41px" Width="152px" DataSourceID="odsProductOrderDate" DataTextField="pordDateOrdered" DataValueField="pordDateOrdered" OnSelectedIndexChanged="ddlProductOrderDate_SelectedIndexChanged">
				 <asp:ListItem Selected="True" Value="0">Select Order Date</asp:ListItem>
			 </asp:DropDownList>
			 &nbsp;&nbsp;<br />
			 <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
		  <asp:Button ID="btnInv" runat="server" class="btn btn-primary" OnClick="btnInv_Click" Text="Search" Width="104px" />

          <br />
			 </div>
          <br />
		  <asp:GridView ID="gvInv" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id,Expr1" DataSourceID="odsInventory" ForeColor="#333333" GridLines="None" Width="100%" Height="212px">
			  <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
			  <Columns>
				  <asp:BoundField DataField="prodName" HeaderText="Product Name" SortExpression="prodName" />
				  <asp:BoundField DataField="prodDescription" HeaderText="Description" SortExpression="prodDescription" />
				  <asp:BoundField DataField="prodBrand" HeaderText="Brand" SortExpression="prodBrand" />
				  <asp:BoundField DataField="invQuantity" HeaderText="Quantity" SortExpression="invQuantity" />
				  <asp:BoundField DataField="invSize" HeaderText="Size" SortExpression="invSize" />
				  <asp:BoundField DataField="invMeasure" HeaderText="Measure" SortExpression="invMeasure" />
				  <asp:BoundField DataField="invPrice" HeaderText="Price" SortExpression="invPrice" />
				  <asp:BoundField DataField="pordDateOrdered" DataFormatString="{0:d}" HeaderText="Date Order" SortExpression="pordDateOrdered" />
			  </Columns>
			  <EditRowStyle BackColor="#999999" />
			  <EmptyDataTemplate>
				  No Criteria Matches!
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
		  <asp:GridView ID="gvDate" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="odsDate" ForeColor="#333333" GridLines="None" Height="194px" Width="587px">
			  <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
			  <Columns>
				  <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" InsertVisible="False" ReadOnly="True" />
				  <asp:BoundField DataField="invQuantity" HeaderText="invQuantity" SortExpression="invQuantity" />
				  <asp:BoundField DataField="invSize" HeaderText="invSize" SortExpression="invSize" />
				  <asp:BoundField DataField="invMeasure" HeaderText="invMeasure" SortExpression="invMeasure" />
				  <asp:BoundField DataField="invPrice" HeaderText="invPrice" SortExpression="invPrice" />
				  <asp:BoundField DataField="productID" HeaderText="productID" SortExpression="productID" />
				  <asp:BoundField DataField="Expr1" HeaderText="Expr1" SortExpression="Expr1" InsertVisible="False" ReadOnly="True" />
				  <asp:BoundField DataField="prodName" HeaderText="prodName" SortExpression="prodName" />
			  	<asp:BoundField DataField="prodDescription" HeaderText="prodDescription" SortExpression="prodDescription" />
				  <asp:BoundField DataField="prodBrand" HeaderText="prodBrand" SortExpression="prodBrand" />
				  <asp:BoundField DataField="pordDateOrdered" HeaderText="pordDateOrdered" SortExpression="pordDateOrdered" />
			  </Columns>
			  <EditRowStyle BackColor="#999999" />
			  <EmptyDataTemplate>
				  No Criteria Matches!
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:GridView ID="gvFull" runat="server" AllowCustomPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id,Expr1" DataSourceID="odsFull" ForeColor="#333333" GridLines="None" Visible="False" Width="100%" Height="351px">
			  <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
			  <Columns>
				  <asp:BoundField DataField="prodName" HeaderText="Product Name" SortExpression="prodName" />
				  <asp:BoundField DataField="prodDescription" HeaderText="Description" SortExpression="prodDescription" />
				  <asp:BoundField DataField="prodBrand" HeaderText="Brand" SortExpression="prodBrand" />
				  <asp:BoundField DataField="invQuantity" HeaderText="Quantity" SortExpression="invQuantity" />
				  <asp:BoundField DataField="invSize" HeaderText="Size" SortExpression="invSize" />
				  <asp:BoundField DataField="invMeasure" HeaderText="Measure" SortExpression="invMeasure" />
				  <asp:BoundField DataField="invPrice" HeaderText="Price" SortExpression="invPrice" />
				  <asp:BoundField DataField="pordDateOrdered" DataFormatString="{0:d}" HeaderText="Order Date" SortExpression="pordDateOrdered" />
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
		  <br />
		  <asp:LinkButton ID="LinkButton1" runat="server" style="text-decoration:underline;" ForeColor="#0033CC">Back to inventory list</asp:LinkButton>
		  <br />
		  <br />
		  <br />
		  <asp:ObjectDataSource ID="odsProduct" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProjectLibrary.InventoryDataSetTableAdapters.productTableAdapter"></asp:ObjectDataSource>
		  <asp:ObjectDataSource ID="odsProductOrderDate" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProjectLibrary.InventoryDataSetTableAdapters.prod_orderTableAdapter"></asp:ObjectDataSource>
		  <asp:ObjectDataSource ID="odsInventory" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProjectLibrary.InventoryDataSetTableAdapters.InventoryDetailTableAdapter">
			  <SelectParameters>
				  <asp:ControlParameter ControlID="ddlProduct" Name="Param1" PropertyName="SelectedValue" Type="String" />
			  </SelectParameters>
		  </asp:ObjectDataSource>
		  <asp:ObjectDataSource ID="odsDate" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProjectLibrary.InventoryDataSetTableAdapters.InventoryDateTableAdapter">
			  <SelectParameters>
				  <asp:ControlParameter ControlID="ddlProductOrderDate" Name="Param2" PropertyName="SelectedValue" Type="String" />
			  </SelectParameters>
		  </asp:ObjectDataSource>
		  <asp:ObjectDataSource ID="odsFull" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProjectLibrary.InventoryDataSetTableAdapters.InventoryFullTableAdapter"></asp:ObjectDataSource>
          <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
          <br />

          </div>
          <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          </p>
      </form>
</body>
</html>
