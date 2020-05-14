<%@ Page Title="" Language="C#" MasterPageFile="~/MS.Master" AutoEventWireup="true" CodeBehind="Doc.aspx.cs" Inherits="Data_And_Documents_Management_System.Doc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <hr />
    <br>
    <div style="color:black;background-color:transparent";>
    <asp:DropDownList ID="DropDownList1" runat="server" Height="24px" Width="235px">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>ENTER FACULTY DOCUMENTS</asp:ListItem>
        <asp:ListItem>ENTER STUDENT DOCUMENTS</asp:ListItem>
    </asp:DropDownList>
         <asp:Button ID="Butsubmit" runat="server" Text="ENTER" OnClick="Butsubmit_Click" Height="29px" Width="96px" />
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
      </div>
</asp:Content>
