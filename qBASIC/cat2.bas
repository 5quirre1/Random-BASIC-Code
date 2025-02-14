CLS

DIM cat$(2, 3)
cat$(0, 0) = " /\_/\ "
cat$(0, 1) = "( o.o ) "
cat$(0, 2) = " > ^ < "

cat$(1, 0) = " /\_/\ "
cat$(1, 1) = "( -.- ) "
cat$(1, 2) = " > ^ < "

cat$(2, 0) = " /\_/\ "
cat$(2, 1) = "( o.O ) "
cat$(2, 2) = " > ^ < "

DIM catHappy$(0, 2)
catHappy$(0, 0) = " /\_/\ "
catHappy$(0, 1) = "( ^.^ ) "
catHappy$(0, 2) = " > ^ < "

LEFT_LIMIT = 1
RIGHT_LIMIT = 50
score = 0
catX = 25
catY = 10
snackX = INT(RND * (RIGHT_LIMIT - LEFT_LIMIT + 1)) + LEFT_LIMIT
snackY = INT(RND * 20) + 1

DO
    CLS

    IF catX = snackX AND catY = snackY THEN
        score = score + 1
        SOUND 440, 0.2
        FOR i = 0 TO 2
            LOCATE catY + i, catX
            PRINT catHappy$(0, i)
        NEXT i
        SLEEP 0.5
        snackX = INT(RND * (RIGHT_LIMIT - LEFT_LIMIT + 1)) + LEFT_LIMIT
        snackY = INT(RND * 20) + 1
    ELSE
        FOR i = 0 TO 2
            LOCATE catY + i, catX
            PRINT cat$(score MOD 3, i)
        NEXT i
    END IF

    LOCATE 1, 1
    PRINT "Score: "; score
    LOCATE snackY, snackX
    PRINT "$"

    IF snackX > catX AND catX < RIGHT_LIMIT THEN catX = catX + 1
    IF snackX < catX AND catX > LEFT_LIMIT THEN catX = catX - 1
    IF snackY > catY THEN catY = catY + 1
    IF snackY < catY THEN catY = catY - 1

    SLEEP 0.1
LOOP
