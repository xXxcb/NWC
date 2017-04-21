<%@ Page Title="" Language="C#" MasterPageFile="~/Template.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Label ID="Label1" runat="server" Text="Label">User Name: </asp:Label><asp:TextBox ID="Username" runat="server"></asp:TextBox>
    <asp:Label ID="Label2" runat="server" Text="Label">Password: </asp:Label><asp:TextBox ID="Pass" runat="server" AutoCompleteType="Disabled" Type="password"></asp:TextBox>
                <asp:Button ID="btnSubmit" CssClass="btn" runat="server" Text="Submit" OnClick="LoginButton_Click" />
    
</asp:Content>

