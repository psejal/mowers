<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sale.aspx.cs" Inherits="EmmasProject.Sale" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <link href="StyleSheet.css" rel="stylesheet"/>
    <webopt:bundlereference runat="server" path="~/Content/css" />
   <%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">--%>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style2 {
            width: 928px;
            height: 392px;
        }
        .auto-style3 {
            width: 204px;
        }
        .auto-style4 {
            width: 100%;
            height: 226px;
        }
        .auto-style5 {
            height: 45px;
        }
        .auto-style6 {
            width: 204px;
            height: 45px;
        }
        .auto-style7 {
            height: 41px;
        }
        .auto-style8 {
            width: 204px;
            height: 41px;
        }
        .auto-style9 {
            height: 35px;
        }
        .auto-style10 {
            width: 225px;
            height: 35px;
        }
        .auto-style11 {
            height: 15px;
        }
        .auto-style12 {
            width: 225px;
            height: 15px;
        }
        .auto-style13 {
            width: 225px;
        }
    </style>
</head>
<body style="margin: 0 60px 0 60px;">
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
	<br/>
  <br/>
	<div style="font-family: 'Arial Black'; font-size: xx-large; font-weight: bolder; color: #0000FF; text-align: center">
			 SALES RECORD
		 </div>
	<br />
<div style="margin-left:5%;">
	<asp:Button ID="btnNew" runat="server" class="btn btn-primary" Text="Add New" OnClick="btnNew_Click" />
  </div>
  <!-- The Modal -->
  <div class="modal fade" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">New </h4>
          <button type="button" class="close" data-dismiss="modal">×</button>
        </div>
        
        <!-- Modal body -->
          
    <div class="modal-body">
           <table class="auto-style4">
            
            <tr>
                <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style6">
                    <asp:Label ID="lblcust" runat="server" Text="Customer:"></asp:Label>
                </td>
                <td class="auto-style5">
                  <asp:DropDownList ID="ddlcust" runat="server" Style="padding:2px" Height="41px" Width="220px" DataSourceID="odsCustomer" DataTextField="custFirst" DataValueField="id">
                    </asp:DropDownList>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style8">
                    <asp:Label ID="lblprod" runat="server" Text="Product"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:DropDownList ID="ddlprod" runat="server" Style="padding:2px" Height="41px" Width="220px" DataSourceID="odsProduct" DataTextField="prodName" DataValueField="id" >
                    </asp:DropDownList>
                </td>
            </tr>
              <div class="txtclass" >
            <tr>
               
                <td>&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="lblprodDesc" runat="server" Text="Product Description:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtprodDesc" runat="server"  Height="15px" Width="220px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="lblqty" runat="server" Text="Quantity:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtqty" runat="server"  Height="15px" Width="220px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="lblpric" runat="server" Text="Price:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtpric" runat="server" Height="15px" Width="220px"></asp:TextBox>
                </td>
            </tr>
              
           </div>  
        </table> 
     
        </div>
        
        <!-- Modal footer -->

        <div class="modal-footer">
           
            <%--  <asp:Button ID="Button1" runat="server"  class="btn btn-primary"   OnClick="btnCreate_Click" Text="Create" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          
         --%>
            <%-- <button type="button"  class="btn btn-primary"   data-dismiss="modal">Create</button>--%>
              <asp:Button ID="btnCreateSale" runat="server"  class="btn btn-primary"   OnClick="btnCreate_Click" Text="Create" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>
  
         </div>

      
        <p>
            &nbsp;</p>
      
        <asp:Label ID="lblSave" runat="server"></asp:Label>
        <br />
        <table style="width:100%;">
            <tr>
                <td>
                    <asp:GridView ID="gvSale" runat="server" CellPadding="4" Height="365px" OnSelectedIndexChanged="gvSale_SelectedIndexChanged1" Width="94%"   GridLines="None" ForeColor="#333333">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
        <table class="auto-style2">
            <tr>
                <td class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td class="auto-style10">
                    <asp:Label ID="lblID" runat="server" Text="ID:"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtID" runat="server" Height="15px" Width="220px"></asp:TextBox>
                </td>
            </tr>
          
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style12">
                    <asp:Label ID="lblCustomer" runat="server" Text="Customer:"></asp:Label>
                </td>
                <td class="auto-style11">
                    &nbsp;<asp:DropDownList ID="ddlCustomer" runat="server"  Style="padding:2px" Height="41px" Width="220px" DataSourceID="odsCustomer" DataTextField="custFirst" DataValueField="id">
                    </asp:DropDownList>
                    <br />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style13">
                    <asp:Label ID="lblProduct" runat="server" Text="Product:"></asp:Label>
                </td>
                <td>
                    &nbsp;<asp:DropDownList ID="ddlProduct" runat="server"  Style="padding:2px" Height="41px" Width="220px" DataSourceID="odsProduct" DataTextField="prodName" DataValueField="id">
                    </asp:DropDownList>
                </td>
            </tr>
                
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style13">
                    <asp:Label ID="lblProductPrice" runat="server" Text="Product Description:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtProductDescription" runat="server"  Height="15px" Width="220px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style13">
                    <asp:Label ID="lblQuantity" runat="server" Text="Quantity:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td>
                    <asp:TextBox ID="txtQuantity" runat="server"  Height="15px" Width="220px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style13">
                    <asp:Label ID="lblPrice" runat="server" Text="Price:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPrice" runat="server"  Height="15px" Width="220px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnUpdate" runat="server" Height="32px" Text="Edit" Width="101px" OnClick="btnUpdate_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnDelete" runat="server" Height="31px" Text="Delete" Width="105px" OnClick="btnDelete_Click" />
        <br />
        <br />
       
        <br />
        <br />
        <br />
        <asp:ObjectDataSource ID="odsSale" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProjectLibrary.EmmasDataSetTableAdapters.order_lineTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="orlPrice" Type="Decimal" />
                <asp:Parameter Name="orlQuantity" Type="Int32" />
                <asp:Parameter Name="inventoryID" Type="Int32" />
                <asp:Parameter Name="receiptID" Type="Int32" />
                <asp:Parameter Name="orlNote" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="orlPrice" Type="Decimal" />
                <asp:Parameter Name="orlQuantity" Type="Int32" />
                <asp:Parameter Name="inventoryID" Type="Int32" />
                <asp:Parameter Name="receiptID" Type="Int32" />
                <asp:Parameter Name="orlNote" Type="String" />
                <asp:Parameter Name="Original_id" Type="Int32" />
            </UpdateParameters>
         </asp:ObjectDataSource>
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
        <asp:ObjectDataSource ID="odsProduct" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProjectLibrary.EmmasDataSetTableAdapters.productTableAdapter"></asp:ObjectDataSource>
    </form>
</body>
</html>
