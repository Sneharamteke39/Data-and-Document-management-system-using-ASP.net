<%@ Page Title="" Language="C#" MasterPageFile="~/MS.Master" AutoEventWireup="true" CodeBehind="Studdoc.aspx.cs" Inherits="Data_And_Documents_Management_System.Studdoc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <hr />
    <br>
    <div style="color:black;background-color:transparent";>
    <asp:DropDownList ID="DropDownList3" runat="server" Height="24px" Width="235px">
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
              <td>STUDENT NAME</td><td>:</td>
              <td>
                  <asp:TextBox ID="Textstud1" runat="server"></asp:TextBox></td>
          </tr>
            <tr>
               <td>STUDENT ID</td><td>:</td>
              <td>
                  <asp:TextBox ID="Textstud2" runat="server"></asp:TextBox></td>
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
                <td>SSC MARKSHEET</td><td>:</td>
                <td>
                    <asp:FileUpload ID="FileUpload3" runat="server" Width="172px" /></td>
            </tr>
            <tr>
                <td>HSC MARKSHEET</td><td>:</td>
                <td>
                    <asp:FileUpload ID="FileUpload4" runat="server" Width="172px" /></td>
            </tr>
            
            
        </table>
            <br />

            
            
            <asp:Button ID="Butstud" runat="server" Text="SAVE" Height="43px" Width="89px" OnClick="Butstud_Click" />
            <asp:Label ID="Labmsg" runat="server" Text=""></asp:Label>
            </div>  
        </center>
</asp:Content>
