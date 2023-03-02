Imports System.Data.SqlClient

Public Class WebForm5
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim con As SqlConnection = Session("connection")
        Dim email As String = Session("correo")
        Dim ds As New DataSet
        Dim tbEstudianteTarea = ds.Tables("EstudianteTarea")
        Session("tablaEstudianteT") = tbEstudianteTarea
        Session("dataSet") = ds

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        
    End Sub
End Class