<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="InstanciarTarea.aspx.vb" Inherits="UsuariosRegistrados.InstanciarTarea" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <h1>ALUMNOS</h1>
    <h2>INSTANCIAR TAREA GENÉRICA</h2>
    <form id="form1" runat="server">
        <div>

        </div>
        <asp:Label ID="lblUsuario" runat="server" Text="Usuario"></asp:Label>
        <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
        <p>
            <asp:Label ID="lblTarea" runat="server" Text="Tarea"></asp:Label>
            <asp:TextBox ID="txtTarea" runat="server"></asp:TextBox>
        </p>
        <asp:Label ID="lblEstimado" runat="server" Text="Horas Est."></asp:Label>
        <asp:TextBox ID="txtEstimado" runat="server"></asp:TextBox>
        <p>
            <asp:Label ID="lblReales" runat="server" Text="Horas Reales"></asp:Label>
            <asp:TextBox ID="txtReales" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="btnCrear" runat="server" Height="43px" Text="Crear Tarea" Width="169px" />
        <p>
            <asp:HyperLink ID="hlVolver" runat="server" NavigateUrl="~/VerTareasEstudiante.aspx">Página anterior</asp:HyperLink>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        </p>
    </form>
</body>
</html>
