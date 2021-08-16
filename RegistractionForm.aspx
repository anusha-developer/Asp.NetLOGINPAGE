  <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistractionForm.aspx.cs" Inherits="AspnetLoginpage.RegistractionForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
    </title>
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
        .auto-style2 {
            height: 30px;
        }
    </style>
</head>
<body>
    <h2>RegistrationForm</h2>
    <div class="container">

    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label1" runat="server" Text="FirstName"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtFirstName" runat="server" MaxLength="20" ></asp:TextBox>
                       
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtFirstName" ErrorMessage="Please Enter Only characters" ForeColor="Red" ValidationExpression="[a-zA-Z]+"></asp:RegularExpressionValidator>
                       
                       
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="LastName"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtLastName" runat="server" MaxLength="20"></asp:TextBox>
                       

                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtLastName" ErrorMessage="Please Enter Only Characters" ForeColor="Red" ValidationExpression="[a-zA-Z]+"></asp:RegularExpressionValidator>
                       

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"  TextMode="Email"></asp:TextBox>

                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid Email Address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                    </td>
                </tr>
                <tr>
                    <td>
                     <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td>
                     <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                  
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtPassword" ErrorMessage="Please Enter valid password" ForeColor="Red" ValidationExpression="(?=^.{8,10}$)(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&amp;*()_+}{&quot;:;'?/&gt;.&lt;,])(?!.*\s).*$"></asp:RegularExpressionValidator>
                  
                   </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="MobileNumber"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtMobileNumber" runat="server" MaxLength="10" ></asp:TextBox>
                       
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtMobileNumber" ErrorMessage="Please  Enter only Numbers" ForeColor="Red" ValidationExpression="^([7-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator>
                       
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label7" runat="server" Text="DateOfBirth" ></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtDateOfBirth" runat="server"  TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDateOfBirth" ErrorMessage="Enter the DateofBirth" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label10" runat="server" Text="Select Your Role"></asp:Label>
                    </td>
                    <td>
                        <asp:CheckBox ID="CheckBox1" runat="server" Text="Developer" />
                        <asp:CheckBox ID="CheckBox2" runat="server" Text="Tester" />
                        <asp:CheckBox ID="CheckBox3" runat="server" Text="Supporter" />

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="Gender"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButton ID="Male" runat="server"  Text="Male" GroupName="Gender" />
                        <asp:RadioButton ID="Female" runat="server" Text="Female" GroupName="Gender" />
                    </td>
                </tr>
                <tr>
                    <td>
                       <asp:Label ID="Label9" runat="server" Text="Select Cources"></asp:Label>

                    </td>
                    <td>
                        <asp:DropDownList ID="ddlCourses" runat="server">
                            <asp:ListItem Text="DotNet" Value="DoNet"></asp:ListItem>
                            <asp:ListItem Text="Angular" Value="Angular"></asp:ListItem>
                            <asp:ListItem Text="Sql" Value="Sql"></asp:ListItem>
                            <asp:ListItem Text="Python" Value="Python"></asp:ListItem>
                            
                        </asp:DropDownList>

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Address" ></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtAddress" runat="server"  TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAddress" ErrorMessage="Please Enter Address" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                    <td>
            
                     </td>
                    <td>
                        <asp:Button ID="BtnSave" runat="server" Text="Save" BackColor="SteelBlue" OnClick="BtnSave_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblSuccessMessage" runat="server" Text="" ForeColor="Green"></asp:Label>
                    </td>
                </tr>

            </table>
        </div>
    </form>
   </div>
</body>
</html>
