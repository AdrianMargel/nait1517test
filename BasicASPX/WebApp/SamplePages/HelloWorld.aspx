<%@ Page Title="Hello World" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HelloWorld.aspx.cs" Inherits="WebApp.SamplePages.HelloWorld" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Label ID="Label1" runat="server" Text="Enter your name"></asp:Label>
    &nbsp&nbsp;

    <asp:TextBox ID="yourname" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
    <br />
    <asp:Button ID="PressMe" runat="server" Text="I'm so o-pressed" OnClick="PressMe_Click" />
    <br />
    <asp:Literal ID="OutputMessage" runat="server"></asp:Literal>
    <p>
        &nbsp;</p>
</asp:Content>
