<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowTrackerLoginDefault.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome to Show Tracker Client Assignment</title>
   <link rel="stylesheet" href="css/StyleSheet.css" />
</head>
<body class="animateme">
    <form id="form1" runat="server">
    <div>
        <h1>Show Tracker Fan Login</h1>
        <p>Log in below to find shows</p>

        <table>
            <tr>
                <td>User name</td>
                <td>
                    <asp:TextBox ID="Username" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="UserNameRequired" ControlToValidate="UserName" runat="server" ErrorMessage="Enter your user name" Display="None"></asp:RequiredFieldValidator>
        
                </td>
            </tr>
            <tr>
                <td>Password</td>
                <td>
                    <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator ID="PasswordRequired" ControlToValidate="Password" runat="server" ErrorMessage="Enter your password" Display="None"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="LoginButton" runat="server" Text="Login" OnClick="LoginButton_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="ErrorLabel" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
        <asp:LinkButton ID="lbRegister" runat="server" PostBackUrl="~/fanregister.aspx" CausesValidation="false">Register</asp:LinkButton>
        
        
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="noborder" />
    </div>
    </form>
</body>
</html>
