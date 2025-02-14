Screen 12

CENTERX = 320
CENTERY = 240
RADIUS = 100

Circle (CENTERX, CENTERY), RADIUS

For i = 0 To 11
    ANGLE = (i * 30) * 3.14159 / 180
    X1 = CENTERX + RADIUS * Cos(ANGLE)
    Y1 = CENTERY - RADIUS * Sin(ANGLE)
    Line (CENTERX, CENTERY)-(X1, Y1), 15
Next

For i = 1 To 12
    ANGLE = (i * 30) * 3.14159 / 180
    NUMX = CENTERX + (RADIUS * 0.75) * Cos(ANGLE)
    NUMY = CENTERY - (RADIUS * 0.75) * Sin(ANGLE)
    Locate NUMY / 20 + 1, NUMX / 10 + 1
    Print i
Next

Do
    Cls
    HOUR = Val(Mid$(Time$, 1, 2))
    MINUTE = Val(Mid$(Time$, 4, 2))
    SECOND = Val(Mid$(Time$, 7, 2))

    HOURANGLE = ((HOUR Mod 12) + MINUTE / 60) * 30
    Xh = CENTERX + (RADIUS * 0.5) * Cos(HOURANGLE * 3.14159 / 180)
    Yh = CENTERY - (RADIUS * 0.5) * Sin(HOURANGLE * 3.14159 / 180)
    Line (CENTERX, CENTERY)-(Xh, Yh), 15

    MINUTEANGLE = (MINUTE * 6)
    Xm = CENTERX + (RADIUS * 0.8) * Cos(MINUTEANGLE * 3.14159 / 180)
    Ym = CENTERY - (RADIUS * 0.8) * Sin(MINUTEANGLE * 3.14159 / 180)
    Line (CENTERX, CENTERY)-(Xm, Ym), 12

    SECONDANGLE = (SECOND * 6)
    Xs = CENTERX + (RADIUS * 0.9) * Cos(SECONDANGLE * 3.14159 / 180)
    Ys = CENTERY - (RADIUS * 0.9) * Sin(SECONDANGLE * 3.14159 / 180)
    Line (CENTERX, CENTERY)-(Xs, Ys), 14

    PSet (CENTERX, CENTERY), 15

    Sleep 1

Loop Until InKey$ <> ""

End
