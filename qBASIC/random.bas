SCREEN 12
RANDOMIZE TIMER
DIM X, Y, Xp, Yp
DIM n, i

X = 0
Y = 0

FOR i = 1 TO 100000
    n = INT(RND * 100)
    
    IF n < 1 THEN
        Xp = X + (RND - 0.5) * 1
        Yp = Y + (RND - 0.5) * 1
    ELSEIF n >= 1 AND n <= 25 THEN
        Xp = X + (RND - 0.5) * 3
        Yp = Y + (RND - 0.5) * 3
    ELSEIF n > 25 AND n <= 50 THEN
        Xp = X + (RND - 0.5) * 5
        Yp = Y + (RND - 0.5) * 5
    ELSE
        Xp = X + (RND - 0.5) * 10
        Yp = Y + (RND - 0.5) * 10
    END IF

    X = Xp
    Y = Yp

    xx = X * 45
    yy = Y * 45 - 225

    PSET (xx + 320, -yy + 240)
NEXT i
