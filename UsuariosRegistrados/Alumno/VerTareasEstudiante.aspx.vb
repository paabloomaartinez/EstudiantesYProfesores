Imports System.Data.SqlClient

Public Class WebForm3
    Inherits System.Web.UI.Page
    Dim tbTareas As New DataTable
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim con As SqlConnection = Session("connection")
        Dim da = New SqlDataAdapter("Select TareaGenerica.Codigo, TareaGenerica.Descripcion, TareaGenerica.hEstimadas, TareaGenerica.tipoTarea, TareaGenerica.CodAsig 
                from TareaGenerica Join Asignatura On
                TareaGenerica.CodAsig = Asignatura.Codigo", con)
        Dim ds As New DataSet
        da.Fill(ds, "TareaGenerica")

        tbTareas = ds.Tables("TareaGenerica")
        GridView1.DataSource = tbTareas
        GridView1.DataBind()

    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        Dim cod As String = Convert.ToString(DropDownList1.SelectedItem)
        Dim tbTareasAsig As New DataTable

        For Each row As DataRow In tbTareas.Rows
            If (row("CodAsig") = cod) Then
                tbTareasAsig.Rows.Add(row)
            End If
        Next
        GridView1.DataSource = tbTareasAsig
        GridView1.DataBind()
    End Sub
End Class