<%@ Page Title="" Language="C#" MasterPageFile="~/MS.Master" AutoEventWireup="true" CodeBehind="Facdoc1.aspx.cs" Inherits="Data_And_Documents_Management_System.Facdoc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <hr />
    <br>
    <div style="color:black;background-color:transparent";>
    <asp:DropDownList ID="DropDownList5" runat="server" Height="24px" Width="235px">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>SHOW FACULTY DOCUMENTS</asp:ListItem>
        <asp:ListItem>SHOW STUDENT DOCUMENTS</asp:ListItem>
    </asp:DropDownList>
         <asp:Button ID="Butsubmit" runat="server" Text="SHOW" OnClick="Butsubmit_Click" Height="29px" Width="96px" />
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
        
    <br>
    <div style="background-color:transparent";>
        
        <font color="maroon"><em>  <strong>
            <asp:Label ID="Lab" runat="server" Text="ENTER FACULTY ID :"></asp:Label>&nbsp;&nbsp;
            


            <asp:TextBox ID="TextBox1" runat="server" Width="50px"></asp:TextBox>&nbsp;&nbsp;
            
            <asp:Button ID="Button2" runat="server" Text="ENTER" OnClick="Button2_Click" Height="29px" Width="95px" />
            
        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>

      </strong>  </em></font>   
        </div>
    <br><br><font color="black">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">     
                <Columns>
                    <asp:BoundField HeaderText="FACULTY NAME" DataField="facultyName" />
                    <asp:ImageField HeaderText="ProfileIMG" DataImageUrlField="profileimg" ControlStyle-Height="200"> </asp:ImageField>
                    
                    <asp:ImageField HeaderText="AadharCard" DataImageUrlField="aadharcard" ControlStyle-Height="200"> </asp:ImageField>
                    
                    
                    <asp:ImageField HeaderText="OtherCard1" DataImageUrlField="othercard1" ControlStyle-Height="200"> </asp:ImageField>
                    
                    
                    <asp:ImageField HeaderText="OtherCard2" DataImageUrlField="othercard2" ControlStyle-Height="200"> </asp:ImageField>
                    
                    
                </Columns>

            </asp:GridView></font>
            

</asp:Content>
