<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fanregister.aspx.cs" Inherits="fanregister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Fan Registration</title>
    <link href="css/StyleSheet.css" rel="stylesheet" />
</head>
<body class="animateme">
    <form id="form1" runat="server">
    <div>
        <h1>Register</h1>
        <p>Enter your info below to create a Show Tracker Fan account</p>
        <table>
            <tr>
                <td>First Name</td>
                <td>
                    <asp:TextBox ID="FirstNameTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="FirstNameRequired" ControlToValidate="FirstNameTextBox" runat="server" ErrorMessage="First name is required" Display="None"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Last Name</td>
                <td>
                    <asp:TextBox ID="LastNameTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="LastNameRequired" ControlToValidate="LastNameTextBox" runat="server" ErrorMessage="Last name is required" Display="None"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Email</td>
                <td>
                    <asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="EmailRequired" ControlToValidate="EmailTextBox" runat="server" ErrorMessage="Email is required" Display="None"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="EmailRegularExpression" ControlToValidate="EmailTextBox" runat="server" ErrorMessage="Not a valid email" Display="None" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>User name</td>
                <td>
                    <asp:TextBox ID="UserNameTextBox" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="UserRequired" ControlToValidate="UserNameTextBox" runat="server" ErrorMessage="You must choose a user name" Display="None"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Password</td>
                <td>
                    <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="PassRequired" ControlToValidate="PasswordTextBox" runat="server" ErrorMessage="You must enter a password" Display="None"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Retype Password</td>
                <td>
                    <asp:TextBox ID="ConfirmPassWordTextBox" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ConfirmPassRequired" ControlToValidate="ConfirmPassWordTextBox" runat="server" ErrorMessage="Please retype your password" Display="None"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="ComparePasswords" ControlToValidate="ConfirmPassWordTextBox" ControlToCompare="PasswordTextBox" runat="server" ErrorMessage="Passwords do not match" Display="None"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="RegisterButton" runat="server" Text="Register" OnClick="RegisterButton_Click" />
                </td>
                <td>
                    <asp:Label ID="ErrorLabel" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
        <asp:LinkButton ID="lbLogIn" runat="server" CausesValidation="false" PostBackUrl="~/ShowTrackerLoginDefault.aspx">Log In</asp:LinkButton>
    
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="noborder" />
      </div>
    </form>
</body>
</html>
