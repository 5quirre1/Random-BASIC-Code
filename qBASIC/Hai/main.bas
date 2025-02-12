OPEN "input.txt" FOR OUTPUT AS #1
INPUT "Enter your name: ", username$
PRINT #1, username$
CLOSE #1
SHELL "python main.py"
