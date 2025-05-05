<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Regstep1.aspx.cs" Inherits="RegistrationForm.WebForm2" Async="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            margin:0;
            padding:0;
        }
        .form-container
        {
            font-size:20px;
            max-width:800px;
            margin:50px auto;
            border-radius:6px;
            padding:20px 30px;
            color:#333;
        }
        h1{
            text-align:center;
            align-content:center;
            margin-bottom:20px;
            border:1px;
            padding-bottom:20px;
        }
        table{
           
            width:100%;
            border-collapse:collapse;
           
            text-align:center;
            border:1px solid;
        }

        table td {
             
    padding: 10px;
    vertical-align: middle;
}

table td:nth-child(1) {
    width: 25%;
    font-weight: bold;
    color: #555;
    text-align:center;
   padding-left: 50px;


}

table td:nth-child(2) {
    width: 50%;
    text-align:center;
    
}
table td:nth-child(3) {
    color: red;
    font-size: 14px;
    border: none;
    text-align: right;
    padding-right:0;
}

            table td:nth-child(3) {
                color: red;
                font-size: 14px;
                border:none;
            }
        input[type="text"],
input[type="email"],
input[type="date"],
input[type="number"],
textarea,
select {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 16px;
    background-color: #fdfdfd;
    box-sizing: border-box;
    margin-left: 60px;
    
}
        input[type="text"]:focus,
        input[type="email"]:focus,
        input[type="button"]:focus,
        input[type="date"]:focus,
        input[type="number"]:focus,
        select:focus{
            border-color:#007bff;
            outline:none;
        }
        input[type="checkbox"] {
    margin-right: 5px;
}

button,
input[type="submit"],
input[type="button"] {
    background-color: #007bff;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s;
    width:60%;
}
button:hover,
input[type="submit"]:hover,
input[type="button"]:hover {
    background-color: #0056b3;
}
.nav
{
    text-align:center;
    align-content:center;
    align-items:center;
    background-color:lawngreen;
}

button:focus,
input[type="submit"]:focus,
input[type="button"]:focus {
    outline: none;
}
.error {
    color: red;
    font-size: 14px;
    margin-top: 5px;
}
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePartialRendering="true"></asp:ScriptManager>
         <asp:UpdatePanel ID="updatePanel1" runat="server" UpdateMode="Conditional" >
             <ContentTemplate>
    
        <h1>Registration form</h1>
                 <script>
    document.addEventListener("DOMContentLoaded", function () {
        document.getElementById("Textbox5").addEventListener("input", function () {
            this.value = this.value.replace(/\D/g, ''); 
            if (this.value.length > 10) {
                this.value = this.value.slice(0, 10); 
            }
        });
    });
</script>
    <script>
    document.addEventListener("DOMContentLoaded", function () {
        document.querySelectorAll(".pincode-input").forEach(function (input) {
            input.addEventListener("input", function () {
                this.value = this.value.replace(/\D/g, '').slice(0, 6);
            });
        });
    });
</script>
    <table >
        
            
        <tr>

            <td ><asp:Label ID="label1"  runat="server" Text="Name" TextMode="Text"></asp:Label></td>
            <td><asp:TextBox ID="Textbox1" runat="server" MaxLength="25"></asp:TextBox><br /></td>
            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Textbox1" Display="Dynamic" ErrorMessage="Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ForeColor="Red" Display="Dynamic"  ValidationExpression="^[A-Za-z\s]+$" ControlToValidate="Textbox1" ErrorMessage="only characters allowed"></asp:RegularExpressionValidator></td>
       
             </tr>
        <tr>
            <td><asp:Label ID="label2" runat="server" Text="Father Name"></asp:Label></td>
            <td><asp:TextBox ID="Textbox2" runat="server" MaxLength="25"></asp:TextBox><br /></td>
            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Textbox2" Display="Dynamic" ErrorMessage="FatherName Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ForeColor="Red" Display="Dynamic"  ValidationExpression="^[A-Za-z\s]+$" ControlToValidate="Textbox2" ErrorMessage="only characters allowed"></asp:RegularExpressionValidator></td>

        </tr>
         <tr>
            <td><asp:Label ID="label3" runat="server" Text=" Mother Name"></asp:Label></td>
            <td><asp:TextBox ID="Textbox3" runat="server"></asp:TextBox><br /></td>
             <td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Textbox3" Display="Dynamic" ErrorMessage="MotherName Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ForeColor="Red" Display="Dynamic"  ValidationExpression="^[A-Za-z\s]+$" ControlToValidate="Textbox3" ErrorMessage="only characters allowed"></asp:RegularExpressionValidator></td>
        </tr>
         <tr>
            <td><asp:Label ID="label4" runat="server" Text="AGE"></asp:Label></td>
            <td> <asp:TextBox ID="Textbox4" runat="server" TextMode="Date"></asp:TextBox><br /></td>
             <td><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Textbox4" Display="Dynamic" ErrorMessage="DOB Required" ForeColor="Red"></asp:RequiredFieldValidator></td>

        </tr>
         <tr>
            <td><asp:Label ID="label5" runat="server" Text="Mobile Number"></asp:Label></td>
            <td><asp:TextBox ID="Textbox5" runat="server" TextMode="Number" MaxLength="10" ></asp:TextBox><br /></td>
             <td><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Textbox5" Display="Dynamic" ErrorMessage="Mobile Number Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ForeColor="Red" Display="Dynamic"  ValidationExpression="^[6-9]\d{9}$" ControlToValidate="Textbox5" ErrorMessage="Must start with 6 or 7 or 8 or 9 and only ten numbers"></asp:RegularExpressionValidator></td>

        </tr>
         <tr>
            
            <td><asp:Label ID="label6" runat="server" Text="Email"></asp:Label></td>
             <td><asp:TextBox ID="Textbox6" runat="server" TextMode="Email"></asp:TextBox><br /></td>
             <td><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Textbox6" Display="Dynamic" ErrorMessage="Email Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ForeColor="Red" Display="Dynamic"  ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" ControlToValidate="Textbox6" ErrorMessage="Email must be in correct format "></asp:RegularExpressionValidator></td>
        </tr>
       

         <tr>
            <td><asp:Label ID="label7" runat="server" Text="Address 1"></asp:Label></td>
            <td><asp:TextBox ID="Textbox7" runat="server"></asp:TextBox><br /></td>
             <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Textbox7" Display="Dynamic" ErrorMessage="Address Required" ForeColor="Red"></asp:RequiredFieldValidator></td>
        </tr>
            
         <tr>
            <td> <asp:Label ID="label8" runat="server" Text="Address 2"></asp:Label></td>
            <td> <asp:TextBox ID="Textbox8" runat="server"></asp:TextBox><br /></td>
             <td><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="Textbox8" Display="Dynamic" ErrorMessage="Address Required" ForeColor="Red"></asp:RequiredFieldValidator></td>
        </tr>
         
         <tr>
            <td><asp:Label ID="label9" runat="server" Text="State"></asp:Label></td>
            <td><asp:DropDownList ID="dropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="dropDownList1_SelectedIndexChanged"  ></asp:DropDownList></td>
             <td><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="dropDownList1" Display="Dynamic" ErrorMessage="State Required" ForeColor="Red"></asp:RequiredFieldValidator></td>
        </tr>
         <tr>
            <td><asp:Label ID="label10" runat="server" Text="District"></asp:Label></td>
            <td> <asp:DropDownList ID="dropDownList2" runat="server"  ></asp:DropDownList></td>
             <td><asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="dropDownList2" Display="Dynamic" ErrorMessage="District Required" ForeColor="Red"></asp:RequiredFieldValidator></td>
        </tr>
                
         <tr>
            <td><asp:Label ID="label11" runat="server" Text="Pin Code"></asp:Label></td>
            <td><asp:TextBox ID="Textbox9" runat="server" TextMode="Number" CssClass="pincode-input" MaxLength="6" ></asp:TextBox><br /></td>
             <td><asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="Textbox9" Display="Dynamic" ErrorMessage="PinCode Required" ForeColor="Red"></asp:RequiredFieldValidator></td>
        </tr>
         <tr class="nav">
           
            <td colspan="3" style="border:1px solid;" >Both same <asp:CheckBox ID="checkbox1" runat="server" AutoPostBack="true" OnCheckedChanged="checkbox1_CheckedChanged" /> 
</td>
        </tr>
         <tr>
            <td><asp:Label ID="label12" runat="server" Text="Address 1"></asp:Label></td>
            <td><asp:TextBox ID="Textbox10" runat="server"></asp:TextBox></td>
             <td><asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="Textbox10" Display="Dynamic" ErrorMessage="Address Required" ForeColor="Red"></asp:RequiredFieldValidator></td>
        </tr>
         <tr>
            <td><asp:Label ID="label13" runat="server" Text="Address 2"></asp:Label></td>
            <td> <asp:TextBox ID="Textbox11" runat="server"></asp:TextBox><br /></td>
             <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="Textbox11" Display="Dynamic" ErrorMessage="Address Required" ForeColor="Red"></asp:RequiredFieldValidator></td>
        </tr>
        
       
                <tr>
            <td><asp:Label ID="label14" runat="server" Text="State"></asp:Label></td>
            <td><asp:DropDownList ID="dropDownList3" runat="server" AutoPostBack="true" OnSelectedIndexChanged="dropDownList3_SelectedIndexChanged" ></asp:DropDownList></td>
             <td><asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="dropDownList3" Display="Dynamic" ErrorMessage="State Required" ForeColor="Red"></asp:RequiredFieldValidator></td>
        </tr>
         <tr>
            <td><asp:Label ID="label15" runat="server" Text="District"></asp:Label></td>
            <td><asp:DropDownList ID="dropDownList4" runat="server" ></asp:DropDownList></td>
             <td><asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="dropDownList4" Display="Dynamic" ErrorMessage="District Required" ForeColor="Red"></asp:RequiredFieldValidator></td>
        </tr>
           

         <tr>
            <td><asp:Label ID="label16" runat="server" Text="Pin Code"></asp:Label></td>
            <td><asp:TextBox ID="Textbox12" runat="server" TextMode="Number" MaxLength="6" CssClass="pincode-input" oninput="PinCode(this)"></asp:TextBox><br /></td>
             <td><asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server"  ControlToValidate="Textbox12" Display="Dynamic" ErrorMessage="PinCode Required" ForeColor="Red"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td colspan="3"><asp:Button ID="button1" runat="server" Text="Submit" OnClick="button1_Click"  /></td>
        </tr>
        <tr>
                    <td colspan="1"><asp:Button ID="button2" runat="server" Visible="false" Text="Edit" OnClick="button2_Click"  /></td>
             <td colspan="2"><asp:Button ID="button3" runat="server" visible="false" Text="confirm and submit" OnClick="button3_Click"  /></td>
                        </tr>

    </table>
    
                  </ContentTemplate>
             </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
