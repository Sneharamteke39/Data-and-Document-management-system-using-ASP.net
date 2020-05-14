<%@ Page Title="" Language="C#" MasterPageFile="~/MS.Master" AutoEventWireup="true" CodeBehind="Facdoc.aspx.cs" Inherits="Data_And_Documents_Management_System.Facdoc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <hr />
    <br>
    <div style="color:black;background-color:transparent";>
    <asp:DropDownList ID="DropDownList2" runat="server" Height="24px" Width="235px">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>ENTER FACULTY DOCUMENTS</asp:ListItem>
        <asp:ListItem>ENTER STUDENT DOCUMENTS</asp:ListItem>
    </asp:DropDownList>
         <asp:Button ID="Butsubmit" runat="server" Text="ENTER" OnClick="Butsubmit_Click" Height="29px" Width="96px" />
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
        
        
    <br>
    <center>
        <div style="background-color:lavender; width: 648px; height: 389px; margin-right: 0px;";>
            <br>
        <table border="0">
            
          <tr>
              <td>FACULTY NAME</td><td>:</td>
              <td>
                  <asp:TextBox ID="Textfac1" runat="server"></asp:TextBox></td>
          </tr>
            <tr>
               <td>FACULTY ID</td><td>:</td>
              <td>
                  <asp:TextBox ID="Textfac2" runat="server"></asp:TextBox></td>
                </tr>
            <tr>
                <td>PROFILE PHOTO</td><td>:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="172px" /></td>
            </tr>
            <tr>
                <td>AADHAR CARD </td><td>:</td>
                <td>
                    <asp:FileUpload ID="FileUpload2" runat="server" Width="172px" /></td>
            </tr>
            <tr>
                <td>OTHER ID CARD 1</td><td>:</td>
                <td>
                    <asp:FileUpload ID="FileUpload3" runat="server" Width="172px" /></td>
            </tr>
            <tr>
                <td>OTHER ID CARD 2</td><td>:</td>
                <td>
                    <asp:FileUpload ID="FileUpload4" runat="server" Width="172px" /></td>
            </tr>
            
            
        </table>
            <br />

            
            
            <asp:Button ID="Butfac" runat="server" Text="SAVE" Height="43px" Width="89px" OnClick="Butfac_Click" />
            <asp:Label ID="Labmsg" runat="server" Text=""></asp:Label>
            </div>  
        </center>
</asp:Content>
