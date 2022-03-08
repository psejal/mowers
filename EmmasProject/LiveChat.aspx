<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LiveChat.aspx.cs" Inherits="EmmasProject.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


 <style>
body {font-family: Arial, Helvetica, sans-serif;}
{box-sizing: border-box;}
.columns {
    float: left;
    width: 33.3%;
    padding: 8px;
}

.price {
    list-style-type: none;
    border: 1px solid #eee;
    margin: 0;
    padding: 0;
    -webkit-transition: 0.3s;
    transition: 0.3s;
}

.price:hover {
    box-shadow: 0 8px 12px 0 rgba(0,0,0,0.2)
}

.price .header {
    background-color: #111;
    color: white;
    font-size: 20px;
}

.price li {
    border-bottom: 1px solid #eee;
    padding: 20px;
    text-align: center;
}

.price .grey {
    background-color: #eee;
    font-size: 20px;
}

.button {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 10px 25px;
    text-align: center;
    text-decoration: none;
    font-size: 18px;
}

@media only screen and (max-width: 600px) {
    .columns {
        width: 100%;
    }
}
{box-sizing: border-box;}

/* Button used to open the chat form - fixed at the bottom of the page */
.open-button {
  background-color: #555;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  opacity: 0.8;
  position: fixed;
  bottom: 23px;
  right: 28px;
  width: 280px;
}

/* The popup chat - hidden by default */
.chat-popup {
  display: none;
  position: fixed;
  bottom: 0;
  right: 15px;
  border: 3px solid #f1f1f1;
  z-index: 9;
}

/* Add styles to the form container */
.form-container {
  max-width: 300px;
  padding: 10px;
  background-color: white;
}

/* Full-width textarea */
.form-container textarea {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
  resize: none;
  min-height: 200px;
}

/* When the textarea gets focus, do something */
.form-container textarea:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit/send button */
.form-container .btn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  margin-bottom:10px;
  opacity: 0.8;
}

/* Add a red background color to the cancel button */
.form-container .cancel {
  background-color: red;
}

/* Add some hover effects to buttons */
.form-container .btn:hover, .open-button:hover {
  opacity: 1;  
}
.zoom {transition: transform .2s;}
.zoom:hover {
    -ms-transform: scale(1.1); /* IE 9 */
    -webkit-transform: scale(1.1); /* Safari 3-8 */
    transform: scale(1.1); 
}
</style>

</head>
<body>
    <div class="jumbotron text-center">
     <form id="form1" runat="server">
<h2 style="text-align:center">24/7 Live Chat Sales & Support Agents for your Application</h2>
<p style="text-align:center">Why to Choose Live Chat Service</p>
         </div>
<div class="zoom" >
<div class="columns">
  <ul class="price">
    <li class="header">We’re Not Robots</li>
    <li class="grey">We’re not robots who pretend to find the right answer. We’re real humans, experts at building a personal connection with your visitors and capturing leads.</li>
  </ul>
</div>
</div>

<div class="zoom" >
<div class="columns">
  <ul class="price">
    <li class="header" >More Leads = More Sales</li>
    <li class="grey">We’re up to 50x cheaper than hiring a full-time employee to manage your live chat. And you get access to our entire team of live chat agents and experts!</li>

  </ul>
</div>
</div>

<div class="zoom" >
<div class="columns">
  <ul class="price">
    <li class="header">Cost Effective</li>
    <li class="grey">Your dedicated account manager will work hand-in-hand to continually optimize your live chat service approach for the best results.</li>
 
 
  </ul>
</div>
</div>

    <div>

    </div>
<button class="open-button" onclick="openForm()">Chat</button>

<div style="display: none;
  position: fixed;
  bottom: 0;
  right: 15px;
  border: 3px solid #f1f1f1;
  z-index: 9;" id="myForm">
  <form action="/action_page.php" class="form-container" >
    <h1 style="color:gray; background-color:black;">Chat</h1>

    <label for="msg"><b>Message</b></label>
    <textarea placeholder="Type message.." style="  width: 100%;
  padding: 10px;
  margin: 5px 0 10px 0;
  border: none;
  background: white;
  resize:none;
  min-height: 300px;" name="msg" required></textarea></br>

    <button type="submit" style=" background-color: red;
         color: white;
         padding: 10px 200px;
         text-align: center;
         text-decoration: none;
         display: inline-block;
         margin: 6px 2px;
        
         cursor: pointer;
         border-radius: 10px;"  class="btn btn-success">Send</button>
      </br>
    <button type="button" style=" background-color: #4CAF50;
         color: white;
         padding: 10px 200px;
         text-align: center;
         text-decoration: none;
         display: inline-block;
         margin: 6px 2px;
         cursor: pointer;
         border-radius: 10px;" onclick="closeForm()">Close</button>

<script>
function openForm() {
    document.getElementById("myForm").style.display = "block";
}

function closeForm() {
    document.getElementById("myForm").style.display = "none";
}
</script>
</form>
    </form>
</body>
</html>

