CLS
SCREEN 0

DIM cat$(3, 3)
cat$(0, 0) = " /\_/\  "
cat$(0, 1) = "( o.o ) "
cat$(0, 2) = " > ^ <  "

cat$(1, 0) = " /\_/\  "
cat$(1, 1) = "( -.- ) "
cat$(1, 2) = " > ^ <  "

cat$(2, 0) = " /\_/\  "
cat$(2, 1) = "( o.O ) "
cat$(2, 2) = " > ^ <  "

LEFT_LIMIT = 1
RIGHT_LIMIT = 50


FOR blink = 1 TO 4
    CLS
    FOR i = 0 TO 2
        LOCATE 10 + i, LEFT_LIMIT
        PRINT cat$((blink MOD 2), i)
    NEXT i
    SLEEP 1
NEXT blink


CLS
FOR i = 0 TO 2
    LOCATE 10 + i, LEFT_LIMIT
    PRINT cat$(2, i)
NEXT i
SLEEP 1

DO
    
    FOR x = LEFT_LIMIT TO RIGHT_LIMIT
        CLS
        FOR i = 0 TO 2
            LOCATE 10 + i, x
            PRINT cat$(x MOD 2, i)
        NEXT i
        SLEEP 0.8
        IF INKEY$ <> "" THEN END
    NEXT x

    
    FOR x = RIGHT_LIMIT TO LEFT_LIMIT STEP -1
        CLS
        FOR i = 0 TO 2
            LOCATE 10 + i, x
            PRINT cat$((x MOD 2) + 1, i)
        NEXT i
        SLEEP 0.8
        IF INKEY$ <> "" THEN END
    NEXT x

    
    LOCATE 9, 5
    PRINT "meow!"
    FOR freq = 700 TO 1000 STEP 60
        SOUND freq, 2
    NEXT freq
    FOR freq = 1000 TO 700 STEP -60
        SOUND freq, 2
    NEXT freq

LOOP
