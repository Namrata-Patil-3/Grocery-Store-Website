<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Placeorder.aspx.cs" Inherits="Placeorder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 100%;
        }
        .style5
        {
            width: 271px;
            text-align: right;
        }
        .style6
        {
            text-align: center;
        }
        .style7
        {
            font-family: Bahnschrift;
            font-size: x-large;
            color: #009933;
        }
        .style9
        {
            font-size: large;
        }
        .style10
        {
            width: 398px;
            font-size: large;
            color: #FF0000;
        }
        .style11
        {
        }
        .style12
        {
            width: 271px;
            text-align: right;
            font-size: larger;
            height: 47px;
        }
        .style13
        {
            height: 47px;
        }
    .style14
    {
        width: 271px;
        text-align: right;
        font-size: larger;
        height: 83px;
    }
    .style15
    {
        height: 83px;
    }
        .style16
        {
            width: 271px;
            text-align: right;
            font-size: larger;
            height: 74px;
        }
        .style17
        {
            height: 74px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="618px" style="text-align: left" 
        Width="1360px">
        <div class="style6">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
        </div>
        <table class="style4">
            <tr>
                <td class="style12">
                    </td>
                <td class="style13">
                    <span class="style7">&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td class="style13">
                </td>
            </tr>
            <tr>
                <td class="style16">
                    </td>
                <td class="style17">
                    <span class="style7">&nbsp; Add Address Details<br /> </span>
                </td>
                <td class="style17">
                    </td>
            </tr>
            <tr>
                <td class="style5">
                    Pin Code&nbsp;
                </td>
                <td class="style11">
                    <asp:TextBox ID="txt1" runat="server" BorderStyle="Inset" Height="42px" 
                        Width="294px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txt1" ErrorMessage="Enter Pin Code" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    Mobile No</td>
                <td class="style11">
                    <asp:TextBox ID="txt2" runat="server" Height="42px" Width="294px" 
                        BorderStyle="Inset"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txt2" ErrorMessage="Enter Mobile Number" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style14">
                    House No</td>
                <td class="style15">
                    <asp:TextBox ID="txt3" runat="server" Height="42px" Width="294px" 
                        BorderStyle="Inset"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txt3" ErrorMessage="Enter House No" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td class="style15">
                    <span class="style9">Building/Apartment Name
                    <asp:TextBox ID="txt6" runat="server" BorderStyle="Inset" Height="42px" 
                        Width="294px"></asp:TextBox>
                    </span>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    Address&nbsp;&nbsp; </td>
                <td class="style11">
                    <asp:TextBox ID="txt4" runat="server" Width="294px" BorderStyle="Inset" 
                        Height="42px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txt4" ErrorMessage="Enter Your Address" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="style9">Landmark/Area&nbsp;
                    <asp:TextBox ID="txt8" runat="server" BorderStyle="Inset" Height="42px" 
                        Width="294px"></asp:TextBox>
                    </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td class="style5">
                    City,State&nbsp;&nbsp; </td>
                <td class="style11">
                    <asp:TextBox ID="txt7" runat="server" BorderStyle="Inset" Height="42px" 
                        Width="294px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style11">
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txt7" ErrorMessage="Enter City, State Name" 
                        ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style10">
                    <strong>Choose Your Payment Mode<br /> </strong>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style11" colspan="2">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                        RepeatDirection="Horizontal" style="font-size: large" Width="504px">
                        <asp:ListItem>Cash On Delivery</asp:ListItem>
                        <asp:ListItem>Online Payment</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style11">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style11">
                    <asp:Button ID="Button2" runat="server" Height="40px" 
                        style="font-weight: 700; color: #FFFFFF; font-size: medium; background-color: #33CC33" 
                        Text="Save &amp; Continue" Width="237px" onclick="Button2_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                        Text="Invoice" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    <p>
        <br />
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

