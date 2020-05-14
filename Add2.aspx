<%@ Page Title="" Language="C#" MasterPageFile="~/MS.Master" AutoEventWireup="true" CodeBehind="Add2.aspx.cs" Inherits="Data_And_Documents_Management_System.Add2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <hr/>
    <br>
    <center>
        <div style="background-color:aliceblue; width: 628px; height: 597px;";><br>
        <table border="0">
            
            <tr>
                <td>STUDENT NAME</td><td style="width: 56px">:</td>
                <td style="width: 199px">
                    <asp:TextBox ID="TxtStudName" runat="server"></asp:TextBox></td>

           </tr>
                        <tr>
                <td>STUDENT ID</td><td style="width: 56px">:</td>
                <td style="width: 199px">
                    <asp:TextBox ID="TxtStudId" runat="server"></asp:TextBox></td>

           </tr>
                        <tr>
                <td>GENDER</td><td style="width: 56px">:</td>
                <td style="width: 199px">
                    <asp:TextBox ID="TxtGen" runat="server"></asp:TextBox></td>

           </tr>
                        <tr>
                <td>BRANCH</td><td style="width: 56px">:</td>
                <td style="width: 199px">
                    <asp:TextBox ID="TxtBranch" runat="server"></asp:TextBox></td>

           </tr>
                        <tr>
                <td>SEMESTER</td><td style="width: 56px">:</td>
                <td style="width: 199px">
                    <asp:TextBox ID="Txtsem" runat="server"></asp:TextBox></td>

           </tr>
                        <tr>
                <td>ADDRESS</td><td style="width: 56px">:</td>
                <td style="width: 199px">
                     <asp:TextBox ID="TxtAdd" runat="server" Height="37px" Width="160px"></asp:TextBox></td>

           </tr>
                        <tr>
                <td>CITY AND STATE</td><td style="width: 56px">:</td>
                <td style="width: 199px">
                    <asp:TextBox ID="TxtCity" runat="server"></asp:TextBox></td>

           </tr>
               
               <tr>
                <td>CONTACT</td><td style="width: 56px">:</td>
                <td style="width: 199px">
                    <asp:TextBox ID="TxtNum" TextMode="Phone" runat="server" ></asp:TextBox></td>

           </tr>
               <tr>
                <td>EMAIL ID</td><td style="width: 56px">:</td>
                <td style="width: 199px">
                    <asp:TextBox ID="TxtEID" TextMode="Email" runat="server" ></asp:TextBox></td>

           </tr>
            <tr>
                    <td>SSC SCORE</td><td style="width: 56px">:</td>
                    <td style="width: 199px">
                        <asp:TextBox ID="TxtSsc"  runat="server" Font-Size="X-Small" Height="16px" Width="142px"></asp:TextBox>%</td>
                    
                    </tr>
                 <tr>
                    <td>HSC SCORE</td><td style="width: 56px">:</td>
                    <td style="width: 199px">
                        <asp:TextBox ID="TxtHsc"   runat="server" Font-Size="X-Small" Width="143px"></asp:TextBox>%</td>
                   
                    </tr>
            
            
        </table>
            <br />

            
            
            <asp:Button ID="Butadd2" runat="server" Text="SAVE" Height="43px" Width="89px" OnClick="Butadd2_Click" />
            <asp:Label ID="Labmsg" runat="server" Text=""></asp:Label>
            </div>  
        </center>
</asp:Content>
