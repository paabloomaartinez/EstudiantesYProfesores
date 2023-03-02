<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="VerTareasEstudiante.aspx.vb" Inherits="UsuariosRegistrados.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="glCerrarSesion" runat="server" NavigateUrl="~/Inicio.aspx">Cerrar Sesion</asp:HyperLink>
        </div>
        <div style="text-align:center">
            <h1>ALUMNOS</h1>
            <h1>GESTIÓN DE TAREAS GENÉRICAS</h1>
        </div>
        <h3>Seleccionar Asignatura (solo se muestran aquellas en las que está matriculado):</h3>

        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="codigo" DataValueField="codigo" AutoPostBack="True">
        </asp:DropDownList>

        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" style="margin-top: 1px" >
            <Columns>
                <asp:CommandField ButtonType="Button" ShowSelectButton="True"/>
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>

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

    </form>
</body>
</html>
