<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeEdit.aspx.cs" Inherits="EmmasProject.EmployeeEdit" %>

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
<h4>Employee</h4>
<hr />
<div class="row">
    <div class="col-md-4">
        <div class="form-group">
                <asp:Label ID="lblEmpID" runat="server" class="control-label"  Text="ID:"></asp:Label>
                <asp:TextBox ID="txtID" runat="server" ReadOnly="True"   class="form-control"  ></asp:TextBox>
               
            </div>
            <div class="form-group">
                 <asp:Label ID="lblEmpFirst" runat="server"  class="control-label" Text="First Name:"></asp:Label>
                   <asp:TextBox ID="txtEmpFirst" runat="server"   class="form-control" ></asp:TextBox>
                
            </div>
            <div class="form-group">
                <asp:Label ID="lblEmpLast" runat="server" class="control-label" Text="Last Name:"></asp:Label>
                  <asp:TextBox ID="txtEmpLast" runat="server"   class="form-control"></asp:TextBox>
         </div>
            <div class="form-group">
				 <asp:Label ID="lblEmpPosition" runat="server" class="control-label" Text="Position:"></asp:Label>
				<asp:DropDownList ID="ddlPostn" class="form-control" runat="server" DataSourceID="ObjectDataSource1" DataTextField="posName" DataValueField="id" ></asp:DropDownList>
               
            </div>
            <div class="form-group">		
				
				<asp:Button ID="btnUpdate" runat="server" class="btn btn-default" Text="Update" OnClick="btnUpdate_Click" />
          
				<asp:Button ID="btnDelete" runat="server" class="btn btn-default" Text="Delete" OnClick="btnDelete_Click" />    
            </div>
		
        
    </div>
</div>

<div>
    
</div>

        </div>
    	<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProjectLibrary.EmployeeDataSetTableAdapters.positionTableAdapter"></asp:ObjectDataSource>
    </form>
</body>
</html>
