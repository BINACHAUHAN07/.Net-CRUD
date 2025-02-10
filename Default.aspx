<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div style="padding:50px"">
        <table class="nav-justified">
            <tr>
                <td style="width: 330px">
                    <asp:Label ID="Label1" runat="server" Font-Size="Medium" Text="Employee Id" Width="200px"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" Width="278px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEmployeeId" runat="server" ControlToValidate="TextBox1" ErrorMessage="Employee Id is required" ForeColor="Red" />

                </td>
            </tr>
            <tr>
                <td style="width: 330px">
                    <asp:Label ID="Label2" runat="server" Font-Size="Medium" Text="Name" Width="200px"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium" Width="278px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="TextBox2" ErrorMessage="Name is required" ForeColor="Red" />

                </td>
            </tr>
            <tr>
                <td style="width: 330px">
                    <asp:Label ID="Label3" runat="server" Font-Size="Medium" Text="City" Width="200px"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="23px" Width="194px">
                        <asp:ListItem>Ahemadabad</asp:ListItem>
                        <asp:ListItem>Mumbai</asp:ListItem>
                        <asp:ListItem>Rajkot</asp:ListItem>
                    </asp:DropDownList>
                    
                    <asp:RequiredFieldValidator ID="rfvCity" runat="server" ControlToValidate="DropDownList1" InitialValue="" ErrorMessage="City is required" ForeColor="Red" />

                </td>
            </tr>
            <tr>
                <td style="width: 330px">
                    <asp:Label ID="Label4" runat="server" Font-Size="Medium" Text="Email" Width="200px"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Font-Size="Medium" Width="278px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="TextBox3" ErrorMessage="Email is required" ForeColor="Red" />
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="TextBox3" ValidationExpression="^\w+([-+.’_]*\w+)*@(\w+\.)+[a-zA-Z]{2,7}$" ErrorMessage="Invalid Email format" ForeColor="Red" />
                </td>
            </tr>
            <tr>
                <td style="width: 330px">
                    <asp:Label ID="Label5" runat="server" Font-Size="Medium" Text="Phone" Width="200px"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Font-Size="Medium" Width="278px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="TextBox4" ErrorMessage="Phone is required" ForeColor="Red" />
                    <asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="TextBox4" ValidationExpression="^\d{10}$" ErrorMessage="Invalid phone number format (10 digits)" ForeColor="Red" />

                </td>
            </tr>
            <tr>
                <td style="width: 330px">
                    <asp:Label ID="Label6" runat="server" Font-Size="Medium" Text="Salary" Width="200px"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Font-Size="Medium" Width="278px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvSalary" runat="server" ControlToValidate="TextBox5" ErrorMessage="Salary is required" ForeColor="Red" />

                </td>
            </tr>
            <tr>
                <td style="width: 330px">
                    <asp:Label ID="Label7" runat="server" Font-Size="Medium" Text="Gender" Width="200px"></asp:Label>
                </td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="200px">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="rfvGender" runat="server" ControlToValidate="RadioButtonList1" InitialValue="" ErrorMessage="Gender is required" ForeColor="Red" />
                </td>
            </tr>
            <tr>
                <td style="width: 330px">
                    <asp:Label ID="Label8" runat="server" Font-Size="Medium" Text="Language" Width="200px"></asp:Label>
                </td>
                <td>
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>English</asp:ListItem>
                        <asp:ListItem>Hindi</asp:ListItem>
                        <asp:ListItem>Gujarati</asp:ListItem>
                    </asp:CheckBoxList>
                     
                </td>
            </tr>
            <tr>
                <td style="width: 330px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 330px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 330px">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" BackColor="Black" Font-Bold="True" Font-Italic="False" ForeColor="White" Height="45px" OnClick="Button1_Click" Text="Insert" Width="112px" />
                    <asp:Button ID="Button2" runat="server" BackColor="Black" Font-Bold="True" Font-Italic="False" ForeColor="White" Height="45px" OnClick="Button2_Click" Text="Update" Width="112px" />
                    <asp:Button ID="Button3" runat="server" BackColor="Black" Font-Bold="True" Font-Italic="False" ForeColor="White" Height="45px" OnClick="Button3_Click" Text="Delete" Width="112px" OnClientClick="return confirm('Are you sure you want to delete this record?');" />
                    <asp:Button ID="Button4" runat="server" BackColor="Black" Font-Bold="True" Font-Italic="False" ForeColor="White" Height="45px" OnClick="Button4_Click" Text="Show All Data" Width="112px" />
                    <asp:Button ID="Button5" runat="server" BackColor="Black" Font-Bold="True" Font-Italic="False" ForeColor="White" Height="45px" OnClick="Button5_Click" Text="Reset" Width="112px" />
                </td>
            </tr>
            <tr>
                <td style="width: 330px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 330px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 330px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" BackColor="White"  Width="958px">
                        <HeaderStyle BackColor="#666666" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
</div>

</asp:Content>
