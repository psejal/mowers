<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EmmasProject._Default" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title><%: Page.Title %>- My ASP.NET Application</title>

	<asp:PlaceHolder runat="server">
		<%: Scripts.Render("~/bundles/modernizr") %>
	</asp:PlaceHolder>
	<link rel="stylesheet" href="https://cdn.metroui.org.ua/v4/css/metro-all.min.css">


	<link href="StyleSheet.css" rel="stylesheet" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<webopt:BundleReference runat="server" Path="~/Content/css" />


	<style type="text/css">
		.auto-style1 {
			width: 84%;
			height: 110px;
		}

		.auto-style6 {
			width: 75px;
			height: 42px;
		}

		.auto-style10 {
			width: 75px;
			height: 44px;
		}

		.auto-style21 {
			width: 75px;
			height: 46px;
		}
	</style>
	<style>
		#myDIV {
			width: 300px;
			border-radius: 4px;
			height: 100px;
			background: red;
			-webkit-animation: mymove 5s infinite; /* Chrome, Safari, Opera */
			animation: mymove 5s infinite;
		}

		/* Chrome, Safari, Opera */
		@-webkit-keyframes mymove {
			from {
				background-color: yellow;
			}

			to {
				background-color: red;
			}
		}

		/* Standard syntax */
		@keyframes mymove {
			from {
				background-color: yellow;
			}

			to {
				background-color: red;
			}
		}

		.auto-style1 {
			width: 370px;
			height: 208px;
		}

		.auto-style35 {
			left: 60px;
			top: 0px;
			width: 91%;
			height: 129px;
			margin-left: 74;
		}

		.auto-style39 {
			left: 2px;
			top: 0px;
		}
	</style>
	<style>
		.want {
			color: white;
		}

		.auto-style46 {
			width: 7px;
			height: 42px;
		}

		.auto-style47 {
			width: 7px;
			height: 46px;
		}

		.auto-style48 {
			width: 7px;
			height: 44px;
		}

		.auto-style55 {
			width: 1px;
			height: 42px;
		}

		.auto-style56 {
			width: 1px;
			height: 46px;
		}

		.auto-style57 {
			width: 1px;
			height: 44px;
		}

		.auto-style58 {
			width: 99%;
			height: 208px;
			margin-left: 232px;
		}

		.auto-style59 {
			left: -1px;
			top: 0px;
		}

		.auto-style60 {
			width: 25px;
			height: 42px;
		}

		.auto-style61 {
			width: 25px;
			height: 46px;
		}

		.auto-style62 {
			width: 25px;
			height: 44px;
		}

		.auto-style63 {
			width: 10px;
			height: 42px;
		}

		.auto-style64 {
			width: 10px;
			height: 46px;
		}

		.auto-style65 {
			width: 10px;
			height: 44px;
		}
	</style>
</head>
<body>
	<div>
		<form runat="server">
			<div class="navbar navbar-inverse navbar-fixed-top">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<a class="navbar-brand" runat="server" style="color: white;" href="~/">Doc Manager</a>
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
						<ul class="nav navbar-nav">
							<li><span class="glyphicon glyphicon-user" style="color: white;"></span>&nbsp;</li>
							<%--<li> <asp:Label ID="lblWelcome" ForeColor="White" runat="server" Text="Welcome" ></asp:Label></li> --%>
							<li>
								<div class="want"><%=Request.QueryString["User"]%></div>
							</li>
						</ul>

						&nbsp;&nbsp;   &nbsp;&nbsp;   &nbsp;&nbsp; 
                          <asp:LinkButton ID="lbLogout" runat="server" ForeColor="White" OnClick="lbLogout_Click"><span class="glyphicon glyphicon-log-out"  style="color:white;"></span>Logout</asp:LinkButton>
					</asp:Panel>
						</ul>



					</div>
				</div>
			</div>
			<div>
			</div>

			<div>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <%--<asp:Panel ID="pnlContent" align="right" runat="server">
            <span class="glyphicon glyphicon-user"></span>
            <asp:Label ID="lblWelcome" runat="server" Text="Welcome"></asp:Label><%=Request.QueryString["User"] %>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="lbLogout" runat="server" OnClick="lbLogout_Click">Logout</asp:LinkButton>
        </asp:Panel>--%>
			</div>


			<br />
			&nbsp;&nbsp;
        <asp:Panel ID="Panel8" runat="server" CssClass="auto-style35" Font-Bold="True" Font-Size="70px" Font-Strikeout="False">
			<div id="myDIV" class="auto-style1" style="width: 100%; padding: 15px; margin: 0 45px 0 45px;">
				<div class="container">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblWel" ForeColor="White" runat="server" Text="Welcome to Doc Manager!"></asp:Label>
				</div>
			</div>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</asp:Panel>
			<br />



			<div class="container">

				<div id="myCarousel" class="carousel slide" data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
					</ol>

					<!-- Wrapper for slides -->
					<div class="carousel-inner">

						<div class="item active">
							<img src="img/mower.jpg" style="width: 100%;">
							<div class="carousel-caption">
							</div>
						</div>

						<div class="item">
							<img src="img/clear.jpg" style="width: 100%;">
							<div class="carousel-caption">
							</div>
						</div>

						<div class="item">
							<img src="img/girl.jpg" style="width: 100%;">
							<div class="carousel-caption">
							</div>
						</div>

					</div>

					<!-- Left and right controls -->
					<a class="left carousel-control" href="#myCarousel" data-slide="prev">
						<span class="glyphicon glyphicon-chevron-left"></span>
						<span class="sr-only">Previous</span>
					</a>
					<a class="right carousel-control" href="#myCarousel" data-slide="next">
						<span class="glyphicon glyphicon-chevron-right"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>
			</div>

			<br />
			<br />
			<table class="auto-style58" style="padding-left: 10px; margin-right: 45px; margin-top: 0; margin-left: 21%; width: 60%; margin-bottom: 0;">
				<tr>
					<td class="auto-style60">
						<asp:Panel ID="Panel2" runat="server" CssClass="auto-style39">
							<a runat="server" href="~/Notifications.aspx"
								data-role="tile" data-size="wide" class="bg-indigo">
								<span class="mif-mail icon"></span>
								<span class="branding-bar" style="font-size: 15px;">Emails</span>
							</a>
						</asp:Panel>
					</td>
					<td class="auto-style46">&nbsp;</td>
					<td class="auto-style63">
						<asp:Panel ID="Panel3" runat="server">
							<div>
								<a runat="server" href="~/Reports.aspx" data-size="wide" data-role="tile" class="bg-orange">
									<span class="mif-chart-line icon"></span>
									<span class="branding-bar" style="font-size: 15px;">Reports</span>
								</a>
							</div>
						</asp:Panel>
					</td>
					<td class="auto-style55">&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;</td>
					<td class="auto-style6">
						<asp:Panel ID="Panel4" runat="server">
							<div>
								<a runat="server" href="~/Customer" data-size="wide" data-role="tile" class="bg-teal">
									<span class="mif-user-plus icon"></span>
									<span class="branding-bar" style="font-size: 15px;">Customers</span>
								</a>
							</div>
						</asp:Panel>
					</td>
				</tr>
				<tr>
					<td class="auto-style61">
						<asp:Panel ID="Panel5" runat="server">
							<div>
								<a runat="server" href="~/LiveChat" data-size="wide" data-role="tile" class="bg-red">
									<span class="mif-chat icon"></span>
									<span class="branding-bar" style="font-size: 15px;">Live Chat</span>
								</a>
							</div>
						</asp:Panel>
					</td>
					<td class="auto-style47">&nbsp;</td>
					<td class="auto-style64">
						<asp:Panel ID="Panel6" runat="server">
							<div>
								<a runat="server" href="~/Task.aspx" data-size="wide" data-role="tile" class="bg-cyan">
									<span class="mif-clipboard icon"></span>
									<span class="branding-bar" style="font-size: 15px;">Tasks</span>
								</a>
							</div>
						</asp:Panel>
					</td>
					<td class="auto-style56">&nbsp;</td>
					<td class="auto-style21">
						<asp:Panel ID="Panel7" runat="server" CssClass="auto-style59">
							<div>
								<a runat="server" href="~/Employee" data-size="wide" data-role="tile" class="bg-indigo">
									<span class="mif-users icon"></span>
									<span class="branding-bar" style="font-size: 15px;">Employee</span>
								</a>
							</div>
						</asp:Panel>
					</td>
				</tr>
				<tr>
					<td class="auto-style62"></td>
					<td class="auto-style48">&nbsp;</td>
					<td class="auto-style65"></td>
					<td class="auto-style57">&nbsp;</td>
					<td class="auto-style10"></td>
				</tr>
			</table>



			<br />
			<br />
			<div>





				<div>


					<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
					<script src="https://cdn.metroui.org.ua/v4/js/metro.min.js"></script>

				</div>

			</div>
		</form>
	</div>
</body>
</html>

<%--</asp:Content>--%>
