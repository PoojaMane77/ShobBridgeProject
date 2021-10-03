<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="thinkbridge.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/style.css" />
    <style>
        #form1 {
            height: 1000px;
            background-color: #241698;
            background-image: url('Images/loginimage.jpg');
            /*background-repeat: repeat;*/
        }

        .logincss {
            position: absolute;
            top: 160px;
            right: 500px;
        }

        .uid {
            position: absolute;
            top: 250px;
            right: 550px;
        }

        .uidtxt {
            position: absolute;
            top: 250px;
            right: 300px;
        }

        .pwd {
            position: absolute;
            top: 300px;
            right: 550px;
        }

        .pwdtxt {
            position: absolute;
            top: 300px;
            right: 300px;
        }

        .loginbtncss {
            position: absolute;
            top: 380px;
            right: 300px;
        }

        .cancelbtncss {
            position: absolute;
            top: 380px;
            right: 400px;
        }

        .msgcss {
            position: absolute;
            top: 450px;
            right: 400px;
        }
    </style>
</head>
<body>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.min.js"></script>
    <form id="form1" runat="server">

        <div class="container">
            <asp:Label ID="lbllogin" CssClass="logincss" runat="server" Text="Login" ForeColor="White" Font-Bold="true" Font-Size="XX-Large"></asp:Label>
        </div>
        <br />
        <div>
            <asp:Label ID="lblusername" CssClass="uid" runat="server" Text="User Name" ForeColor="White" Font-Bold="true" Font-Size="X-Large"></asp:Label>
            &nbsp;&nbsp;&nbsp;
       
             <asp:TextBox ID="txtusername" CssClass="uidtxt" runat="server" Style="margin-left: 51px" Width="188px" Height="30px"></asp:TextBox>
        </div>

        <asp:Label ID="lblpwd" runat="server" CssClass="pwd" Text="Password" ForeColor="White" Font-Bold="true" Font-Size="X-Large"></asp:Label>
        &nbsp;&nbsp;&nbsp;
           
         <asp:TextBox ID="txtpwd" CssClass="pwdtxt" runat="server" TextMode="Password" Style="margin-left: 67px" Width="188px" Height="30px"></asp:TextBox>

        <asp:Button ID="btncancel" runat="server" CssClass="cancelbtncss" Text="Cancel" Style="margin-left: 193px" Width="89px" OnClick="btncancel_Click" Height="30px" color />

        &nbsp;<asp:Button ID="btnlogin" CssClass="loginbtncss" runat="server" Text="Login" Style="margin-left: 48px" Width="89px" OnClick="btnlogin_Click" Height="30px" />

        <asp:Label ID="lblmsg" runat="server" CssClass="msgcss" Visible="false" ForeColor="Red" Font-Bold="true" Font-Size="Medium"></asp:Label>
    </form>

</body>
</html>
