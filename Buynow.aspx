<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Buynow.aspx.cs" Inherits="Buynow" %>

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
            font-size: x-large;
            color: #33CC33;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="532px" style="text-align: left" 
        Width="1335px">
        <div class="style6">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><span class="style7">Add Contact Details</span></strong><br />
        </div>
        <table class="style4">
            <tr>
                <td class="style5">
                    Name</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="34px" Width="294px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    Mobile No</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="39px" Width="292px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    Address</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="89px" Width="291px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    Pincode</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Width="303px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button2" runat="server" 
                        style="font-weight: 700; color: #FFFFFF; font-size: medium; background-color: #33CC33" 
                        Text="Save" Width="136px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
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

