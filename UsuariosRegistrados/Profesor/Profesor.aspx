<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Profesor.aspx.vb" Inherits="UsuariosRegistrados.WebForm1" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    
</head>
<body>

    <form id="form1" runat="server">
        <h1>Gestión Web de Tareas-Dedicación</h1>

        <h2>Profesores</h2>

        <p>
            <asp:HyperLink ID="hlAsignaturas" runat="server">Asignaturas</asp:HyperLink>
        </p>
        <p>
             <asp:HyperLink ID="hlTareas" runat="server" NavigateUrl="~/Profesor/TareasProfesor.aspx">Tareas</asp:HyperLink>
        </p>
        <p>
            <asp:HyperLink ID="hlGrupos" runat="server">Grupos</asp:HyperLink>
        </p>
        <p>
            <asp:HyperLink ID="hlImportarXML" runat="server">Importar v.XMLDocument</asp:HyperLink>
        </p>
        <p>
            <asp:HyperLink ID="hlExportar" runat="server">Exportar</asp:HyperLink>
        </p>
        <p>
            <asp:HyperLink ID="hlImportarDataSet" runat="server">Importar v.DataSet</asp:HyperLink>
        </p>
    </form>

</body>
</html>
