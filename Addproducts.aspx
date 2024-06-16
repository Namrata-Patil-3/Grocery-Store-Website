<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Addproducts.aspx.cs" Inherits="Addproducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 48%;
        }
        .style5
        {
            width: 322px;
        }
        .style6
        {
            width: 782px;
        }
        .style9
        {
            width: 458px;
            height: 30px;
        }
        .style10
        {
            width: 782px;
            height: 30px;
        }
        .style11
        {
            width: 458px;
            font-size: larger;
            height: 79px;
        }
        .style12
        {
            width: 100%;
            height: 79px;
        }
        .style13
        {
            font-size: larger;
        }
        .style14
        {
            width: 458px;
            font-size: larger;
        }
        .style15
        {
            width: 458px;
            height: 56px;
        }
        .style16
        {
            width: 782px;
            height: 56px;
        }
        .style17
        {
            width: 458px;
            font-size: larger;
            height: 55px;
        }
        .style18
        {
            width: 100%;
            height: 55px;
        }
        .style19
        {
            width: 458px;
            font-size: larger;
            height: 69px;
        }
        .style20
        {
            width: 100%;
            height: 69px;
        }
        .style21
        {
            width: 458px;
            font-size: larger;
            height: 59px;
        }
        .style22
        {
            width: 100%;
            height: 59px;
        }
        .style23
        {
            font-size: larger;
            color: #000000;
            background-color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        
        <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="style13">&nbsp;</span><strong><span 
            class="style23">Add Products and Product details in your website</span></strong></p>
    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table class="style4">
            <tr>
                <td class="style11">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    Select Category</td>
                <td class="style12">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="34px" Width="219px" 
                        BackColor="#CCFFFF" Font-Bold="True">
                        <asp:ListItem>Fruit</asp:ListItem>
                        <asp:ListItem>Vegetable</asp:ListItem>
                        <asp:ListItem>Dairy</asp:ListItem>
                        <asp:ListItem>Staples</asp:ListItem>
                        <asp:ListItem>Beauty</asp:ListItem>
                        <asp:ListItem>Kitchen</asp:ListItem>
                        <asp:ListItem>Otherproduct</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style17">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label1" runat="server" Text="Product Name" 
                        style="text-align: center"></asp:Label>
                </td>
                <td class="style18">
                    <asp:TextBox ID="txt1" runat="server" Width="213px" Height="34px" 
                        BorderStyle="Groove"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style15">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label2" runat="server" Text="Price"></asp:Label>
                </td>
                <td class="style16">
                    <asp:TextBox ID="txt2" runat="server" Width="213px" Height="34px" 
                        BorderStyle="Groove"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style17">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Quantity</td>
                <td class="style18">
                    <asp:TextBox ID="txt3" runat="server" Width="213px" Height="34px" 
                        BorderStyle="Groove"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style19">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Description</td>
                <td class="style20">
                    <asp:TextBox ID="txt4" runat="server" Width="300px" Height="50px" 
                        BorderStyle="Groove"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style21">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Image</td>
                <td class="style22">
                    <asp:FileUpload ID="FU1" runat="server" Height="34px" Width="200px" 
                        BorderStyle="None" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                    </td>
                <td class="style10">
                    <asp:Button ID="Btn1" runat="server" onclick="Btn1_Click" Text="Save" 
                        
                        style="font-weight: 700; color: #FFFFFF; font-size: medium; background-color: #339933;" 
                        Width="80px" Height="36px" BorderStyle="None" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Btn3" runat="server" Text="Delete" onclick="Btn3_Click" 
                        
                        style="font-weight: 700; color: #FFFFFF; font-size: medium; background-color: #FF0066;" 
                        Height="36px" Width="80px" BorderStyle="None" />
                </td>
            </tr>
            <tr>
                <td class="style14">
                    &nbsp;</td>
                <td class="style6">
                </td>
            </tr>
            <tr>
                <td class="style14">
                    &nbsp;</td>
                <td class="style6">
                    <asp:Label ID="L3" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style14">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
            </tr>
        </table>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
            BorderStyle="Outset" CellPadding="4" ForeColor="#333333" GridLines="None" 
            Height="190px" Width="1296px" style="margin-right: 0px" 
            onrowdeleted="GridView2_RowDeleted" onrowdeleting="GridView2_RowDeleting" 
            onrowdatabound="GridView2_RowDataBound" >
            
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            
            <Columns>
                <asp:BoundField DataField="productpic" HeaderText="Productpic" 
                    SortExpression="productpic" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="quantity" HeaderText="Quantity" 
                    SortExpression="quantity" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="description" HeaderText="Description" 
                    SortExpression="description" />
                <asp:BoundField DataField="category" HeaderText="Category">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True">
                <ItemStyle HorizontalAlign="Center" />
                </asp:CommandField>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" 
                Height="30px" Width="200px" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    </p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:jacob %>" 
            SelectCommand="SELECT * FROM [Table3]" 
        UpdateCommand="UPDATE [Table3] SET [name] = @name, [price] = @price, [quantity] = @quantity, [description] = @description, [productpic] = @productpic, [category] = @category WHERE [name] = @name" 
        DeleteCommand="DELETE FROM [Table3] WHERE [name] = @name" 
        InsertCommand="INSERT INTO [Table3] ([name], [price], [quantity], [description], [productpic], [category]) VALUES (@name, @price, @quantity, @description, @productpic, @category)">
            <DeleteParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="price" Type="Int64" />
                <asp:Parameter Name="quantity" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="productpic" Type="String" />
                <asp:Parameter Name="category" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="price" Type="Int64" />
                <asp:Parameter Name="quantity" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="productpic" Type="String" />
                <asp:Parameter Name="category" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="price" Type="Int64" />
                <asp:Parameter Name="quantity" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="productpic" Type="String" />
                <asp:Parameter Name="category" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
    </asp:SqlDataSource>
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


