Screen 12
Color _rgb(Rnd * 255, Rnd * 255, Rnd * 255)
Dim As Single X, Y, Xp, Yp 
Dim As Integer n, i


X = 0
Y = 0

For i = 1 To 100000
    n = Rnd * 100
    
    If n < 1 Then
        Xp = X + (Rnd - 0.5) * 1
        Yp = Y + (Rnd - 0.5) * 1
    ElseIf n >= 1 And n <= 25 Then
        Xp = X + (Rnd - 0.5) * 3
        Yp = Y + (Rnd - 0.5) * 3
    ElseIf n > 25 And n <= 50 Then
        Xp = X + (Rnd - 0.5) * 5
        Yp = Y + (Rnd - 0.5) * 5
    Else
        Xp = X + (Rnd - 0.5) * 10
        Yp = Y + (Rnd - 0.5) * 10
    End If


    X = Xp
    Y = Yp

    xx = X * 45
    yy = Y * 45 - 225

    Pset (xx + 320, -yy + 240)
Next i
