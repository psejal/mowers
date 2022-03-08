<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="EmmasProject.Reports" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
			<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Reports</a>
    </div>
     <form class="navbar-form navbar-left" " >
      <div class="input-group">
        <input class="form-control" id="myInput" type="text"  style="margin-top:15px;" placeholder="Search your reports here">
        <div class="input-group-btn">
          <button class="btn btn-default" type="submit" style="margin-top:15px;">
            <i class="glyphicon glyphicon-search"  ></i>
          </button>
        </div>
      </div>
    </form>
    </div>
 
</nav>
			
        </div>
        <div class="jumbotron" style="margin:0 20% 0 20%; border-radius: 4px;">
            <br/>
            <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; There is no report yet!</h2>
            <br/>
        </div>
    </form>
</body>
</html>
