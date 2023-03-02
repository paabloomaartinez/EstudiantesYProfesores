Public Class InstanciarTarea
    Inherits System.Web.UI.Page

    Dim correo As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        correo = System.Web.HttpContext.Current.Session(“correo”)
    End Sub

End Class