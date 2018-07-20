date=raw_input("input the date")
new_date=date.split('-')
print new_date
year=2000 + int(new_date[2])


month={'01':"January",'02':"February",'03':"March",'04':'April','05':'May','06':'June',
'07':'July','08':'August','09':'September','10':'October','11':'November','12':'December'}

for value in month:
    print new_date[0],(month[new_date[1]]) ,year
    break



