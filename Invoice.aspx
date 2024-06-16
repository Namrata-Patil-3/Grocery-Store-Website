<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Invoice.aspx.cs" Inherits="Invoice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 100%;
            height: 27px;
            margin-top: 0px;
        }
        .style11
        {
            width: 1198px;
        }
        .style34
        {
            width: 872px;
        }
        .style35
        {
            height: 35px;
            width: 872px;
        }
        .style36
        {
            height: 33px;
            width: 872px;
        }
        .style37
        {
            height: 26px;
            width: 872px;
        }
        .style38
        {
            height: 32px;
            width: 872px;
        }
        .style39
        {
            width: 193px;
            text-align: right;
            height: 34px;
            color: #009933;
            font-size: large;
        }
        .style40
        {
            text-align: right;
            height: 34px;
        }
        .style41
        {
            width: 193px;
            text-align: right;
            height: 35px;
        }
        .style42
        {
            text-align: right;
            height: 35px;
        }
        .style44
        {
            height: 35px;
            text-align: left;
        }
        .style46
        {
            width: 193px;
            text-align: right;
            height: 36px;
        }
        .style47
        {
            height: 36px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="height: 205px; margin-top: 0px;">
        <table class="style6">
            <tr>
                <td class="style35">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Main Road, 
                    Kognoli&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td class="style11" rowspan="6">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" 
        onselectedindexchanged="DataList1_SelectedIndexChanged" RepeatColumns="1" 
        RepeatDirection="Horizontal" style="margin-left: 0px; margin-top: 19px">
        <ItemTemplate>
            <table class="style6">
                <tr>
                    <td class="style39">
                        <strong>Invoice To :</strong></td>
                    <td class="style40">
                        </td>
                </tr>
                <tr>
                    <td class="style41">
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("CustomerName") %>'></asp:Label>
                    </td>
                    <td class="style42">
                        </td>
                </tr>
                <tr>
                    <td class="style41">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("City") %>'></asp:Label>
                        ,
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("Address") %>'></asp:Label>
                    </td>
                    <td class="style44">
                    </td>
                </tr>
                <tr>
                    <td class="style41">
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("Landmark") %>'></asp:Label>
                        ,&nbsp;
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("HouseNo") %>'></asp:Label>
                    </td>
                    <td class="style42">
                        </td>
                </tr>
                <tr>
                    <td class="style46">
                        <asp:Label ID="Label8" runat="server" style="text-align: right" 
                            Text='<%# Eval("MobileNo") %>'></asp:Label>
                    </td>
                    <td class="style47">
                    </td>
                </tr>
                <tr>
                    <td class="style41">
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("Pincode") %>'></asp:Label>
                    </td>
                    <td class="style42">
                        </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
                </td>
            </tr>
            <tr>
                <td class="style36">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tal-Nippani&nbsp;</td>
            </tr>
            <tr>
                <td class="style37">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Dist - Belgaum&nbsp;</td>
            </tr>
            <tr>
                <td class="style38">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; E-mail - 
                    aditigrocerystore@gmail.com&nbsp;</td>
            </tr>
            <tr>
                <td class="style35">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 9765431256&nbsp;<br />
                </td>
            </tr>
            <tr>
                <td class="style34">
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
        </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:jacob %>" 
            SelectCommand="SELECT * FROM [Customerdetailstable] WHERE ([CustomerName] = @CustomerName)">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="username" Name="CustomerName" 
                    SessionField="username" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            Height="232px" style="margin-left: 83px" Width="973px" 
            DataSourceID="SqlDataSource1" onrowdatabound="GridView1_RowDataBound" 
            ShowFooter="True" CellPadding="4" ForeColor="#333333" GridLines="None" 
            onselectedindexchanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="Sr.No">
                <ItemTemplate>
                <%# Container.DataItemIndex + 1 %>
                </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="productname" HeaderText="Product Name">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="quantity" HeaderText="Quantity">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="totalprice" HeaderText="Price">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="Amount">
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<% # Convert.ToInt32(Eval("totalprice")) * Convert.ToInt32(Eval("quantity")) %>'></asp:Label>
            </ItemTemplate>
            <FooterTemplate>
            Total Amount = 
            <asp:Label ID="lbltotal" runat="server" Text="lbl"></asp:Label>
            </FooterTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:jacob %>" 
            
            SelectCommand="SELECT [productname], [quantity], [totalprice] FROM [orderdetails] WHERE ([CustomerName] = @CustomerName2)">
            <SelectParameters>
                <asp:SessionParameter Name="CustomerName2" SessionField="username" 
                    Type="String" DefaultValue="username" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

