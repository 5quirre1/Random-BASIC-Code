PRINT "Enter full fare"
INPUT FARE
PRINT "Enter age"
INPUT AGE
'
'Calculate discount based on age

IF AGE < 12 THEN 
  LET RATE = 0.0 

ELSEIF AGE  < 24 THEN
  LET RATE = 0.70 

ELSEIF  AGE < 65 THEN
  LET RATE = 1.0
   
ELSE
  LET RATE = 0.75

END IF

'Calculate fare
PRINT "Your fare is:", FARE * RATE
END
