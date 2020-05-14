<%@ Page Title="" Language="C#" MasterPageFile="~/MS.Master" AutoEventWireup="true" CodeBehind="Add1.aspx.cs" Inherits="Data_And_Documents_Management_System.Add1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <hr/>
    <br>
    <center>
        <div style="background-color:lavender; width: 613px; height: 518px; margin-right: 0px;";>
            <br>
        <table border="0">
            
            <tr>
                <td>FACULTY NAME</td><td style="width: 56px">:</td>
                <td style="width: 199px">
                    <asp:TextBox ID="TxtfacName" runat="server"></asp:TextBox></td>

           </tr>
                        <tr>
                <td>FACULTY ID</td><td style="width: 56px">:</td>
                <td style="width: 199px">
                    <asp:TextBox ID="TxtfacId" runat="server"></asp:TextBox></td>

           </tr>
                        <tr>
                <td>GENDER</td><td style="width: 56px">:</td>
                <td style="width: 199px">
                    <asp:TextBox ID="Txtgen" runat="server"></asp:TextBox></td>

           </tr>
                        <tr>
                <td>TEACHING COURSE</td><td style="width: 56px">:</td>
                <td style="width: 199px">
                    <asp:TextBox ID="Txtbranch" runat="server"></asp:TextBox></td>

           </tr>
                        <tr>
                <td>TEACHING SEMESTER</td><td style="width: 56px">:</td>
                <td style="width: 199px">
                    <asp:TextBox ID="TxtSem" runat="server"></asp:TextBox></td>

           </tr>
                        <tr>
                <td>DEGREE</td><td style="width: 56px">:</td>
                <td style="width: 199px">
                     <asp:TextBox ID="Txtdeg" runat="server" Height="37px" Width="160px"></asp:TextBox></td>

           </tr>
                        <tr>
                <td>CITY AND STATE</td><td style="width: 56px">:</td>
                <td style="width: 199px">
                    <asp:TextBox ID="Txtcity" runat="server"></asp:TextBox></td>

           </tr>
              
               <tr>
                <td>CONTACT</td><td style="width: 56px">:</td>
                <td style="width: 199px">                        
                    <asp:TextBox ID="Txtnum" TextMode="Phone" runat="server" ></asp:TextBox></td>

           </tr>
               <tr>
                <td>EMAIL ID</td><td style="width: 56px">:</td>
                <td style="width: 199px">
                    <asp:TextBox ID="Txteid" textmode="Email" runat="server" ></asp:TextBox></td>

           </tr>
            
            
        </table>
            <br />

            
            
            <asp:Button ID="Butadd1" runat="server" Text="SAVE" Height="43px" Width="89px" OnClick="Butadd1_Click" />
            <asp:Label ID="Labmsg" runat="server" Text=""></asp:Label>
            </div>  
        </center>
</asp:Content>
