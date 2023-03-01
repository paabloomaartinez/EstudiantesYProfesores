<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Inicio.aspx.vb" Inherits="UsuariosRegistrados.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>
            Login
        </h1>
        Correo:
        <asp:TextBox ID="tbCorreo" runat="server"></asp:TextBox>
        <asp:Label ID="lblUserError" runat="server" Text="Label"></asp:Label>
        <p>
            Contraseña:
            <asp:TextBox ID="tbContrasenia" runat="server"></asp:TextBox>
            <asp:Label ID="lblContraError" runat="server" Text="Label"></asp:Label>
        </p>
        <asp:Button ID="btnLogin" runat="server" Text="Login" Height="37px" Width="249px" />
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
