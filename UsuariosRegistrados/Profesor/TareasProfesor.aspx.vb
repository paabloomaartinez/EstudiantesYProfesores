Imports System.Data.SqlClient

Public Class WebForm4
    Inherits System.Web.UI.Page

    Dim tbTareas As New DataTable
    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged

        Dim cod As String = Convert.ToString(DropDownList1.SelectedItem)
        Dim tbTareasAsig As New DataTable

        Dim con As SqlConnection = Session("connection")
        Dim da = New SqlDataAdapter("Select TareaGenerica.Codigo, TareaGenerica.Descripcion, Asignatura.Codigo As CodAsig, TareaGenerica.hEstimadas As HEstimadas, TareaGenerica.explotacion As Explotacion, TareaGenerica.tipoTarea As Tipo
                from TareaGenerica Join Asignatura On
                TareaGenerica.CodAsig = Asignatura.Codigo 
                where (TareaGenerica.CodAsig) = ('" & cod & "')", con)
        Dim ds As New DataSet
        da.Fill(ds, "TareaGenerica")

        tbTareas = ds.Tables("TareaGenerica")
        GridView1.DataSource = tbTareas
        GridView1.DataBind()
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("InsertarTarea.aspx")
    End Sub
End Class