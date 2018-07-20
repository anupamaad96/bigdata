import random

def password():

    alpha=['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
    pwalpha=random.choice(alpha)
    cap=['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']
    pwcap=random.choice(cap)
    specl=['!','@','#','$','%','&','*']
    pwspl=random.choice(specl)
    numb=['1','2','3','4','5','6','7','8','9','0']
    pwnum=random.choice(numb)
    listed=[pwalpha,pwcap,pwspl,pwnum,pwnum,pwalpha]
    st=''.join(listed)
    return st
a=raw_input("do you want to edit a new password?(y,if yes)")
while a=='y' or a=='Y':
    print password()

    a=raw_input("do you want to edit a new password?(y,if yes)")

