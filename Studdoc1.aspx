﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MS.Master" AutoEventWireup="true" CodeBehind="Studdoc1.aspx.cs" Inherits="Data_And_Documents_Management_System.Studdoc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <hr />
    <br>
    <div style="color:black;background-color:transparent";>
    <asp:DropDownList ID="DropDownList6" runat="server" Height="24px" Width="235px">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>SHOW FACULTY DOCUMENTS</asp:ListItem>
        <asp:ListItem>SHOW STUDENT DOCUMENTS</asp:ListItem>
    </asp:DropDownList>
         <asp:Button ID="Butsubmit" runat="server" Text="SHOW" OnClick="Butsubmit_Click" Height="29px" Width="96px" />
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
        <br>
    <div style="background-color:transparent";>
  <font color="maroon"> <em>     <strong>
            <asp:Label ID="Lab1" runat="server" Text="ENTER STUDENT ID :"></asp:Label>&nbsp;&nbsp;
            


            <asp:TextBox ID="TextBox2" runat="server" Width="50px"></asp:TextBox>&nbsp;&nbsp;
            
            <asp:Button ID="Button1" runat="server" Text="ENTER" OnClick="Button1_Click" Height="29px" Width="95px" />
            
        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>

     </strong>  </em></font> 
        </div>
    <br><br><font color="black">
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="false" AutoGenerateDeleteButton="True" Height="206px" Width="785px">     
                <Columns>
                    <asp:BoundField HeaderText="STUDENT NAME" DataField="StudentName" />
                    <asp:ImageField HeaderText="ProfileIMG" DataImageUrlField="profileimg" ControlStyle-Height="200"> </asp:ImageField>
                    
                    <asp:ImageField HeaderText="AadharCard" DataImageUrlField="aadharimg" ControlStyle-Height="200"> </asp:ImageField>
                    
                    
                    <asp:ImageField HeaderText="SSC MARKSHEET" DataImageUrlField="sscimg" ControlStyle-Height="200"> </asp:ImageField>
                    
                    
                    <asp:ImageField HeaderText="HSC MARKSHEET" DataImageUrlField="hscimg" ControlStyle-Height="200"> </asp:ImageField>
                    
                    
                </Columns>

            </asp:GridView></font>
</asp:Content>