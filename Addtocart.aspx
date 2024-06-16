<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Addtocart.aspx.cs" Inherits="Addtocart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

    <p>
        You Have Following Products In Your Cart<br />
    </p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" ShowFooter="True" Width="1091px" 
            EmptyDataText="No Products Available In Your Cart" Height="16px" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" onrowdeleting="GridView1_RowDeleting1" 
            >
            
            <Columns>
                <asp:BoundField DataField="Sno" HeaderText="Sr.no" >
                <ItemStyle HorizontalAlign="Center" Height="8px" Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="Id" HeaderText="Product Id">
                <ItemStyle HorizontalAlign="Left" Height="8px" Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="Name" HeaderText="Product Name" >
                <ItemStyle HorizontalAlign="Center" Height="8px" Width="10px" />
                </asp:BoundField>
                <asp:ImageField DataImageUrlField="Productpic" HeaderText="Product Image">
                    <ControlStyle Height="200px" Width="250px" />
                    <ItemStyle HorizontalAlign="Center" Height="8px" Width="10px" />
                </asp:ImageField>
                <asp:BoundField DataField="Price" HeaderText="Price" >
                <ItemStyle HorizontalAlign="Center" Height="8px" Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" >
                <ItemStyle HorizontalAlign="Center" Height="8px" Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="totalprice" HeaderText="Total Price" >
                <ItemStyle Height="8px" Width="10px" />
                </asp:BoundField>
                <asp:CommandField ShowDeleteButton="True" HeaderText="Remove" >
                <ItemStyle Height="8px" Width="10px" />
                </asp:CommandField>
            </Columns>
            <EditRowStyle HorizontalAlign="Center" Height="8px" Width="10px" 
                BorderWidth="8px" />
            <FooterStyle BackColor="#006699" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" 
                Height="50px" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" Height="8px" Width="10px" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" 
                Height="8px" Width="10px" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
    <p>
        <asp:Button ID="Button2" runat="server" BackColor="#33CC33" Font-Bold="True" 
            Font-Size="Medium" Height="46px" Text="Place Order" Width="165px" 
            onclick="Button2_Click" style="color: #FFFFFF" 
             />
    </p>


</asp:Content>

