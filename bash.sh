>>>>>>BASH<<<<<<<

to define a string in bash like that x=ahmed so there are no spaces

example for input
#######################################################
#!/bin/bash


#this line will take from user his name

echo "please enter your name"

read -p "name : " first_name

echo "hi mr ${first_name}"
##################################################
 
for loop in bash

#######################################
for i in {0..10}

> do
> echo ${i}
> done

######################################


for debugging >> put set-x and set+x

put a command inside a variable

####################################
#!/bin/bash


var=`ls`
echo $var
################################
##############################
#!/bin/bash


x=`ls`
for i in $x
do
echo "the file name is ${i}"
done 
###############################

&&    and
||    or

test "salah" = "ahmed" && echo "true" || echo "this is false"
== sensitive to integer and string and means equal equal
-eq not sensitive 
so >> 001 == 1 is false
   >> 001 -eq 1 is true

-----------------------------------------
[ is equal test

------------------------------
if [ 1 -eq 1 ]
then
echo the value is one 
else 
echo the value is not one
fi
--------------------------------
# man test for more info
------------------------------------------------------
if [ $number -lt 125 ]
then
   echo "value is less than 125"
elif [ $number -lt 200 ]
then 
     echo "the value is between 125 and 200"

else
    echo "value is greater than 200"
fi
-------------------------------------------------------
if [ -f "./01Echo.sh" ]
then 
    echo "file exist"
else 
    echo "file not exist"
fi
same last example but in one line 

test -f "./01Echo.sh && echo "file exist" || echo "file doesn't exist"
--------------------------------------------------------------------------
>>>>>>>>MATH EXPRESSIONS<<<<<<<<<<
let sum=3+10
echo $sum
-----------------
expr 1 + 2
----------------
((x++))
echo "x=8, y=2"
echo $(( 3+ $y ))
echo $(( $x - $y ))

#  and there are also -= *= /=%= etc
---------------------------------------------------------------------------
-a   means  and
-o   means   or
if [ 1 -eq 1 -a 4 -gt 3 ]
then
    echo "#rule 1"
fi
# another method for and
if [ 1 -eq 1 ] && [ 4 -gt 3 ]
then
    echo "#rule 1"
fi
-----------------------------------------------
# NOTE you can use [][] or [[]]
----------------------------------------------
>>>>> ARGUMENT <<<<<<<<<<<<<<<<
echo $$  >> $$ refers to process ID
echo #0  >> name of the script
EXAMPLE
# in script
echo $$
echo $0
echo $1
# in terminal
process ID
name of script
first delimeter after the command like ./test.sh mohamed salah << here first delimeter is mohamed
$# means the count so if i have echo $1 and echo $2 so $# will print 2
$@ print all the values
#* same as $@ but string not list
$? check last command,, 0 means success or more than 0 means failed

we can do an example of $? 

if [ $? -eq 0 ]
then
    echo success
fi
-------------------------------------------------

