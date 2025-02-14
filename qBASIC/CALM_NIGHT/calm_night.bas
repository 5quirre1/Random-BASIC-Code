Screen 12
Randomize Timer

Dim X(100), Y(100), Brightness(100), Size(100), TwinkleDelay(100)
Dim i, n, moonX, moonY, moonRadius

For i = 1 To 100
    X(i) = Int(Rnd * 640)
    Y(i) = Int(Rnd * 480)
    Brightness(i) = Int(Rnd * 15) + 1
    Size(i) = Int(Rnd * 2) + 1
    TwinkleDelay(i) = Int(Rnd * 50) + 50
Next i

moonX = 500
moonY = 100
moonRadius = 40
soundHandle& = _SndOpen("greg.wav", "VOL")

' Play the sound
_SndPlay soundHandle&

Do

    If Not _SndPlaying(soundHandle&) Then
        _SndPlay soundHandle&
    End If

    Color 0
    Paint (0, 0), 0, 0


    Circle (moonX, moonY), moonRadius, 15
    Paint (moonX, moonY), 15, 15
    Circle (moonX - 15, moonY - 10), 8, 7
    Paint (moonX - 15, moonY - 10), 7, 7
    Circle (moonX + 20, moonY + 15), 5, 7
    Paint (moonX + 20, moonY + 15), 7, 7


    For i = 1 To 100
        TwinkleDelay(i) = TwinkleDelay(i) - 1

        If TwinkleDelay(i) <= 0 Then
            TwinkleDelay(i) = Int(Rnd * 50) + 50
            If Int(Rnd * 3) = 0 Then
                Brightness(i) = Int(Rnd * 15) + 1
            End If
        End If

        dx = X(i) - moonX
        dy = Y(i) - moonY
        distance = Sqr(dx * dx + dy * dy)

        If distance > moonRadius Then
            Color Brightness(i)
            If Size(i) = 1 Then
                PSet (X(i), Y(i))
            Else
                Circle (X(i), Y(i)), 1, Brightness(i)
            End If
        End If
    Next i


    For n = 1 To 250: Next n
    For n = 1 To 250: Next n

Loop Until InKey$ <> ""


_SndStop soundHandle&
_SndClose soundHandle&

End

