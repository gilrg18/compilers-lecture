!/usr/bin/bash
#Gilberto Rogel García A01630171
if [ -f log ]
then
    echo "Hi, this is the output of the analysis:"
    echo -n "You have"
    #Expresiones regukares en bash
    grep -hP '^[ \t]+[a-z]*' log | 
    sed -r 's/[0-9a-fA-F][ \t][0-9a-fA-F]{2}[ \t]([0-9a-fA-F]{2})*/ /g' | 
    sed -r 's/[ \t][0-9a-fA-F]{2}[ \t]/ /g' |
    grep -hPo '[ \t][a-z]*' |  
    grep -hPo '[a-z]*' | 
    sort | 
    uniq -c | 
    wc -l | 
    xargs echo -n "";
    echo " kind of instructions in this object file:";
    grep -hP '^[ \t]+[a-z]*' log | 
    sed -r 's/[0-9a-fA-F]{2}[ \t][0-9a-fA-F]{2}[ \t]([0-9a-fA-F]{2})*/ /g' |
    sed -r 's/[ \t][0-9a-fA-F]{2}[ \t]/ /g' |
    grep -hPo '[ \t][a-z]*' |
    grep -hPo '[a-z]*' | 
    sort | 
    uniq -c;
    echo -n "You have"
    grep -hPo '[0-9a-fA-F]{16}[ \t]<[a-z-A-Z]*>' log |
    wc -l | 
    xargs echo -n "";
    echo " functions:";
    grep -hPo '[0-9a-fA-F]{16}[ \t]<[a-z-A-Z]*>' log
else
    echo "File does not exist"
fi