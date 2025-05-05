<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Regstep2.aspx.cs"  Async="true" Inherits="RegistrationForm.Regstep2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            margin: 0;
            padding: 0;
        }

        .form-container {
            font-size: 20px;
            max-width: 800px;
            margin: 50px auto;
            border-radius: 6px;
            padding: 20px 30px;
            color: #333;
        }

        h1 {
            text-align: center;
            align-content: center;
            margin-bottom: 20px;
            border: 1px;
            padding-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

            table td {
                padding: 10px;
                vertical-align: top;
            }

                table td:nth-child(1) {
                    width: 25%;
                    font-weight: bold;
                    color: #555;
                }

                table td:nth-child(2) {
                    width: 50%;
                }

                table td:nth-child(3) {
                    color: red;
                    font-size: 14px;
                    border: none;
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
            margin-top: 1px;
        }

            input[type="text"]:focus,
            input[type="email"]:focus,
            input[type="button"]:focus,
            input[type="date"]:focus,
            input[type="number"]:focus,
            select:focus {
                border-color: #007bff;
                outline: none;
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
            width: 80%;
        }

            button:hover,
            input[type="submit"]:hover,
            input[type="button"]:hover {
                background-color: #0056b3;
            }

        .nav {
            text-align: center;
            align-content: center;
            align-items: center;
            background-color: gray;
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
        .auto-style1 {
            width: 610px;
        }
        .auto-style2 {
            width: 470px;
        }
        .log{
            margin-top:0px;
            margin-left:1500px;
        }
    </style>
</head>
     <script>
    document.addEventListener("DOMContentLoaded", function () {
        document.querySelectorAll(".percentage-input").forEach(function (input) {
            input.addEventListener("input", function () {
                this.value = this.value.replace(/\D/g, '').slice(0, 2);
            });
        });
    });
</script>

    <script type="text/javascript">
    function validateText(input) {
        input.value = input.value.replace(/[^a-zA-Z ]/g, '');
    }
</script>

 

<body>
    <a href="Login_Form.aspx" class="log" >Logout</a>
    <h1 style="margin-left: 0;">
        AppLication Number <asp:Label ID="label101" runat="server"></asp:Label>
        </h1>
   <%--<h3> <asp:Label ID="label0" runat="server"></asp:Label></h3>--%>
     <h3> <asp:Label ID="label00" runat="server" Visible="false"></asp:Label></h3>
    <form id="form1" runat="server">

        <div class="form-container">
            <h1>Registration form</h1>
            <table>


                <tr>

                    <td class="auto-style2">
                        <asp:Label ID="label1" runat="server" Text="Name" TextMode="Text"></asp:Label></td>
                    <td class="auto-style1">
                        <asp:TextBox ID="Textbox1" runat="server"></asp:TextBox><br />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Textbox1" Display="Dynamic" ErrorMessage="Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ForeColor="Red" Display="Dynamic" ValidationExpression="^[A-Za-z\s]+$" ControlToValidate="Textbox1" ErrorMessage="only characters allowed"></asp:RegularExpressionValidator></td>

                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="label5" runat="server" Text="Mobile Number"></asp:Label></td>
                    <td class="auto-style1">
                        <asp:TextBox ID="Textbox5" runat="server" TextMode="Number" MaxLength="10" oninput="restrictToTenDigits(this)"></asp:TextBox><br />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Textbox5" Display="Dynamic" ErrorMessage="Mobile Number Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ForeColor="Red" Display="Dynamic" ValidationExpression="^[6-9]\d{9}$" ControlToValidate="Textbox5" ErrorMessage="Must start with 6 or 7 or 8 or 9 and only ten numbers"></asp:RegularExpressionValidator></td>

                </tr>
                <tr>

                    <td class="auto-style2">
                        <asp:Label ID="label6" runat="server" Text="Email"></asp:Label></td>
                    <td class="auto-style1">
                        <asp:TextBox ID="Textbox6" runat="server" TextMode="Email"></asp:TextBox><br />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Textbox6" Display="Dynamic" ErrorMessage="Email Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ForeColor="Red" Display="Dynamic" ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" ControlToValidate="Textbox6" ErrorMessage="Email must be in correct format "></asp:RegularExpressionValidator></td>
                </tr>

                <tr>
                    <td colspan="3" style="background-color: gray; text-align: center; font-weight: bold; font-size: 18px; color: white;">10th Details
    </td>
                </tr>

                <tr>

                    <td class="auto-style2">
                        <asp:Label runat="server" ID="Label21" Text="Board Name"></asp:Label>
                        <asp:TextBox runat="server" ID="TextBox21" MaxLength="25" required onkeyup="validateText(this)"></asp:TextBox></td>

                    <td class="auto-style1">
                        <asp:Label runat="server" ID="label22" Text="School Name"></asp:Label>
                        <asp:TextBox runat="server" ID="TextBox22" MaxLength="25" required onkeyup="validateText(this)"></asp:TextBox>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label runat="server" ID="label23" Text="Percentage" ></asp:Label>
                        <asp:TextBox runat="server" ID="TextBox23" CssClass="percentage-input" TextMode="Number" MaxLength="2" required></asp:TextBox></td>

                    <td class="auto-style1">
                        <asp:Label runat="server" ID="label24" ForeColor="Black">Year of passing</asp:Label>
                        <asp:DropDownList runat="server" ID="DropDownList11" DataTextField="      ">
                        </asp:DropDownList>
                        <br />
                        <br />
                    </td>


                </tr>





                <tr>
                    <td colspan="3" style="background-color: gray; text-align: center; font-weight: bold; font-size: 18px; color: white;">12th Details
    </td>
                </tr>

                <tr>

                    <td class="auto-style2">
                        <asp:Label runat="server" ID="Label2" Text="Board Name"></asp:Label>
                        <asp:TextBox runat="server" ID="TextBox24" required onkeyup="validateText(this)"></asp:TextBox></td>
                        

                    <td class="auto-style1">
                        <asp:Label runat="server" ID="label3" Text="School Name"></asp:Label>
                        <asp:TextBox runat="server" ID="TextBox25" required onkeyup="validateText(this)"></asp:TextBox>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label runat="server" ID="label4" Text="Percentage"></asp:Label>
                        <asp:TextBox runat="server" ID="TextBox26" CssClass="percentage-input" TextMode="Number" MaxLength="2" required></asp:TextBox></td>

                    <td class="auto-style1">
                        <asp:Label runat="server" ID="label7" ForeColor="Black">Year of passing</asp:Label>
                        <asp:DropDownList runat="server" ID="DropDownList12" DataTextField="      ">
                        </asp:DropDownList>
                        <br />
                        <br />
                    </td>


                </tr>


                <tr>
                    <td colspan="3" style="background-color: gray; text-align: center; font-weight: bold; font-size: 18px; color: white;">Other Qualification Details
    </td>
                </tr>

                <tr>

                    <td class="auto-style2">
                        <asp:Label runat="server" ID="Label8" Text="Board Name"></asp:Label>
                        <asp:TextBox runat="server" ID="TextBox27"></asp:TextBox></td>

                    <td class="auto-style1">
                        <asp:Label runat="server" ID="label9" Text="School Name"></asp:Label>
                        <asp:TextBox runat="server" ID="TextBox28"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label runat="server" ID="label10" Text="Percentage"></asp:Label>
                        <asp:TextBox runat="server"  CssClass="percentage-input" ID="TextBox29"></asp:TextBox></td>

                    <td class="auto-style1">
                        <asp:Label runat="server" ID="label11" ForeColor="Black">Year of passing</asp:Label>
                        <asp:DropDownList runat="server" ID="DropDownList13" DataTextField="      ">
                        </asp:DropDownList></td>


                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Button ID="button1" runat="server" Text="Submit" OnClick="button1_Click1" /></td>
                </tr>

                 <tr>
                    <td class="auto-style2">
                        <asp:Button ID="button2" runat="server" Text="Edit" Visible="false"  OnClick="button2_Click"/>&nbsp; </td>
                     <td>
                         <asp:Button ID="button3" runat="server" Text="Confirm and Submit" Visible="false" OnClick="button3_Click" /></td>
                     
                   
               </tr>
            </table>
        </div>

    </form>
</body>
</html>
