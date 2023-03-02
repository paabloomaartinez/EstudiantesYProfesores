Imports System.Data.SqlClient

Public Class Estudiante
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim con As SqlConnection = Session("connection")
        Dim da = New SqlDataAdapter("FALTA PONER LA QUERY", con)
        Dim ds As New DataSet
        da.Fill(ds, "Usuario")
        Dim tbUsuario As New DataTable
        tbUsuario = ds.Tables("Usuario")
        Session("tablaUsuarios") = tbUsuario
    End Sub

End Class