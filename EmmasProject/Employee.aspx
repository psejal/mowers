<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="EmmasProject.Employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet"/>
    <webopt:BundleReference runat="server" Path="~/Content/css" />
    <style type="text/css">
        .auto-style9 {
            margin-top: 23;
            margin-left: 6;
        }
        .auto-style12 {
            height: 28px;
        }
        .auto-style13 {
            width: 173px;
        }
        .auto-style18 {
            width: 100%;
            height: 131px;
        }
        .auto-style19 {
            height: 35px;
        }
        .auto-style20 {
            height: 33px;
        }
        .auto-style21 {
            height: 33px;
            width: 180px;
        }
        .auto-style22 {
            width: 180px;
        }
        .auto-style23 {
            height: 35px;
            width: 180px;
        }
        .auto-style24 {
            height: 28px;
            width: 180px;
        }
    	.auto-style31 {
			height: 33px;
			width: 140px;
		}
		.auto-style33 {
			height: 35px;
			width: 140px;
		}
		.auto-style34 {
			height: 28px;
			width: 140px;
		}
		.auto-style35 {
			width: 140px;
		}
    	</style>

      <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
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
<body><form id="form1" runat="server" style="margin: 0 15% 0 15%">
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
			 Management
		 </div>
	<br />
<div style="margin-left:5%;">
  <button type="button" class="btn btn-primary" data-toggle="modal"   data-target="#myModal">
    &nbsp;Add New Employee</button>
</div>
  <!-- The Modal -->
  <div class="modal fade" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">New Employee</h4>
          <button type="button" class="close" data-dismiss="modal">×</button>
        </div>
        
        <!-- Modal body -->
          
    <div class="modal-body">
       
            <table  class="auto-style8" style="height: 202px;" >
                <tr>
                   
                  
                    <td class="auto-style13">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="lblfname" runat="server" Placholder="First Name" Text="First Name:"></asp:Label>
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:TextBox ID="txtfname" runat="server"  Height="15px" Width="220px"  ></asp:TextBox>
                    </td>
                </tr> 
                <tr>
                  
                    <td class="auto-style13">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="lbllname" runat="server" Placeholder="Last Name" Text="Last Name:"></asp:Label>
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:TextBox ID="txtlname"  runat="server" Height="15px" Width="220px" ></asp:TextBox>
                    </td>
                </tr> <tr>
                 
                    <td class="auto-style13">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <asp:Label ID="lblpos" runat="server" Text="Position:"></asp:Label>
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<asp:DropDownList ID="ddlpos" runat="server" Style="padding:2px" Height="41px" Width="220px" DataSourceID="odsPosition" DataTextField="posName" DataValueField="id">
                        </asp:DropDownList>
                    </td>
                </tr>
                </table>
     
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
            <asp:Button ID="btnCreate" runat="server"  class="btn btn-primary"   OnClick="btnCreate_Click" Text="Create" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <%-- <button type="button"  class="btn btn-primary"   data-dismiss="modal">Create</button>--%>
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>
  

		 
            <br />

			
				
            <div class="jumbotron" ;  style="border-radius:5px; ">
             <div style="margin-left:10%">
              <asp:Label ID="lblposition" runat="server" Text="Seach by a Position:"></asp:Label>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			
              <asp:DropDownList ID="ddlPositionSearch" runat="server" Style="padding:2px" Height="41px" Width="220px" AppendDataBoundItems="True" DataSourceID="odsPosition" DataTextField="posName" DataValueField="id" ForeColor="Black" >
                            <asp:ListItem Selected="True" Value="0">Select a Position</asp:ListItem>
                        </asp:DropDownList>
					
 			     <br />
					
 			   <br />
 <asp:Label ID="lblEmployee" runat="server" Text="Search by an Employee:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="txtEmployeeSearch" runat="server"  CssClass="auto-style9"  Height="15px" Width="220px"></asp:TextBox>

                            <br />
					<br />

                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                        <asp:Button ID="btnSearchEmployee" runat="server" Text="Search" OnClick="btnSearchEmployee_Click" Class=" btn btn-primary btn-md" Height="35px" Width="85px" />
                        
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        
                        <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" Class=" btn btn-primary btn-md" Height="35px" Width="85px" />
                  </div>    
				 </div>
        
            <br />
                        <asp:GridView ID="gvEmployee" runat="server" CellPadding="4"  Width="100%" HorizontalAlign="center"  OnSelectedIndexChanged="gvEmployee_SelectedIndexChanged" ForeColor="#333333" GridLines="None" Height="309px">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#2461BF" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                      
    
            	<br />
				<br />
                      
    
            <br />
            <table class="auto-style18">
                <tr>
                    <td class="auto-style31">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                    <td class="auto-style21">
                        <asp:Label ID="lblEmpID" runat="server" Text="ID:"></asp:Label>
                    </td>
                    <td class="auto-style20">
                        <asp:TextBox ID="txtID" runat="server" ReadOnly="True" style="  padding: 20px 5px;  border-radius: 4px;" Height="35px" Width="220px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style35">&nbsp;</td>
                    <td class="auto-style22">
                        <asp:Label ID="lblEmpFirst" runat="server" Text="First Name:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmpFirst" runat="server"  Height="31px" Width="220px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style33"></td>
                    <td class="auto-style23">
                        <asp:Label ID="lblEmpLast" runat="server" Text="Last Name:"></asp:Label>
                    </td>
                    <td class="auto-style19">
                        <asp:TextBox ID="txtEmpLast" runat="server"  Height="15px" Width="220px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style34"></td>
                    <td class="auto-style24">
                        <asp:Label ID="lblEmpPosition" runat="server" Text="Position:"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:DropDownList ID="ddlPostn" runat="server" Style="padding:2px" Height="41px" Width="220px" DataSourceID="odsPosition" DataTextField="posName" DataValueField="id">
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
            <br />
            
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Button ID="btnUpdate" runat="server" Text="Edit" OnClick="btnUpdate_Click" Height="32px" Width="94px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" Height="33px" Width="107px" />
        
            <br />
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblSave" runat="server"></asp:Label>
            <br />
            
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;<br />
            <br />
&nbsp;<asp:ObjectDataSource ID="odsEmployee" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProjectLibrary.EmployeeDataSetTableAdapters.employeeCRUDTableAdapter" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_id" Type="Int32" />
                    <asp:Parameter Name="Original_empFirst" Type="String" />
                    <asp:Parameter Name="Original_empLast" Type="String" />
                    <asp:Parameter Name="Original_posID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="empFirst" Type="String" />
                    <asp:Parameter Name="empLast" Type="String" />
                    <asp:Parameter Name="posID" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="empFirst" Type="String" />
                    <asp:Parameter Name="empLast" Type="String" />
                    <asp:Parameter Name="posID" Type="Int32" />
                    <asp:Parameter Name="Original_id" Type="Int32" />
                    <asp:Parameter Name="Original_empFirst" Type="String" />
                    <asp:Parameter Name="Original_empLast" Type="String" />
                    <asp:Parameter Name="Original_posID" Type="Int32" />
                </UpdateParameters>
            </asp:ObjectDataSource>
            <asp:ObjectDataSource ID="odsPosition" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProjectLibrary.EmployeeDataSetTableAdapters.positionTableAdapter"></asp:ObjectDataSource>
            <br />
&nbsp;<asp:Panel ID="Panel1" runat="server">
            </asp:Panel>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />

       
    </form>
</body>
</html>
