<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style40
    {
        width: 102%;
            height: 483px;
        }
    .style42
    {
        width: 158px;
        text-align: right;
        height: 32px;
    }
    .style43
    {
        height: 32px;
            width: 502px;
        }
        .style46
        {
            width: 158px;
            text-align: right;
            height: 42px;
        }
        .style47
        {
            height: 42px;
            width: 502px;
        }
        .style48
        {
            width: 158px;
            text-align: right;
            height: 71px;
        }
        .style49
        {
            height: 71px;
            width: 502px;
            color: #FFFFFF;
        }
        .style52
        {
            width: 158px;
            text-align: right;
            height: 85px;
        }
        .style53
        {
            width: 502px;
            height: 85px;
        }
        .style55
        {
            width: 502px;
        }
        .style56
        {
            width: 187px;
            text-align: right;
        }
        .style57
        {
            width: 158px;
            text-align: right;
            height: 13px;
        }
        .style58
        {
            height: 13px;
            width: 502px;
        }
        .style59
        {
            width: 158px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" 
            style="font-size: x-large; font-family: 'Arial Rounded MT Bold'; font-weight: 700" 
            Text="Register  Here"></asp:Label>
        &nbsp;</p>
    <p>
        &nbsp;<asp:Panel ID="Panel1" runat="server" Height="535px" style="margin-left: 102px; margin-top: 0px; background-color: #C0C0C0;" 
        Width="925px">
        <table class="style40">
            <tr>
                <td class="style59">
                    Name</td>
                <td class="style55">
                    <asp:TextBox ID="Txt1" runat="server" Width="185px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="Txt1" ErrorMessage="Enter your name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style42">
                    Mobile Number</td>
                <td class="style43">
                    <asp:TextBox ID="Txt2" runat="server" Width="185px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="Txt2" ErrorMessage="Enter your mobile number" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style57">
                    Email ID</td>
                <td class="style58">
                    <asp:TextBox ID="Txt3" runat="server" Width="185px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="Txt3" ErrorMessage="Enter your Email id" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="Txt3" ErrorMessage="Invalid Email ID" ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style59">
                    Address</td>
                <td class="style55">
                    <asp:TextBox ID="Txt4" runat="server" Width="185px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="Txt4" ErrorMessage="Enter your Address" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style46">
                    Password</td>
                <td class="style47">
                    <asp:TextBox ID="Txt5" runat="server" Width="185px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="Txt5" ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style52">
                    &nbsp; Confirm Password</td>
                <td class="style53">
                    <asp:TextBox ID="Txt6" runat="server" Width="185px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="Txt6" ErrorMessage="Please Re-enter Password" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="Txt5" ControlToValidate="Txt6" 
                        ErrorMessage="Password not match" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style48">
                    </td>
                <td class="style49">
                    <br />
                    <asp:Button ID="Btn" runat="server" onclick="Btn_Click" 
                        style="font-weight: 700; font-size: medium; color: #FFFFFF; background-color: #0033CC" 
                        Text="Register" />
                    <br />
                    <br />
                    <asp:Label ID="Label2" runat="server" 
                        style="color: #009900; font-weight: 700; font-size: medium" Text="Label" 
                        Visible="False"></asp:Label>
                    <br />
                </td>
            </tr>
        </table>
    </asp:Panel>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

