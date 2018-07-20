import random
f=open("scramble.txt","r")
f1=open('new',"w")
textfile=f.read().split()
print (textfile)
tf=str(textfile)
print (tf)

for word in textfile:

    scrambled = ""
    newword=word[1:-1]
    if len(word)>3 :
        while newword:
            pos=random.randrange(len(newword))
            scrambled += newword[pos]
            newword = newword[:pos] + newword[(pos+ 1):]
    else:
        scrambled=newword

    print word[0]+scrambled+word[-1]
    scrwor=word[0]+scrambled+word[-1]+" "
    f1.write(scrwor)
f1.close
f.close