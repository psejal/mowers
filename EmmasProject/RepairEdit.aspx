<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RepairEdit.aspx.cs" Inherits="EmmasProject.RepairEdit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 <link rel="stylesheet" href="~/lib/bootstrap/dist/css/bootstrap.css" />
        <link rel="stylesheet" href="~/css/site.css" />
	
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body style="margin:0 40% 0 67%; width:100%;">
    <form id="form1" runat="server" >
        <div>
			<br />
			<br />
			<br />
			<h2>Edit</h2>
			<br />
			<br />
<h4>Repair</h4>
			<div class="row">
    <div class="col-md-4">
        <div class="form-group">
			   <asp:Label ID="Label1" runat="server" class="control-label" Text="ID"></asp:Label>
			   <asp:TextBox ID="TextBox1" runat="server"  class="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
				<asp:Label ID="Label2" runat="server" class="control-label" Text="Customer"></asp:Label>
				<asp:DropDownList ID="DropDownList1" runat="server"  class="form-control" DataSourceID="ObjectDataSource1" DataTextField="custFirst" DataValueField="id"></asp:DropDownList>
            </div>
            <div class="form-group">
				<asp:Label ID="Label3" runat="server" class="control-label" Text="Date In"></asp:Label>
				<asp:TextBox ID="TextBox2" runat="server"  class="form-control"></asp:TextBox>
         </div>
            <div class="form-group">
				<asp:Label ID="Label4" runat="server" class="control-label" Text="Date Out"></asp:Label>
				<asp:TextBox ID="TextBox3" runat="server"  class="form-control"></asp:TextBox>
            </div>
		<div class="form-group">
			<asp:Label ID="Label5" runat="server" class="control-label" Text="Issue"></asp:Label>
			<asp:TextBox ID="TextBox4" runat="server"  class="form-control"></asp:TextBox>
            </div>
		<div class="form-group">
			<asp:Label ID="Label6" runat="server" class="control-label" Text="Warranty"></asp:Label>
			<asp:CheckBox ID="CheckBox1" runat="server"   />
            </div>
		<div class="form-group">
			<asp:Label ID="Label7" runat="server" class="control-label" Text="Service Price"></asp:Label>
			<asp:DropDownList ID="DropDownList2" runat="server"  class="form-control" DataSourceID="ObjectDataSource2" DataTextField="serPrice" DataValueField="id"></asp:DropDownList>
            </div>
		<div class="form-group">
			<asp:Label ID="Label8" runat="server" class="control-label" Text="Equipment"></asp:Label>
			<asp:DropDownList ID="DropDownList3" runat="server"  class="form-control" DataSourceID="ObjectDataSource3" DataTextField="equModel" DataValueField="id"></asp:DropDownList>
            </div>
		<div class="form-group">
			<asp:Label ID="Label9" runat="server"  class="control-label" Text="Employee"></asp:Label>
			<asp:DropDownList ID="DropDownList4" runat="server"  class="form-control" DataSourceID="ObjectDataSource4" DataTextField="empFirst" DataValueField="id"></asp:DropDownList>
            </div>

           <div class="form-group">

			   <asp:Button ID="btnUpdate" runat="server" class="btn btn-default" Text="Update" OnClick="btnUpdate_Click"  />
				
			   <asp:Button ID="btnDelete" runat="server"  class="btn btn-default" Text="Delete" OnClick="btnDelete_Click"  />
				
            </div>
		
        
    </div>
</div>

<div>
    
</div>

        </div>
    	<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProjectLibrary.EmmasDataSetTableAdapters.customerTableAdapter" UpdateMethod="Update">
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
		<asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProjectLibrary.EmmasDataSetTableAdapters.serviceTableAdapter"></asp:ObjectDataSource>
		<asp:ObjectDataSource ID="ObjectDataSource3" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProjectLibrary.EmmasDataSetTableAdapters.equipmentTableAdapter"></asp:ObjectDataSource>
		<asp:ObjectDataSource ID="ObjectDataSource4" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProjectLibrary.EmmasDataSetTableAdapters.employeeTableAdapter"></asp:ObjectDataSource>
    </form>
</body>
</html>
