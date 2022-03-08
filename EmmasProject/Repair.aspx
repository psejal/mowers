<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Repair.aspx.cs" Inherits="EmmasProject.Repair" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet.css" rel="stylesheet"/>
    <webopt:BundleReference runat="server" Path="~/Content/css" />
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            margin-left: 20px;
        }
        .auto-style2 {
            width: 43px;
        }
        .auto-style3 {
            height: 22px;
        }
        .auto-style4 {
            width: 100%;
            height: 386px;
        }
        .auto-style5 {
            height: 42px;
        }
        .auto-style6 {
            height: 53px;
        }
        .auto-style7 {
            width: 100%;
            height: 343px;
        }
        .auto-style9 {
            width: 208px;
        }
    </style>
   
</head>
<body>
    <form id="form1" runat="server" style="margin:0 10% 0 10%" >
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

      
	<br/>
  <br/>
	<div style="font-family: 'Arial Black'; font-size: xx-large; font-weight: bolder; color: #0000FF; text-align: center">
			 Repair
		 </div>
	<br />
<div style="margin-left:5%;">
  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
    Add New 
  </button>
	</div>

  <!-- The Modal -->
  <div class="modal fade" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title"></h4>
          <button type="button" class="close" data-dismiss="modal">×</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
    <table class="auto-style7">
                 <tr>
                     <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                     <td class="auto-style9">
                         <asp:Label ID="lblcust" runat="server" Text="Customer:"></asp:Label>
                     </td>
                     <td>
                         <asp:DropDownList ID="ddlcust" runat="server" DataSourceID="odsReceipt" DataTextField="custFirst" DataValueField="id" Style="padding:2px" Height="41px" Width="220px">
                         </asp:DropDownList>
                     </td>
                 </tr>
                 <tr>
                     <td>&nbsp;</td>
                     <td class="auto-style9">
                         <asp:Label ID="lblIn" runat="server" Text="Date In:"></asp:Label>
                     </td>
                     <td>
                         <asp:TextBox ID="txtin" runat="server" Height="15px" Width="220px"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td>&nbsp;</td>
                     <td class="auto-style9">
                         <asp:Label ID="lblout" runat="server" Text="Date Out:"></asp:Label>
                     </td>
                     <td>
                         <asp:TextBox ID="txtout" runat="server"  Height="15px" Width="220px" ></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td>&nbsp;</td>
                     <td class="auto-style9">
                         <asp:Label ID="lblIssu" runat="server" Text="Issue:"></asp:Label>
                     </td>
                     <td>
                         <asp:TextBox ID="txtIssu" runat="server"  Height="15px" Width="220px"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td>&nbsp;</td>
                     <td class="auto-style9">
                         <asp:Label ID="lblwarr" runat="server" Text="Warranty:"></asp:Label>
                     </td>
                     <td>
                         <asp:CheckBox ID="cbWarr" runat="server" />
                     </td>
                 </tr>
                 <tr>
                     <td>&nbsp;</td>
                     <td class="auto-style9">
                         <asp:Label ID="lblserpric" runat="server" Text="Service Price:"></asp:Label>
                     </td>
                     <td>
                         <asp:DropDownList ID="ddlservpric" runat="server" DataSourceID="odsService" DataTextField="serPrice" DataValueField="id" Style="padding:2px" Height="41px" Width="220px">
                         </asp:DropDownList>
                     </td>
                 </tr>
                 <tr>
                     <td>&nbsp;</td>
                     <td class="auto-style9">
                         <asp:Label ID="lblequip" runat="server" Text="Equipment:"></asp:Label>
                     </td>
                     <td>
                         <asp:DropDownList ID="ddlEquip" runat="server" DataSourceID="odsEquipment" DataTextField="equModel" DataValueField="id" Style="padding:2px" Height="41px" Width="220px">
                         </asp:DropDownList>
                     </td>
                 </tr>
                 <tr>
                     <td>&nbsp;</td>
                     <td class="auto-style9">
                         <asp:Label ID="lblemp" runat="server" Text="Employee:"></asp:Label>
                     </td>
                     <td>
                         <asp:DropDownList ID="ddlEmp" runat="server" DataSourceID="odsEmployee" DataTextField="empFirst" DataValueField="id"  Style="padding:2px" Height="41px" Width="220px">
                         </asp:DropDownList>
                     </td>
                 </tr>
             </table>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
            <%--<button type="button"  class="btn btn-primary" OnClick="btnCreate_Click" data-dismiss="modal">Create</button>--%>
            <asp:Button ID="btnCreate" runat="server" OnClick="btnCreate_Click"  class="btn btn-primary" Text="Create" />
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>
  
</div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                    <td>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:GridView ID="gvRepair" runat="server" CellPadding="4" Width="100%" GridLines="None" Height="268px" OnSelectedIndexChanged="gvRepair_SelectedIndexChanged1" ForeColor="#333333" >
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
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </p>
        <p>
             &nbsp;</p>
        <p>
             <table class="auto-style4">
                 <tr>
                     <td class="auto-style3"></td>
                     <td class="auto-style3">
                         <asp:Label ID="lblID" runat="server" Text="ID:"></asp:Label>
                     </td>
                     <td class="auto-style3">
                         <asp:TextBox ID="txtID" runat="server" ReadOnly="True"  Height="15px" Width="220px"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td>&nbsp;</td>
                     <td>
                         <asp:Label ID="lblCustomer" runat="server" Text="Customer:"></asp:Label>
                     </td>
                     <td>
                         <asp:DropDownList ID="ddlCustomer" runat="server" DataSourceID="odsReceipt" DataTextField="custFirst" DataValueField="id" Style="padding:2px" Height="41px" Width="220px">
                         </asp:DropDownList>
                     </td>
                 </tr>
                 <tr>
                     <td>&nbsp;</td>
                     <td>
                         <asp:Label ID="lblDateIn" runat="server" Text="Date In:"></asp:Label>
                     </td>
                     <td>
                         <asp:TextBox ID="txtDateIn" runat="server"  Height="15px" Width="220px"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style3"></td>
                     <td class="auto-style3">
                         <asp:Label ID="lblDateOut" runat="server" Text="Date Out:"></asp:Label>
                     </td>
                     <td class="auto-style3">
                         <asp:TextBox ID="txtDateOut" runat="server"   Height="15px" Width="220px"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td>&nbsp;</td>
                     <td>
                         <asp:Label ID="lblIssue" runat="server" Text="Issue:"></asp:Label>
                     </td>
                     <td>
                         <asp:TextBox ID="txtIssue" runat="server"   Height="15px" Width="220px"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td>&nbsp;</td>
                     <td>
                         <asp:Label ID="lblWarranty" runat="server" Text="Warranty:"></asp:Label>
                     </td>
                     <td>
                         <asp:CheckBox ID="cbWarrenty" runat="server" />
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style5"></td>
                     <td class="auto-style5">
                         <asp:Label ID="lblServicePrice" runat="server" Text="Service Price:"></asp:Label>
                     </td>
                     <td class="auto-style5">
                         <asp:DropDownList ID="ddlServicePrice" runat="server" DataSourceID="odsService" DataTextField="serPrice" DataValueField="id" Style="padding:2px" Height="41px" Width="220px">
                         </asp:DropDownList>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                     <td class="auto-style6">
                         <asp:Label ID="lblEquipment" runat="server" Text="Equipment:"></asp:Label>
                     </td>
                     <td class="auto-style6">
                         <asp:DropDownList ID="ddlEquipment" runat="server" DataSourceID="odsEquipment" DataTextField="equModel" DataValueField="id" Style="padding:2px" Height="41px" Width="220px">
                         </asp:DropDownList>
                     </td>
                 </tr>
                 <tr>
                     <td>&nbsp;</td>
                     <td>
                         <asp:Label ID="lblEmployee" runat="server" Text="Employee:"></asp:Label>
                     </td>
                     <td>
                         <asp:DropDownList ID="ddlEmployee" runat="server" DataSourceID="odsEmployee" DataTextField="empFirst" DataValueField="id" Style="padding:2px" Height="41px" Width="220px">
                         </asp:DropDownList>
                     </td>
                 </tr>
             </table>
        </p>
        <p>
             &nbsp;</p>
        <p>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
             <asp:Button ID="btnUpdate" runat="server" Text="Edit" OnClick="btnUpdate_Click" Height="34px" Width="91px" />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" Height="36px" Width="98px" />
        </p>
     <p>
             
        </p>
        <p>
             <asp:ObjectDataSource ID="odsEmployee" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProjectLibrary.EmmasDataSetTableAdapters.employeeTableAdapter"></asp:ObjectDataSource>
        </p>
        <p>
             <asp:ObjectDataSource ID="odsServiceOrder" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProjectLibrary.EmmasDataSetTableAdapters.service_orderTableAdapter" UpdateMethod="Update">
                 <DeleteParameters>
                     <asp:Parameter Name="Original_id" Type="Int32" />
                 </DeleteParameters>
                 <InsertParameters>
                     <asp:Parameter Name="serordDateIn" Type="DateTime" />
                     <asp:Parameter Name="serordDateOut" Type="DateTime" />
                     <asp:Parameter Name="serordIssue" Type="String" />
                     <asp:Parameter Name="serordWarranty" Type="Boolean" />
                     <asp:Parameter Name="receiptID" Type="Int32" />
                     <asp:Parameter Name="serviceID" Type="Int32" />
                     <asp:Parameter Name="equipID" Type="Int32" />
                     <asp:Parameter Name="empID" Type="Int32" />
                 </InsertParameters>
                 <UpdateParameters>
                     <asp:Parameter Name="serordDateIn" Type="DateTime" />
                     <asp:Parameter Name="serordDateOut" Type="DateTime" />
                     <asp:Parameter Name="serordIssue" Type="String" />
                     <asp:Parameter Name="serordWarranty" Type="Boolean" />
                     <asp:Parameter Name="receiptID" Type="Int32" />
                     <asp:Parameter Name="serviceID" Type="Int32" />
                     <asp:Parameter Name="equipID" Type="Int32" />
                     <asp:Parameter Name="empID" Type="Int32" />
                     <asp:Parameter Name="Original_id" Type="Int32" />
                 </UpdateParameters>
             </asp:ObjectDataSource>
        </p>
        <p>
             <asp:ObjectDataSource ID="odsEquipment" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProjectLibrary.EmmasDataSetTableAdapters.equipmentTableAdapter" UpdateMethod="Update">
                 <DeleteParameters>
                     <asp:Parameter Name="Original_id" Type="Int32" />
                     <asp:Parameter Name="Original_equModel" Type="String" />
                     <asp:Parameter Name="Original_equSerial" Type="String" />
                     <asp:Parameter Name="Original_custID" Type="Int32" />
                     <asp:Parameter Name="Original_equtypeID" Type="Int32" />
                     <asp:Parameter Name="Original_equManuID" Type="Int32" />
                 </DeleteParameters>
                 <InsertParameters>
                     <asp:Parameter Name="equModel" Type="String" />
                     <asp:Parameter Name="equSerial" Type="String" />
                     <asp:Parameter Name="custID" Type="Int32" />
                     <asp:Parameter Name="equtypeID" Type="Int32" />
                     <asp:Parameter Name="equManuID" Type="Int32" />
                 </InsertParameters>
                 <UpdateParameters>
                     <asp:Parameter Name="equModel" Type="String" />
                     <asp:Parameter Name="equSerial" Type="String" />
                     <asp:Parameter Name="custID" Type="Int32" />
                     <asp:Parameter Name="equtypeID" Type="Int32" />
                     <asp:Parameter Name="equManuID" Type="Int32" />
                     <asp:Parameter Name="Original_id" Type="Int32" />
                     <asp:Parameter Name="Original_equModel" Type="String" />
                     <asp:Parameter Name="Original_equSerial" Type="String" />
                     <asp:Parameter Name="Original_custID" Type="Int32" />
                     <asp:Parameter Name="Original_equtypeID" Type="Int32" />
                     <asp:Parameter Name="Original_equManuID" Type="Int32" />
                 </UpdateParameters>
             </asp:ObjectDataSource>
        </p>
        <p>
             <asp:ObjectDataSource ID="odsReceipt" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProjectLibrary.EmmasDataSetTableAdapters.customerTableAdapter" UpdateMethod="Update">
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
        </p>
        <p>
             <asp:ObjectDataSource ID="odsService" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProjectLibrary.EmmasDataSetTableAdapters.serviceTableAdapter" UpdateMethod="Update">
                 <DeleteParameters>
                     <asp:Parameter Name="Original_id" Type="Int32" />
                     <asp:Parameter Name="Original_serName" Type="String" />
                     <asp:Parameter Name="Original_serDescription" Type="String" />
                     <asp:Parameter Name="Original_serPrice" Type="Decimal" />
                 </DeleteParameters>
                 <InsertParameters>
                     <asp:Parameter Name="serName" Type="String" />
                     <asp:Parameter Name="serDescription" Type="String" />
                     <asp:Parameter Name="serPrice" Type="Decimal" />
                 </InsertParameters>
                 <UpdateParameters>
                     <asp:Parameter Name="serName" Type="String" />
                     <asp:Parameter Name="serDescription" Type="String" />
                     <asp:Parameter Name="serPrice" Type="Decimal" />
                     <asp:Parameter Name="Original_id" Type="Int32" />
                     <asp:Parameter Name="Original_serName" Type="String" />
                     <asp:Parameter Name="Original_serDescription" Type="String" />
                     <asp:Parameter Name="Original_serPrice" Type="Decimal" />
                 </UpdateParameters>
             </asp:ObjectDataSource>
        </p>
        <p>
             &nbsp;</p>
        <p>
             &nbsp;</p>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
