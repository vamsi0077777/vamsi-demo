<%@ Page Language="C#"   AutoEventWireup="true" CodeBehind="PrintForm.aspx.cs" Inherits="RegistrationForm.PrintForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>


    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 20px;
            background-color: #f4f4f4;
        }
        .container {
            width: 700px;
            margin: auto;
            background: white;
            padding: 20px;
            border: 2px solid black;
        }
        .header {
            text-align: center;
            font-size: 22px;
            font-weight: bold;
            margin-bottom: 20px;
        }
        .photo {
            display: block;
            margin: 0 auto;
            width: 120px;
            height: 150px;
            border: 1px solid black;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }
        td {
            padding: 8px;
            border: 1px solid black;
        }
        .print-btn {
            text-align: center;
            margin-top: 20px;
        }
        .print-btn button {
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
        }
         .log{
            margin-top:0px;
            margin-left:1500px;
        }
    </style>
</head>
<body>
    <a href="Login_Form.aspx" class="log" >Logout</a>
    <form runat="server">
    <div class="container" id="printArea">
        <div class="header">Registration Form</div>

        <asp:Image ID="imgPhoto" runat="server" CssClass="photo" />

        <table>
            <tr><td><b>ApplicationNumber</b></td><td><asp:Label ID="Label1" runat="server"></asp:Label></td></tr>
            <tr><td><b>Name</b></td><td><asp:Label ID="lblName" runat="server"></asp:Label></td></tr>
            <tr><td><b>Father's Name</b></td><td><asp:Label ID="lblFather" runat="server"></asp:Label></td></tr>
            <tr><td><b>Mother's Name</b></td><td><asp:Label ID="lblMother" runat="server"></asp:Label></td></tr>
            <tr><td><b>Age</b></td><td><asp:Label ID="lblAge" runat="server"></asp:Label></td></tr>
            <tr><td><b>Email</b></td><td><asp:Label ID="lblEmail" runat="server"></asp:Label></td></tr>
            <tr><td><b>Mobile Number</b></td><td><asp:Label ID="lblPhone" runat="server"></asp:Label></td></tr>
        </table>

        <div class="header">Present Address</div>
        <table>
             <tr><td><b>Address</b></td><td><asp:Label ID="lblAddress" runat="server"></asp:Label></td></tr>
            <tr><td><b>State</b></td><td><asp:Label ID="lblPresentState" runat="server"></asp:Label></td></tr>
            <tr><td><b>District</b></td><td><asp:Label ID="lblPresentDistrict" runat="server"></asp:Label></td></tr>
            <tr><td><b>Pincode</b></td><td><asp:Label ID="lblPresentPincode" runat="server"></asp:Label></td></tr>
        </table>

        <div class="header">Permanent Address</div>
        <table>
            <tr><td><b>Address</b></td><td><asp:Label ID="lblAddress1" runat="server"></asp:Label></td></tr>
            <tr><td><b>State</b></td><td><asp:Label ID="lblPermanentState" runat="server"></asp:Label></td></tr>
            <tr><td><b>District</b></td><td><asp:Label ID="lblPermanentDistrict" runat="server"></asp:Label></td></tr>
            <tr><td><b>Pincode</b></td><td><asp:Label ID="lblPermanentPincode" runat="server"></asp:Label></td></tr>
        </table>

        <div class="header">Education Details</div>
        <table>
            <tr><td><b>Qualification</b></td><td><asp:Label ID="lblQualification" runat="server" Text="10 th"></asp:Label></td></tr>
            <tr><td><b>Percentage</b></td><td><asp:Label ID="lblPercentage" runat="server"></asp:Label></td></tr>


             <tr><td><b>Qualification</b></td><td><asp:Label ID="lblQualification1" runat="server" Text="12th"></asp:Label></td></tr>
            <tr><td><b>Percentage</b></td><td><asp:Label ID="lblPercentage1" runat="server"></asp:Label></td></tr>
        </table>

        <div class="header">Documents</div>
        <table>
            <tr><td><b>10th Certificate</b></td><td><asp:Label ID="lblDocument10th" runat="server" ForeColor="Green"></asp:Label></td></tr>
            <tr><td><b>12th Certificate</b></td><td><asp:Label ID="lblDocument12th" runat="server" ForeColor="Green"></asp:Label></td></tr>
        </table>

        <div class="print-btn">
            <button onclick="window.print()">Print Form</button>
        </div>
    </div>



    </form>
</body>
</html>
