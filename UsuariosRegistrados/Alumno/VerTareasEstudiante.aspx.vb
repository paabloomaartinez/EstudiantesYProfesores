Public Class VerTareasEstudiante
    Inherits System.Web.UI.Page
    Dim correo As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        correo = System.Web.HttpContext.Current.Session(“correo”)
    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs)

    End Sub
End Class