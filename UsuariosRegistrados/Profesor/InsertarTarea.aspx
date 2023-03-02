<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="InsertarTarea.aspx.vb" Inherits="UsuariosRegistrados.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <div style="text-align:center">
        <h1>PROFESOR</h1>
        <h2>GESTIÓN DE TAREAS GENÉRICAS</h2>

    </div>
    <form id="form1" runat="server">
        <asp:Label ID="lblCodigo" runat="server" Text="Código"></asp:Label>
        <asp:TextBox ID="txtCodigo" runat="server"></asp:TextBox>
        <p>
            <asp:Label ID="lblDescripcion" runat="server" Text="Descripción"></asp:Label>
            <asp:TextBox ID="txtDescripcion" runat="server" Height="47px" Width="497px"></asp:TextBox>
        </p>
        <asp:Label ID="lblAsignatura" runat="server" Text="Asignatura"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="codigo" DataValueField="codigo" AutoPostBack="True">
        </asp:DropDownList>
        <p>
            <asp:Label ID="lblHorasE" runat="server" Text="Label"></asp:Label>
            <asp:TextBox ID="txtHorasE" runat="server"></asp:TextBox>
        </p>
        <asp:Label ID="lblTipoT" runat="server" Text="Tipo Tarea"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem>Laboratorio</asp:ListItem>
            <asp:ListItem>Examen</asp:ListItem>
            <asp:ListItem>Ejercicio</asp:ListItem>
            <asp:ListItem>Trabajo</asp:ListItem>
        </asp:DropDownList>
        <p>
            <asp:Button ID="Button1" runat="server" Height="53px" Text="Añadir Tarea" Width="142px" />
        </p>
    </form>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HADS2023ConnectionString %>" 
        SelectCommand="Select Asignatura.Codigo
        From Asignatura Join GrupoClase On
        Asignatura.Codigo = GrupoClase.CodigoAsig  
        Join EstudianteGrupo On
        GrupoClase.Codigo = EstudianteGrupo.Grupo 
        Join Usuario On
        Usuario.email = EstudianteGrupo.email 
        Where (Usuario.email = @email)">
            <SelectParameters>
                <asp:SessionParameter Name="email" SessionField="correo" />
            </SelectParameters>
        </asp:SqlDataSource>
</body>
</html>
