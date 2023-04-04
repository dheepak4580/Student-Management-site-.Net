<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddStudentDetails.aspx.cs" Inherits="Mini_Project.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <div>
            <br />
            <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox><br />
            <asp:Label ID="lblPhone" runat="server" Text="Phone"></asp:Label>
            <asp:TextBox ID="txtPhone" runat="server" TextMode="Phone"></asp:TextBox></br>
            <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
            <asp:DropDownList ID="ddlCity" runat="server"></asp:DropDownList></br>
            <asp:Label ID="lblCourse" runat="server" Text="Course"></asp:Label>
            <asp:DropDownList ID="ddlCourse" runat="server"></asp:DropDownList></br>
            <%--<asp:RequiredFieldValidator ID="rqrEmail" runat="server"
                ErrorMessage="TextBox cannot be empty" ControlToValidate="txtEmail"
                ForeColor="Blue" Display="Dynamic"></asp:RequiredFieldValidator><br />--%>
            <%--<asp:RegularExpressionValidator ID="regexName" runat="server" ControlToValidate="tx"
                                            ErrorMessage="Enter name with first Letter Caps" 
                                            Display="Dynamic"></asp:RegularExpressionValidator> --%>
            
           <%-- Age: <asp:TextBox ID="txtAge" runat="server" 
                               TextMode="Number"></asp:TextBox>
            <asp:RangeValidator ID="ageVldtr" runat="server" ForeColor="Red"  ControlToValidate="txtAge" 
                                ErrorMessage="Age should be between 18 to 40" MaximumValue="40" MinimumValue="18"
                                Type="Integer"> </asp:RangeValidator>--%>            
            <asp:Button ID="btnsub" runat="server" Text="Submit" OnClick="Submit"/>
            <asp:ValidationSummary ID="valSummary" runat="server" />
        </div>
    
</asp:Content>
