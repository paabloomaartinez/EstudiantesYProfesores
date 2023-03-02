Imports System.Data.SqlClient

Public Class WebForm3
    Inherits System.Web.UI.Page
    Dim tbTareas As New DataTable

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        Dim cod As String = Convert.ToString(DropDownList1.SelectedItem)
        Dim tbTareasAsig As New DataTable

        Dim con As SqlConnection = Session("connection")
        Dim da = New SqlDataAdapter("Select TareaGenerica.Codigo, TareaGenerica.Descripcion, TareaGenerica.hEstimadas, TareaGenerica.tipoTarea, TareaGenerica.CodAsig 
                from TareaGenerica Join Asignatura On
                TareaGenerica.CodAsig = Asignatura.Codigo 
                where (CodAsig) = ('" & cod & "')", con)
        Dim ds As New DataSet
        da.Fill(ds, "TareaGenerica")

        tbTareas = ds.Tables("TareaGenerica")
        GridView1.DataSource = tbTareas
        GridView1.DataBind()


    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim celda As GridViewRow = GridView1.SelectedRow
        Dim codTarea As String = celda.Cells(1).Text
        Dim horas As String = celda.Cells(3).Text
        MsgBox(codTarea)
        MsgBox(horas)

        Session("codTarea") = codTarea
        Session("hEstimadas") = horas
        Response.Redirect("InstanciarTarea.aspx?codigo=" + codTarea + "&he=" + horas)
    End Sub
End Class