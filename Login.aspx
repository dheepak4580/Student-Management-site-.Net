<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Mini_Project.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblUserName" runat="server" Text="UserName"></asp:Label>
            <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox><br />
            Password :<asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
            Confirm Password :<asp:TextBox ID="txtConfirmPass" runat="server" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CompPass" runat="server" ErrorMessage="Password does not match" ForeColor="Red"
            ControlToValidate="txtPass" ControlToCompare="txtConfirmPass" ></asp:CompareValidator>
            <asp:Button ID="btnSubmit" runat="server" Text="Login" OnClick="Submit" />
        </div>
    </form>
</body>
</html>
