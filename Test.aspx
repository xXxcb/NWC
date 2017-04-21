<%@ Page Title="" Language="C#" MasterPageFile="~/Template.master" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="Test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Button ID="Button1" runat="server" Text="Logout" OnClick="btn_logout" />
    <asp:Label ID="Label5" runat="server" Text="Label"><h4>Welcome </h4></asp:Label><asp:Label ID="Label6" runat="server" Text="Label"><h4>Name</h4></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
        <Columns>
            <asp:BoundField DataField="trn" HeaderText="trn" SortExpression="trn"></asp:BoundField>
            <asp:BoundField DataField="first_name" HeaderText="first_name" SortExpression="first_name"></asp:BoundField>
            <asp:BoundField DataField="last_name" HeaderText="last_name" SortExpression="last_name"></asp:BoundField>
            <asp:BoundField DataField="stmnt_Date" HeaderText="stmnt_Date" SortExpression="stmnt_Date"></asp:BoundField>
            <asp:BoundField DataField="due_date" HeaderText="due_date" SortExpression="due_date"></asp:BoundField>
            <asp:BoundField DataField="amt_due" HeaderText="amt_due" SortExpression="amt_due"></asp:BoundField>
            <asp:TemplateField HeaderText="status" SortExpression="status">
                <EditItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("status") %>' ID="TextBox1">Bill Status</asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Convert.ToInt32(Eval("status")).Equals(0) ? "New" : "" %>' ID="Label1"></asp:Label>
                    <asp:Label runat="server" Text='<%# Convert.ToInt32(Eval("status")).Equals(1) ? "Paid" : "" %>' ID="Label2"></asp:Label>
                    <asp:Label runat="server" Text='<%# Convert.ToInt32(Eval("status")).Equals(2) ? "Over-Due" : "" %>' ID="Label3"></asp:Label>
                    <asp:Label runat="server" Text='<%# Convert.ToInt32(Eval("status")).Equals(3) ? "Consolidated" : "" %>' ID="Label4"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

        </Columns>
        <EditRowStyle BackColor="#7C6F57"></EditRowStyle>

        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White"></FooterStyle>

        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White"></HeaderStyle>

        <PagerStyle HorizontalAlign="Center" BackColor="#666666" ForeColor="White"></PagerStyle>

        <RowStyle BackColor="#E3EAEB"></RowStyle>

        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

        <SortedAscendingCellStyle BackColor="#F8FAFA"></SortedAscendingCellStyle>

        <SortedAscendingHeaderStyle BackColor="#246B61"></SortedAscendingHeaderStyle>

        <SortedDescendingCellStyle BackColor="#D4DFE1"></SortedDescendingCellStyle>

        <SortedDescendingHeaderStyle BackColor="#15524A"></SortedDescendingHeaderStyle>
    </asp:GridView>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:NWC_Bills %>' SelectCommand="SELECT * FROM [Bill] WHERE ([trn] = @trn)">
        <SelectParameters>
            <asp:SessionParameter SessionField="logged" Name="trn" Type="Int32"></asp:SessionParameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource1"></asp:GridView>
</asp:Content>

