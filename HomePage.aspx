<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Data_And_Documents_Management_System.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 236px;
            width: 559px;
        }
        .auto-style7 {
            width: 230px;
            height: 43px;
        }
        .auto-style8 {
            width: 523px;
            height: 234px;
        }
        .auto-style10 {
            width: 78px;
            height: 22px;
        }
        .auto-style12 {
            width: 230px;
            height: 41px;
        }
        .auto-style13 {
            width: 500px;
            height: 41px;
        }
        .auto-style14 {
            width: 500px;
            height: 43px;
        }
        .auto-style15 {
            width: 500px;
            height: 22px;
        }
        .auto-style16 {
            width: 78px;
        }
    </style>
</head>
<body style="background-image:url(https://wallpapercave.com/wp/YHlk56g.jpg);">
    <form id="form1" runat="server">
        <div>
        </div>
            <center>
                <h1><font color="black"><em> WELCOME TO</em></font></h1>
                <h2><font color="black"><em> LOGIN PAGE </em></font></h2>
                <hr/>
                
                <br><br><br>
                <div style="background-color:beige; " class="auto-style1">
                <table class="auto-style8">

                    <tr>
                        
                        <td class="auto-style13"><strong><em>ADMIN USER ID </em> </strong></td><td class="auto-style16">:</td>
                        <td class="auto-style12">
                            <asp:TextBox ID="TxtAdminId" runat="server"></asp:TextBox></td>
                        </tr>
                    <tr>
                        <td class="auto-style14"><strong><em>PASSWORD </em> </strong></td><td class="auto-style16">:</td>
                        <td class="auto-style7">
                            <asp:TextBox ID="TxtPwdAdmin" runat="server" Textmode="Password"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style15">
                            <asp:Button ID="ButLogin" runat="server" Text="LOGIN" Width="116px" OnClick="ButLogin_Click" Height="39px" /></td><td></td>
                        <td class="auto-style10"> <asp:Label ID="Labmsg" runat="server" Text="" ForeColor="Red" Font-Bold="true"></asp:Label></td>
                        </tr>
                    </table>
                </div>
                </center>
    </form>
</body>
</html>