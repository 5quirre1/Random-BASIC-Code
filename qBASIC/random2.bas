RANDOMIZE TIMER

DIM greg$(6)
greg$(1) = "greg"
greg$(2) = "wow"
greg$(3) = "greg4"
greg$(4) = "skibidi"
greg$(5) = "g"
randomIndex = INT(RND * 5) + 1

PRINT "random is: ";greg$(randomIndex)
