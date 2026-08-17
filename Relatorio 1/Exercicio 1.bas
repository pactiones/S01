Dim kg As Integer
Dim agua As Integer
Dim conta As Integer

Print "DIGITE SEU PESO(em kg)"
Input kg

Print "DIGITE A QUANTIDADE DE AGUA INGERIDA NO DIA (em ml)"
Input agua

conta = kg * 35

if agua >= conta Then
    Print "Meta atingida!"
Else
    Print "Meta nao atingida"
End if
Sleep
