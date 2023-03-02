Imports System.Data.SqlClient

Public Class WebForm2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblContraError.Text() = ""
        lblUserError.Text() = ""

        Dim con = New SqlConnection("Server=tcp:hads2023-jon.database.windows.net,1433;Initial Catalog=HADS2023;Persist Security Info=False;User ID=jortega045@ikasle.ehu.eus@hads2023-jon;Password=Ho44la55;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;")
        Dim da = New SqlDataAdapter("select * from Usuario", con)
        Dim ds As New DataSet
        da.Fill(ds, "Usuario")
        Dim tbUsuario As New DataTable
        tbUsuario = ds.Tables("Usuario")
        Session("connection") = con
        Session("tablaUsuarios") = tbUsuario
    End Sub

    Protected Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click
        Dim tbUsuarios As DataTable = Session("tablaUsuarios")

        Dim correo = tbCorreo.Text
        Dim contrasenia = tbContrasenia.Text

        For Each row As DataRow In tbUsuarios.Rows
            Dim confirmado As Byte = row("confirmado")
            Dim email As String = row("email")
            If (email = correo) And (confirmado) Then
                Dim pass As String = row("pass")
                If pass = contrasenia Then
                    Dim tipo As String = row("tipo")
                    Session("rol") = tipo
                    Session("correo") = email
                    If tipo = "Profesor" Then
                        Response.Redirect("./Profesor/Profesor.aspx")
                    Else
                        Response.Redirect("./Alumno/Alumno.aspx")
                    End If
                End If
            End If
        Next row

        MsgBox("Email o contraseña incorrectos.")

    End Sub
End Class