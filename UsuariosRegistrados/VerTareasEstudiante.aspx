<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="VerTareasEstudiante.aspx.vb" Inherits="UsuariosRegistrados.VerTareasEstudiante" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Alumnos</title>
</head>
<body>
    <h1>
        ALUMNOS
    </h1>
    <h2>
        GESTIÓN DE TAREAS GENÉRICAS
    </h2>
    <form id="form1" runat="server">
    <div>
        Seleccionar Asignatura (solo se muestran aquellas en las que está matriculado):
    </div>
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="codigo" DataValueField="codigo">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HADS2023ConnectionString %>" SelectCommand="SELECT [codigo] FROM [Asignatura]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HADS2023ConnectionString %>" SelectCommand="SELECT [codigo], [descripcion], [hEstimadas], [tipoTarea] FROM [TareaGenerica]"></asp:SqlDataSource>
        </div>
            <asp:GridView ID="GridView1" runat="server" Height="142px" Width="355px" AutoGenerateColumns="False" DataKeyNames="codigo" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="codigo" HeaderText="codigo" ReadOnly="True" SortExpression="codigo" />
                    <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
                    <asp:BoundField DataField="hEstimadas" HeaderText="hEstimadas" SortExpression="hEstimadas" />
                    <asp:BoundField DataField="tipoTarea" HeaderText="tipoTarea" SortExpression="tipoTarea" />
                </Columns>
            </asp:GridView>
    </form>
</body>
</html>
