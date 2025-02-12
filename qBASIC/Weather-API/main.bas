IF DIR$("weather.dat") = "" THEN
    PRINT "Error: Weather data file not here"
    END
END IF


OPEN "weather.dat" FOR INPUT AS #1
LINE INPUT #1, temperature$
CLOSE #1


PRINT "Current temperature: "; TRIM$(temperature$) 
