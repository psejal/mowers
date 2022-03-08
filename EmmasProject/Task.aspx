<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Task.aspx.cs" Inherits="EmmasProject.Task" %>


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
  <form id="form2" runat="server">
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Tasks</a>
    </div>
     
    <ul class="nav navbar-nav">
      <li class="active"><a href="#"><button type="button"  class="btn btn-primary active"data-toggle="modal" data-target="#myModal">Add Task</button>  </a></li>
 		
    </ul>
      
    <form class="navbar-form navbar-left" " >
      <div class="input-group">
        <input class="form-control" id="myInput" type="text"  style="margin-top:15px;" placeholder="Search..">
        <div class="input-group-btn">
          <button class="btn btn-default" type="submit" style="margin-top:15px;">
            <i class="glyphicon glyphicon-search"  ></i>
          </button>
        </div>
      </div>
    </form>
    </div>
 
</nav>
<div class="container">
 
  <!-- Trigger the modal with a button -->
  

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Task</h4>
        </div>
        <div class="modal-body">
         <p>Add a new Task.</p>
         <input type="text" class="form-control"  placeholder="Add Task here" >
        </div>
          <div class="modal-body">
         <p>When should it be done?</p>
          <input type="text" class="form-control" >
        </div>
        <div class="modal-footer">
           <button type="button" class="btn btn-primary" data-dismiss="modal">Add Task</button>
          <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
</div>

<div class="container">
   
  <br>
  <table class="table table-hover">
    <thead>
      <tr>
        <th>Firstname</th>
        <th>Lastname</th>
        <th>Tasks</th>
        <th>Due</th>
      </tr>
    </thead>
    <tbody id="myTable">
      <tr>
        <td>Emma</td>
        <td>Carr</td>
        <td>Sale</td>
        <td>Not Set</td>
      </tr>
      <tr>
        <td>Sam</td>
        <td>Delign</td>
        <td>Making Report</td>
        <td>Not Set</td>
      </tr>
      <tr>
        <td>Sara</td>
        <td>Kendell</td>
        <td>Check account</td>
        <td>Not Set</td>
      </tr>
      <tr>
        <td>Wendy</td>
        <td>Tutti</td>
        <td>Check Inventory</td>
        <td>Not Set</td>
      </tr>
    </tbody>
  </table>
  
 
</div>
<br/>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<div class="container">
              
  <ul class="pager">
    <li><a href="#">Previous</a></li>
    <li><a href="#">Next</a></li>
  </ul>
</div>
</form>
</body>
</html>

