10 PRINT "g pick number between 1 and 20"
20 N = INT( RND(1) * 20 ) + 1
30 INPUT "u: "; G
40 IF G = N THEN PRINT "Got it!" : PRINT : PRINT "Press any key: " : GET A$ : GOTO 70
50 IF G < N THEN PRINT "Too low" : GOTO 30
60 IF G > N THEN PRINT "Too high" : GOTO 30
70 end
