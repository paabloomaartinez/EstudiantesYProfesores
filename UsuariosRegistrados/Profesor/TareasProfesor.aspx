<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="TareasProfesor.aspx.vb" Inherits="UsuariosRegistrados.WebForm4" %>

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
            <h1>PROFESOR</h1>
            <h1>GESTIÓN DE TAREAS GENÉRICAS</h1>
        </div>
        <h3>Seleccionar Asignatura:</h3>



        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="codigoAsig" DataValueField="codigoAsig" AutoPostBack="True">
        </asp:DropDownList>
        <div style="text-align:center">
            <asp:Button ID="Button1" runat="server" Text="INSERTAR NUEVA TAREA" Height="69px" style="margin-left: 0px" Width="224px" />

        </div>

        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" >
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
 
        </asp:GridView>


        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HADS2023ConnectionString %>" 
        SelectCommand="Select GrupoClase.CodigoAsig
        From ProfesorGrupo Join GrupoClase On
        ProfesorGrupo.codigoGrupo = GrupoClase.codigo
        Where (ProfesorGrupo.email = @email)">
            <SelectParameters>
                <asp:SessionParameter Name="email" SessionField="correo" />
            </SelectParameters>
        </asp:SqlDataSource>

    </form>
</body>
</html>
