DIM name$
INPUT "what name? "; name$

GOSUB greeting
END

greeting:
    PRINT "hai "; name$; "!"
    RETURN
