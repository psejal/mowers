<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="EmmasProject.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" />
	<style>
		html {
			background: url("img/login.jpg") no-repeat center fixed;
			background-size: cover;
		}
	</style>
</head>
	
<body class="login">
    <form id="form1" runat="server" style="margin-left:10%" >
		
	
		<br />
		<br />
        <div>
            <fieldset>
                <strong>
                    <h1>&nbsp;&nbsp;&nbsp;&nbsp; Register Here</h1>
                </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong> Create a new account</strong>.<br />
                <br />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblUserName" runat="server" Text="Username"></asp:Label>

                <br />

                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtUsername" PlaceHolder="Username" runat="server" Height="16px" Width="250px"></asp:TextBox>

                <br />

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username Required" Font-Size="15px" ForeColor="White"></asp:RequiredFieldValidator>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>

                <br />

                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtPassword" runat="server" PlaceHolder="Password" Width="250px" Height="16px" TextMode="Password"></asp:TextBox>


                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password Required " ForeColor="White" Font-Size="15px"></asp:RequiredFieldValidator>
                <br />



                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm password"></asp:Label>

                <br />

                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtConfirmPassword" runat="server" PlaceHolder="Confirm Password" Width="250px" Height="16px" TextMode="Password"></asp:TextBox>


                <br />

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="Password doesn't match" ForeColor="White" Display="Dynamic" Font-Size="15px"></asp:CompareValidator>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="Confirm Password" ForeColor="White" Font-Size="15px"></asp:RequiredFieldValidator>
                <br />



                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Button ID="btnRegister" runat="server" class="button" Text="Register" Width="246px" OnClick="btnRegister_Click" />
                <br />
                <br />
                <asp:Label ID="lblMessage" runat="server" ForeColor="White" Font-Size="18px"></asp:Label>
                <br />

            </fieldset>
            if you already have an account.
            <a runat="server"  href="~/Login">Login here</a>
        </div>
    </form>


</body>
</html>
