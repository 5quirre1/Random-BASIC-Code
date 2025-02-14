SCREEN 12
RANDOMIZE TIMER

DIM X(100), Y(100), Brightness(100), Size(100), TwinkleDelay(100)
DIM i, n, moonX, moonY, moonRadius


FOR i = 1 TO 100
    X(i) = INT(RND * 640)
    Y(i) = INT(RND * 480)
    Brightness(i) = INT(RND * 15) + 1
    Size(i) = INT(RND * 2) + 1
    TwinkleDelay(i) = INT(RND * 50) + 50
NEXT i


moonX = 500
moonY = 100
moonRadius = 40


DIM Lullaby(10)
Lullaby(1) = 131 ' C3
Lullaby(2) = 147 ' D3
Lullaby(3) = 165 ' E3
Lullaby(4) = 147 ' D3
Lullaby(5) = 131 ' C3
Lullaby(6) = 98  ' G2
Lullaby(7) = 131 ' C3
Lullaby(8) = 147 ' D3
Lullaby(9) = 165 ' E3
Lullaby(10) = 131 ' C3

lullabyIndex = 1
lullabyTimer = 0


DO

    COLOR 0
    PAINT (0, 0), 0, 0


    CIRCLE (moonX, moonY), moonRadius, 15
    PAINT (moonX, moonY), 15, 15
    CIRCLE (moonX - 15, moonY - 10), 8, 7
    PAINT (moonX - 15, moonY - 10), 7, 7
    CIRCLE (moonX + 20, moonY + 15), 5, 7
    PAINT (moonX + 20, moonY + 15), 7, 7

  
    FOR i = 1 TO 100
        TwinkleDelay(i) = TwinkleDelay(i) - 1

        IF TwinkleDelay(i) <= 0 THEN
            TwinkleDelay(i) = INT(RND * 50) + 50

            IF INT(RND * 3) = 0 THEN
                Brightness(i) = INT(RND * 15) + 1
            END IF
        END IF

        dx = X(i) - moonX
        dy = Y(i) - moonY
        distance = SQR(dx * dx + dy * dy)

        IF distance > moonRadius THEN
            COLOR Brightness(i)
            IF Size(i) = 1 THEN
                PSET (X(i), Y(i))
            ELSE
                CIRCLE (X(i), Y(i)), 1, Brightness(i)
            END IF
        END IF

    NEXT i

    lullabyTimer = lullabyTimer + 1

    IF lullabyTimer > 50 THEN
        SOUND Lullaby(lullabyIndex), 40
        lullabyIndex = lullabyIndex + 1
        IF lullabyIndex > 10 THEN lullabyIndex = 1
        lullabyTimer = 0
    END IF

    FOR n = 1 TO 250: NEXT n

    FOR n = 1 TO 250: NEXT n

LOOP UNTIL INKEY$ <> ""
