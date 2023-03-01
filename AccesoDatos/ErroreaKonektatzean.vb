Public Class ErroreaKonektatzean
    Inherits ApplicationException 'aplikazio-salbuespenen klasea

    'eraikitzailea birdefinitu (gurasoarenaz baliatuz)
    Public Sub New _
    (Optional ByVal Mezua As String =
    "Errorea: Ezin izan da datu-basearekiko konexioa egin.")
        MyBase.New(Mezua) 'gurasoaren eraikitzaileari deituz
    End Sub
End Class
