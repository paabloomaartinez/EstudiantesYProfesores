Imports System.Data.SqlClient

Public Class WebForm2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblContraError.Text() = ""
        lblUserError.Text() = ""
    End Sub

    Protected Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click
        AccesoDatos.AccesoDatos.Konektatu()

        Dim correo As String = tbCorreo.Text()
        Dim contra As String = tbContrasenia.Text()

        Dim user As SqlDataReader = AccesoDatos.AccesoDatos.ErabiltzaileakLortu(correo)

        If user.HasRows Then
            While user.Read()
                Dim pasahitza As String = user("pass").ToString()
                Dim egiaztatua As Boolean = user("confirmado")
                Dim tipo As String = user("tipo").ToString()

                If contra = pasahitza Then
                    If egiaztatua Then
                        System.Web.HttpContext.Current.Session(“correo”) = correo
                        AccesoDatos.AccesoDatos.ItxiKonexioa()
                        If tipo = "Profesor" Then
                            Response.Redirect("Profesor.aspx")
                        ElseIf tipo = "Alumno" Then
                            Response.Redirect("Alumno.aspx")
                        End If
                    Else
                            lblContraError.Text() = "El usuario no esta verificado."
                    End If
                Else
                    lblContraError.Text() = "Contraseña incorrecta."
                End If
            End While
        Else
            lblUserError.Text() = "No existe el correo."
        End If
        AccesoDatos.AccesoDatos.ItxiKonexioa()
    End Sub
End Class