<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Milkdairy.aspx.cs" Inherits="Milkdairy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 101%;
            height: 381px;
        }
        .style6
        {
            height: 24px;
        width: 290px;
    }
    .style7
    {
        width: 290px;
    }
        .style8
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
                    <td class="style7">
                        <asp:Image ID="Image1" runat="server" Height="241px" 
                            ImageUrl='<%# Eval("productpic") %>' Width="320px" BackColor="White" 
                            BorderStyle="Groove" style="font-size: small" />
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        </td>
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
                    <td class="style7">
                        <strong>Price</strong>:
                        <asp:Label ID="Label3" runat="server" 
                            style="font-weight: 700; font-size: medium" Text='<%# Eval("price") %>'></asp:Label>
                        .<strong><span class="style8">00</span></strong> Rs.&nbsp;(<asp:Label ID="Label2" 
                            runat="server" style="font-size: medium" Text='<%# Eval("quantity") %>'></asp:Label>
                        )&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Quantity
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
            </table>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" BorderStyle="Inset" 
                CommandArgument='<%# Eval("id")%>' CommandName="viewdetails" Height="30px" 
                style="font-weight: 700; color: #FFFFFF; background-color: #0033CC;" 
                Text="View Details" Width="122px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" BorderStyle="Inset" 
                CommandArgument='<%# Eval("id")%>' CommandName="addtocart" Height="30px" 
                style="font-weight: 700; color: #FFFFFF; background-color: #0033CC;" 
                Text="Add To Cart"  />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            <br />
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
        <br />
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:jacob %>" 
            SelectCommand="SELECT * FROM [Table3] WHERE ([category] = @category)">
            <SelectParameters>
                <asp:Parameter DefaultValue="Dairy" Name="category" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
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

