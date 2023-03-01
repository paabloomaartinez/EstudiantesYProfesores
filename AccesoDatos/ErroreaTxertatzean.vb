Imports System.Runtime.Serialization
Public Class ErroreaTxertatzean
    Inherits ApplicationException 'aplikazio-salbuespenen klasea

    'eraikitzailea birdefinitu (gurasoarenaz baliatuz)
    Public Sub New _
    (Optional ByVal Mezua As String =
    "Errorea: Ezin izan da erabiltzaile berri bat txertatu.")
        MyBase.New(Mezua) 'gurasoaren eraikitzaileari deituz
    End Sub
End Class
