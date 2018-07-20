print "Rock Paper Scissors"
print"r-Rock...p-Paper...s-Scissors"
chances=10
p1=0
p2=0
while chances > 0:
    in_1=raw_input("Player1: Choose r/p/s?")
    in_2=raw_input("Player2: Choose r/p/s?")
    if in_1 != in_2 :                                #for the different inputs

        if in_1=='r':
            if in_2=='p':
                p2+=1
            else:
                p1+=1
            chances-=1
        elif in_1=='p':
            if in_2=='s':
                p2+=1
            else:
                p1+=1
            chances-=1
        elif in_1=='s':
            if in_2=='r':
                p2+=1
            else:
                p1+=1
            chances-=1
        else:

            chances-=1
    else:
        print"same inputs the score will be null"                  #inputs if appear same
        chances-=1

if (p1>p2):
    print "Player 1 wins by ", p1,"and player 2 gets ",p2
elif (p1<p2):
    print "Player 2 wins by ", p2,"and player 1 gets ",p1
else:
    print "it is a tie ,each scores: ",p1











