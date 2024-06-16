<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Viewdetails.aspx.cs" Inherits="Viewdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 101%;
            height: 505px;
            margin-top: 0px;
        }
        .style5
        {
            width: 552px;
        }
        .style6
        {
            height: 179px;
            width: 558px;
        }
        .style8
        {
            width: 558px;
        }
        .style9
        {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
            onitemcommand="DataList1_ItemCommand">
            <ItemTemplate>
                <br />
                <table class="style4" border="1">
                    <tr>
                        <td class="style5" rowspan="4">
                            <asp:Image ID="Image2" runat="server" Height="456px" 
                                ImageUrl='<%# Eval("productpic") %>' Width="551px" BorderColor="Black" 
                                BorderStyle="Inset" />
                        </td>
                        <td class="style8">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label1" runat="server" 
                                style="font-weight: 700; font-size: xx-large" Text='<%# Eval("name") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style8">
                            <strong><span class="style9">&nbsp;&nbsp;&nbsp; Price:</span></strong>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                            &nbsp;Rs.
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("quantity") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style8">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Quantity
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6" style="text-align: justify">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("description") %>'></asp:Label>
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btn" runat="server" 
                                CommandArgument='<%# Eval("id")%>' CommandName="addtocart" 
                                Text="Place Order" Height="42px" 
                                style="font-weight: 700; color: #FFFFFF; background-color: #009933" 
                                Width="146px" />
                            <br />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:jacob %>" 
            
            SelectCommand="SELECT * FROM [Table3] WHERE ([id] = @id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
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
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

