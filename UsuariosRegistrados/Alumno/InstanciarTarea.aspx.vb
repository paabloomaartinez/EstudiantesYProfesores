Imports System.Data.SqlClient

Public Class InstanciarTarea
    Inherits System.Web.UI.Page

    Dim correo As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        lblMsg.Text() = ""
        Dim con As SqlConnection = Session("connection")
        Dim email As String = Session("correo")
        Dim da = New SqlDataAdapter("select * from EstudianteTarea where (email) = ('" & email & "')", con)
        Dim ds As New DataSet
        da.Fill(ds, "EstudianteTarea")
        Dim tbEstudianteTarea = ds.Tables("EstudianteTarea")
        Session("tablaEstudianteT") = tbEstudianteTarea
        Session("adaptador") = da
        Session("dataSet") = ds

        txtUsuario.Text() = Session("correo")
        txtTarea.Text() = Session("codTarea")
        txtEstimado.Text() = Session("hEstimadas")
        GridView1.DataSource = tbEstudianteTarea
        GridView1.DataBind()

    End Sub

    Protected Sub btnCrear_Click(sender As Object, e As EventArgs) Handles btnCrear.Click
        Dim tbEstudianteTarea = Session("tablaEstudianteT")
        Dim codigo As String = Session("codTarea")
        For Each row As DataRow In tbEstudianteTarea.Rows
            Dim codTarea As String = row("codTarea")
            If codTarea = codigo Then
                lblMsg.Text() = "Esta tarea ya está instanciada."
            Else
                Dim R As DataRow = tbEstudianteTarea.NewRow
                R("email") = Session("correo")
                R("codTarea") = Session("codTarea")
                R("hEstimadas") = Session("hEstimadas")
                R("hReales") = txtReales.Text()
                tbEstudianteTarea.Rows.Add(R)
                GridView1.DataSource = tbEstudianteTarea
                GridView1.DataBind()
                Dim da = Session("adaptador")
                Dim bldMbrs As New SqlCommandBuilder(da)
                Dim ds = Session("dataSet")
                da.Update(ds, "EstudianteTarea")
                ds.AcceptChanges()
                lblMsg.Text() = "Tarea instanciada correctamente."
                Exit For
            End If
        Next


    End Sub
End Class