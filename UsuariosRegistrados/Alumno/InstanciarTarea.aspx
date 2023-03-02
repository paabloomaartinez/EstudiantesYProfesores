<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="InstanciarTarea.aspx.vb" Inherits="UsuariosRegistrados.InstanciarTarea" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <div style="text-align:center">
        <h1>ALUMNOS</h1>
        <h2>INSTANCIAR TAREA GENÉRICA</h2>

    </div>
    
    <form id="form1" runat="server">
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
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        </p>
    </form>
</body>
</html>
