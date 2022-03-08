<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EmmasProject.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet"/>
	<style>
		html {
			background: url("img/login.jpg") no-repeat center fixed;
			background-size: cover;
		}
	</style>
</head>
<body class="login" >
    <form id="form1" runat="server" style="margin-left:10%">
		
		
		<br />
		<br />
        <div>
            <fieldset>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Login</h1> </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="lblUserName" runat="server" Text="Username*"></asp:Label>
            &nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtUsername"  runat="server"  PlaceHolder="Username" Height="29px" Width="220px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblPassword" runat="server" Text="Password*"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtPassword"  runat="server"  PlaceHolder="Password"  Width="215px" Height="32px" TextMode="Password"></asp:TextBox>
                &nbsp;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblMessage" runat="server" Font-Size="15px"></asp:Label>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnLogin"  runat="server" class="button" OnClick="btnLogin_Click" Text="Login" Width="215px" />
&nbsp;&nbsp;&nbsp; &nbsp;
            <br />
            
               
                </fieldset>
            Don't have an account?
            <asp:LinkButton ID="lbRegister" runat="server" OnClick="lbLogin_Click">Register now</asp:LinkButton>
        </div>
    </form>
</body>
</html>
