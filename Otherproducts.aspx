<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Otherproducts.aspx.cs" Inherits="Otherproducts" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style4
    {
        width: 100%;
    }
    .style5
    {
        height: 27px;
            width: 309px;
        }
    .style6
    {
        height: 34px;
            width: 309px;
        }
        .style8
        {
            width: 309px;
        }
        .style9
        {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
        onitemcommand="DataList1_ItemCommand" RepeatColumns="4" 
        RepeatDirection="Horizontal" BackColor="#CCCCCC" BorderColor="#999999" 
            BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
            ForeColor="Black" GridLines="Both">
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="White" />
        <ItemTemplate>
            <table class="style4">
                <tr>
                    <td class="style8">
                        <asp:Image ID="Image1" runat="server" Height="233px" 
                            ImageUrl='<%# Eval("productpic") %>' Width="320px" BackColor="White" 
                            BorderStyle="Groove" style="font-size: small" />
                    </td>
                </tr>
                <tr>
                    <td class="style8">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style6">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>' 
                            style="font-weight: 700; font-size: x-large"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        Price:
                        <asp:Label ID="Label3" runat="server" 
                            style="font-weight: 700; font-size: medium" Text='<%# Eval("price") %>'></asp:Label>
                        <span class="style9"><strong>.00</strong></span>Rs.&nbsp;(&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("quantity") %>' 
                            style="font-size: medium"></asp:Label>
                        )&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Quantity&nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
            </table>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" BorderStyle="Inset" 
                CommandArgument='<%# Eval("id")%>' CommandName="viewdetails" Height="30px" 
                style="font-weight: 700; color: #FFFFFF; background-color: #0033CC;" 
                Text="View Details" Width="122px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" BorderStyle="Inset" 
                CommandArgument='<%# Eval("id")%>' CommandName="addtocart" Height="30px" 
                style="font-weight: 700; color: #FFFFFF; background-color: #0033CC;" 
                Text="Add To Cart" />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            <br />
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:jacob %>" 
        SelectCommand="SELECT * FROM [Table3] WHERE ([category] = @category)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Otherproduct" Name="category" Type="String" />
        </SelectParameters>
        </asp:SqlDataSource>
</p>
<p>
    &nbsp;</p>
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


