<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Invoice2.aspx.cs" Inherits="Invoice2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 31%;
        }
        .style7
        {
            width: 637px;
        }
        .style8
        {
            width: 136%;
        }
        .style14
        {
            width: 248px;
            text-align: right;
        }
        .style15
        {
            width: 637px;
            height: 38px;
        }
        .style16
        {
            width: 637px;
            height: 37px;
        }
        .style17
        {
            width: 637px;
            height: 33px;
        }
        .style18
        {
            width: 248px;
            height: 40px;
            text-align: right;
        }
        .style19
        {
            height: 40px;
        }
        .style20
        {
            width: 248px;
            height: 41px;
            text-align: right;
        }
        .style21
        {
            height: 41px;
        }
        .style22
        {
            width: 248px;
            height: 40px;
            text-align: right;
            font-size: large;
            color: #009933;
        }
        .style12
        {
            font-size: x-large;
            color: #FF0000;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style6">
        <tr>
            <td class="style7">
                <br />
            </td>
        </tr>
        <tr>
            <td class="style15">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                Main Road, Kognoli</td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                Tal - Nippani&nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                Dist - Belgaum&nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server">grocerystore@gmail.com</asp:HyperLink>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                9743562345&nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                <br />
            </td>
        </tr>
    </table>
        <br />
    <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2">
        <ItemTemplate>
            <table class="style8">
                <tr>
                    <td class="style22">
                        <strong>Invoice To :</strong></td>
                    <td class="style19">
                    </td>
                </tr>
                <tr>
                    <td class="style20">
                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("CustomerName") %>'></asp:Label>
                    </td>
                    <td class="style21">
                    </td>
                </tr>
                <tr>
                    <td class="style18">
&nbsp;
                        <asp:Label ID="Label12" runat="server" Text='<%# Eval("City") %>'></asp:Label>
                        &nbsp;,
                        <asp:Label ID="Label13" runat="server" Text='<%# Eval("Address") %>'></asp:Label>
                    </td>
                    <td class="style19">
                    </td>
                </tr>
                <tr>
                    <td class="style18">
                        <asp:Label ID="Label14" runat="server" Text='<%# Eval("Landmark") %>'></asp:Label>
                        ,
                        <asp:Label ID="Label15" runat="server" Text='<%# Eval("HouseNo") %>'></asp:Label>
                    </td>
                    <td class="style19">
                    </td>
                </tr>
                <tr>
                    <td class="style20">
                        <asp:Label ID="Label16" runat="server" Text='<%# Eval("MobileNo") %>'></asp:Label>
                    </td>
                    <td class="style21">
                    </td>
                </tr>
                <tr>
                    <td class="style14">
                        <asp:Label ID="Label17" runat="server" Text='<%# Eval("Pincode") %>'></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:jacob %>" 
            
        SelectCommand="SELECT * FROM [Customerdetailstable] WHERE ([CustomerName] = @CustomerName2)" 
        onselecting="SqlDataSource2_Selecting">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="username" Name="CustomerName2" 
                    SessionField="username" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            Height="232px" style="margin-left: 83px" Width="973px" 
            DataSourceID="SqlDataSource1" onrowdatabound="GridView1_RowDataBound" 
            ShowFooter="True" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="Sr.No">
                <ItemTemplate>
                <%# Container.DataItemIndex + 1 %>
                </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:jacob %>" 
            
            SelectCommand="SELECT [productname], [quantity], [totalprice] FROM [orderdetails] WHERE ([CustomerName] = @CustomerName2)">
            <SelectParameters>
                <asp:SessionParameter Name="CustomerName2" SessionField="username" 
                    Type="String" DefaultValue="username" />
            </SelectParameters>
        </asp:SqlDataSource>
    <p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        If you have any questions about this invoice. Please contact on 9901214515&nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="style12"><strong>&nbsp;THANK YOU</strong></span></p>
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

