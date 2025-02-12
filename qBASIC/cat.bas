CLS
SCREEN 0

DIM cat1$(5)
cat1$(0) = " /\_/\  "
cat1$(1) = "( o.o ) "
cat1$(2) = " > ^ <  "

DIM cat2$(5)
cat2$(0) = " /\_/\  "
cat2$(1) = "( -.- ) "
cat2$(2) = " > ^ <  "

DIM cat3$(5)
cat3$(0) = " /\_/\  "
cat3$(1) = "( o.O ) "
cat3$(2) = " > ^ <  "


LEFT_LIMIT = 1
RIGHT_LIMIT = 50

FOR blink = 1 TO 2
    CLS
    FOR i = 0 TO 2
        LOCATE 10 + i, LEFT_LIMIT
        IF blink MOD 2 = 0 THEN
            PRINT cat2$(i)
        ELSE
            PRINT cat1$(i)
        END IF
    NEXT i
    SLEEP 1
NEXT blink

CLS
FOR i = 0 TO 2
    LOCATE 10 + i, LEFT_LIMIT
    PRINT cat3$(i)
NEXT i
SLEEP 1

DO
    FOR x = LEFT_LIMIT TO RIGHT_LIMIT
        CLS
        FOR i = 0 TO 2
            LOCATE 10 + i, x
            IF x MOD 2 = 0 THEN
                PRINT cat1$(i)
            ELSE
                PRINT cat2$(i)
            END IF
        NEXT i
        SLEEP 1
    NEXT x

    FOR x = RIGHT_LIMIT TO LEFT_LIMIT STEP -1
        CLS
        FOR i = 0 TO 2
            LOCATE 10 + i, x
            IF x MOD 2 = 0 THEN
                PRINT cat1$(i)
            ELSE
                PRINT cat3$(i)
            END IF
        NEXT i
        SLEEP 1
    NEXT x
    LOCATE 9, 5
    PRINT "meow!"
    FOR freq = 700 TO 900 STEP 50
        SOUND freq, 2
    NEXT freq
    FOR freq = 900 TO 700 STEP -50
        SOUND freq, 2
    NEXT freq



LOOP UNTIL INKEY$ <> ""

END

