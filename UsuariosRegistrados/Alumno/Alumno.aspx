<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Alumno.aspx.vb" Inherits="UsuariosRegistrados.Estudiante" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Gestion Web de Tareas-Dedicacion "></asp:Label>
        </div>
        <p>
            <asp:Label ID="Label2" runat="server" Font-Size="XX-Large" Text="Alumnos"></asp:Label>
        </p>
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Alumno/VerTareasEstudiante.aspx">Tareas Genericas</asp:HyperLink>
        </p>
        <p>
            <asp:HyperLink ID="HyperLink2" runat="server">Tareas Propias</asp:HyperLink>
        </p>
        <p>
            <asp:HyperLink ID="HyperLink3" runat="server">Grupos</asp:HyperLink>
        </p>
    </form>
</body>
</html>
