Dim pin As Integer
Dim pinFixo As Integer
pinFixo = 1234

Print "Digite o PIN de acesso"
Input pin

While pin <> pinFixo
    Print "PIN invalido. Tente novamente."
    Print "Digite o PIN novamente"
    Input pin
Wend

Print "Transacao autorizada!"
Sleep
