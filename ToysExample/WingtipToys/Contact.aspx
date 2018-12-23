<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WingtipToys.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3 style="text-align: center">Our Contacts</h3>
    <address>
        <h3 style="text-align: center">Email:</h3>
        <h2 style="text-align: center">blog@gmail.com</h2>
        <br />
        <h3 style="text-align: center">Our phone number</h3>
        <h2 style="text-align: center">+ (044) 444 33 22</h2>
    </address>

    <address>
        <strong>Support:</strong>   <a href="mailto:Support@example.com">Support@example.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
    </address>
</asp:Content>
