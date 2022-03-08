<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerUpdate.aspx.cs" Inherits="EmmasProject.CustomerUpdate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body style="margin:0 40% 0 67%; width:100%;">
    <form id="form1" runat="server">
		 <div>
			<br />
			<br />
			<br />
			<h2>Edit</h2>
			<br />
			<br />
<h4>Customer</h4>
<hr />
<div class="row">
    <div class="col-md-4">
        <div class="form-group">
       
						<asp:Label ID="Label1" runat="server" class="control-label" Text="ID:"></asp:Label>
				
						<asp:TextBox ID="txtCid"  class="form-control" runat="server"></asp:TextBox>
				 </div>
            <div class="form-group">
						<asp:Label ID="Label2" runat="server" class="control-label"  Text="First Name:"></asp:Label>
				        <asp:TextBox ID="txtformal" class="form-control" runat="server"></asp:TextBox>
				 </div>
            <div class="form-group">	
						<asp:Label ID="Label3" runat="server" class="control-label"  Text="Last Name:"></asp:Label>
				
						<asp:TextBox ID="txtSirname" class="form-control" runat="server"></asp:TextBox>
				 </div>
            <div class="form-group">
						<asp:Label ID="Label4" runat="server" class="control-label"  Text="Phone:"></asp:Label>
					
						<asp:TextBox ID="txtcontact" class="form-control" runat="server"></asp:TextBox>
				 </div>
            <div class="form-group">	
						<asp:Label ID="Label5" runat="server" class="control-label"  Text="Address:"></asp:Label>
					
						<asp:TextBox ID="txtResidence" class="form-control" runat="server"></asp:TextBox>
			 </div>
            <div class="form-group">		
						<asp:Label ID="Label6" runat="server" class="control-label"  Text="City:"></asp:Label>
				
						<asp:TextBox ID="txtLane" class="form-control" runat="server"></asp:TextBox>
			 </div>
            <div class="form-group">	
						<asp:Label ID="Label7" runat="server" class="control-label"  Text="Postal Code:"></asp:Label>
					
						<asp:TextBox ID="txtCode" class="form-control" runat="server"></asp:TextBox>
					 </div>
            <div class="form-group">		
					
						<asp:Label ID="Label8" runat="server"  class="control-label" Text="Email:"></asp:Label>
				        <asp:TextBox ID="txtMail" class="form-control" runat="server"></asp:TextBox>
			 </div>
            <div class="form-group">		
					

        	

			<asp:Button ID="btnUpdate" runat="server" class="btn btn-default" OnClick="btnUpdate_Click" Text="Update" />
    
          
			<asp:Button ID="btnDelete" runat="server" class="btn btn-default" OnClick="btnDelete_Click" Text="Delete" />
			    
            </div>
           <div class="form-group">
			<asp:Label ID="lblSave" runat="server"></asp:Label>
			    
            </div>
           
    </form>

</body>
</html>
