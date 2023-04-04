<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Mini_Project.WebForm1" %>

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
            <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" Text="*"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rqrEmail" runat="server"
                ErrorMessage="TextBox cannot be empty" ControlToValidate="txtEmail"
                ForeColor="Blue" Display="Dynamic"></asp:RequiredFieldValidator><br />
            <%--<asp:RegularExpressionValidator ID="regexName" runat="server" ControlToValidate="tx"
                                            ErrorMessage="Enter name with first Letter Caps" 
                                            Display="Dynamic"></asp:RegularExpressionValidator> --%>
            
           <%-- Age: <asp:TextBox ID="txtAge" runat="server" 
                               TextMode="Number"></asp:TextBox>
            <asp:RangeValidator ID="ageVldtr" runat="server" ForeColor="Red"  ControlToValidate="txtAge" 
                                ErrorMessage="Age should be between 18 to 40" MaximumValue="40" MinimumValue="18"
                                Type="Integer"> </asp:RangeValidator>--%>
            Password :<asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
            Confirm Password :<asp:TextBox ID="txtConfirmPass" runat="server" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CompPass" runat="server" ErrorMessage="Password does not match" ForeColor="Red"
            ControlToValidate="txtPass" ControlToCompare="txtConfirmPass" ></asp:CompareValidator>
            <asp:TextBox ID="txtPhone" runat="server" TextMode="Phone"></asp:TextBox>
            <asp:Button ID="btnsub" runat="server" Text="Submit" OnClick="Submit"/>
            <asp:ValidationSummary ID="valSummary" runat="server" />
        </div>
    </form>
</body>
</html>
