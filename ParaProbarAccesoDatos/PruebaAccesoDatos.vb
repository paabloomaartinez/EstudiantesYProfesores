Imports System.Data.SqlClient

Module PruebaAccesoDatos

    Sub Main()

        Try
            AccesoDatos.AccesoDatos.Konektatu()
            Console.WriteLine("Acceso a datos conectado.")
        Catch ex As AccesoDatos.ErroreaKonektatzean
            Console.WriteLine("Error al contectarse a la BD!")
        End Try

        DrawMenu()
        Dim seleccion As Integer = Console.ReadLine()

        Select Case seleccion
            Case 1
                Console.WriteLine("Introduzca los siguientes campos")
                Console.WriteLine("-------------------------------------")
                Console.Write("Nombre: ")
                Dim nombre As String = Console.ReadLine()
                Console.Write("Apellido: ")
                Dim apellido As String = Console.ReadLine()
                Console.Write("Correo electronico. ")
                Dim correo As String = Console.ReadLine()
                Console.Write("Contrasenia: ")
                Dim contrasenia As String = Console.ReadLine()
                Console.Write("Pregunta oculta: ")
                Dim pregunta As String = Console.ReadLine()
                Console.Write("Respuesta a la pregunta oculta: ")
                Dim respuesta As String = Console.ReadLine()
                Console.Write("Numero de telefono (para verificacion): ")
                Dim numTlf As Integer = Console.ReadLine()
                Console.WriteLine("-------------------------------------")

                Try
                    AccesoDatos.AccesoDatos.ErabiltzaileaTxertatu(correo, nombre, apellido, pregunta, respuesta, 0, numTlf, False, Nothing, Nothing, Nothing, contrasenia)
                    Console.WriteLine("Nuevo usuario creado!")
                Catch ex As AccesoDatos.ErroreaTxertatzean
                    Console.WriteLine("Error al introducir los datos!")
                    AccesoDatos.AccesoDatos.ItxiKonexioa()
                End Try

            Case 2
                Console.Write("Introduce la direccion de email: ")
                Dim correo As String = Console.ReadLine()
                Dim usrData As SqlDataReader = Nothing

                Try
                    usrData = AccesoDatos.AccesoDatos.ErabiltzaileakLortu(correo)
                    If usrData.HasRows Then
                        ' Recorrer todas las filas del SqlDataReader
                        While usrData.Read()
                            ' Acceder a los valores de las columnas por su nombre o por su posición
                            Dim email As String = usrData("email").ToString()
                            Dim izena As String = usrData("izena").ToString()
                            Dim abizena As String = usrData("abizena").ToString()
                            Dim pasahitza As String = usrData("pasahitza").ToString()

                            ' Mostrar los valores en la consola
                            Console.WriteLine("Email: " & email)
                            Console.WriteLine("Nombre: " & izena)
                            Console.WriteLine("Apellido: " & abizena)
                            Console.WriteLine("Contraseña: " & pasahitza)
                        End While
                    Else
                        Console.WriteLine("No hay ningún usuario con el email indicado.")
                    End If
                Catch ex As AccesoDatos.ErroreaIrakurtzean
                    Console.WriteLine("Error al introducir los datos!")
                    AccesoDatos.AccesoDatos.ItxiKonexioa()
                End Try

            Case 3
                Console.Write("Introduce la direccion de email: ")
                Dim correo As String = Console.ReadLine()
                Dim regAfectados As Integer

                Try
                    regAfectados = AccesoDatos.AccesoDatos.ErabiltzaileaEgiaztatu(correo)
                    Console.WriteLine(regAfectados & " registro(s) verificado(s).")
                Catch ex As Exception
                    Console.WriteLine("Error al modificar los datos!")
                    AccesoDatos.AccesoDatos.ItxiKonexioa()
                End Try

            Case 4

                Console.Write("Introduce la direccion de email: ")
                Dim correo As String = Console.ReadLine()
                Console.Write("Introduce la nueva contrasenia: ")
                Dim contrasenia As String = Console.ReadLine()

                Try
                    AccesoDatos.AccesoDatos.ErabiltzailearenPasahitzaAldatu(correo, contrasenia)
                    Console.WriteLine("Contrasenia actualizada.")
                Catch ex As Exception
                    Console.WriteLine("Error al modificar los datos!")
                    AccesoDatos.AccesoDatos.ItxiKonexioa()
                End Try

            Case 5
                AccesoDatos.AccesoDatos.ItxiKonexioa()
                Console.WriteLine("Conexion con la BD cerrada.")
            Case Else
                Console.WriteLine("Numero introducido no valido!")
        End Select

        Console.Write("----PULSA ENTER PARA FINALIZAR----")
        Console.ReadLine()

    End Sub

    Private Sub DrawMenu()
        Console.WriteLine()
        Console.WriteLine("1. Insertar usuario")
        Console.WriteLine("2. Obtener usuario")
        Console.WriteLine("3. Comprobar usuario")
        Console.WriteLine("4. Modificar contrasenia usuario")
        Console.WriteLine("5. Cerrar conexion")
        Console.WriteLine()
        Console.Write("Introduce un numero referente a la accion que quieras realizar: ")
    End Sub

End Module
