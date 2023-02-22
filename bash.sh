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

   and there are also -= *= /=%= etc
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
>>>>arguments with array<<<
echo ${args[0]} ${args[1]} ${args[2]} ' -> args=("$@"); echo ${args[0]} ${args[1]} ${args[2]}
# command will be ./bash.sh mohamed salah mohamed habib
# result >> will print all the name
---------------------------------------------------------
for i in "$*" 
do
echo $i
done
-----------------------------------------------------
>>>switch case<<<
case variable name in
put your cases 
esac
>>>>>>>>>>>>>>example
case $answer in
yes|YES|Yes)
echo hello world
;;
no)
echo false
;;
*)
echo default
;;
esac
--------------------------------------------------------------------
>>>>string<<<<
for comparisons 
!=      not equal
=       equal
\<      must put \ before < or > 
--------------------------------------
str="welcome to python"
length=${#str}
echo "lengthof '$str' is $length"

#inside the command itself
command | wc     >> lines, word and characters
command | wc -c     characters only
command | wc -w  
command | wc -l     lines only
----------------
#can put args inside the script like 
length=`echo $str | wc -c`
----------------------------------------------
IFS can change the spaces between delimeters with anything else 
str="mohamed:salah:mohamed"
IFS=':'
# transform the string to array
read -ra ADDR <<<"$str" #reading str as an array as tokens separated by IFS
echo ${ADDR[0]}
len=${#str}
echo ${len}
# will run mohamed only
# will run length of str
--------------------------------------------
# all elements of array ${ADDR[@]}
for i in "${ADDR[@]}"; #accessing each element of array
do
echo "$i"
done
# every word of str will be printed in one line
----------------------------------------------------------
# take a specific part of str
str="study smart commands with fosslinux"
subStr=${Str:0:20}
echo $subStr
# will run from 0 to 20 first characters only
----------------------------------------------------------
>>>Function<<<
#!/bin/bash
function test(){
    echo "welcome"
}
test
-------------------
DisplayHello()
{
echo "Hello Function"
}

DisplayHello
-------------------------
DisplayHelloArgument(){
echo $1 $2 $3
}

DisplayHelloArgument "hello" "world" "EgyPT"
---------------------------------------------
add()
{
    sum=$(($1 + $2))
    return $sum
}
a=10
b=20
add $a $b
result=$?  #for return
echo $result
---------------------------
 >>Lab2<<
 #!/bin/bash
 function json_parser_usingpython {
 res=`curl "api url for azan and pray time" | json_pp `

    export json_file=$res 
    python -c "import os,json; x=os.environ['json_file] ;
    body=json.loads(x)['data]['timings] 
    # print(type(body))
    for i,j in  body.items():
    print (i,j)
    "
 }
function json_parser_usingBash {
    echo ${res} | jq .

}
json_parser_usingpython
------------------------------------ or with bash
 #!/bin/bash
 
function json_parser_usingBash {
res=`curl "api url for azan and pray time" | jq `
    # echo ${res} | jq .
    echo ${res} | jq 'data.timing'
}
json_parser_usingBash
---------------------------------------------------------
>>>array<<<
#!/bin/bash
#Script to print an element of an array with an index of 2

declaring -> decelare -a ARRAY_NAME=( "Java""Python""HTML""CSS""JavaScript" ) 
${ARRAY_NAME[index]} // Get Value 
${ARRAY_NAME[@]}  //All Elements 
${#ARRAY_NAME[@]} //Length 
${!ARRAY_NAME[index]} //keys of array
unset ARRAY_NAME[index]  //delete 
SLICED_ARRAY=("${ARRAY_NAME[@]:m:n}")  


declare -a example_array=( "Welcome" "To" "Javatpoint" )

#printing the element with index of 2
echo "Array" 
echo ${example_array[2]}
######################################################

#Printing Array Length
echo "The array contains ${#example_array[@]} elements"
######################################################

#Array
for i in "${!example_array[@]}" 
do 
echo "The key value of element ${example_array[$i]}" is "$i" 
done
# ! represent that the value of i is a list of keys
######################################################
#!/bin/bash  
#Script to slice Array Element from index 1 to index 3  
  
#Declaring the Array  
example_array=( "Java""Python""HTML""CSS""JavaScript" )  
  
#Slicing the Array   
sliced_array=("${example_array[@]:1:3}")  
  
#Applying for loop to iterate over each element in Array  
for i in "${sliced_array[@]}"  
do  
echo $i  
done  
-------------------------------------------------------------------------
>>>select<<<
select name in mohamed salah mohamed
do
echo $name
done
----------------
select name in mohamed salah mohamed
do
    case ${name} in
    mohamed)
        echo "hi ${name}"
    ;;
    *)
    break
    ;;
    esac
done
-----------------------------------------------
x=10
x=4
readonly x

echo $x   #equal 4
x=12 #erorr because it's after readonly keyword
--------------------------------------------------
hi (){
    echo "hi"
}
readonly -f hi  # cannot overwrite again
hi(){
    echo "welcome" # will print hi only and not welcome
}
-------------------------------------------------------
echo "total arguments passed are: $#"
echo "the arguments are: $@"
echo "the first argument is: $1"
shift 2
echo "the first argument after shift 2 is: $1"
shift
echo "the first argument after shift is: $1"
--------------------------------------------------------
#!/bin/bash
SUCCESS=" 0% packet"
for i in {1..10}  #wildcard
do
    result=`ping "192.168.100.${i}" -c 1 -W 1`
    # echo ${result}
    if [[ ${result} == *${SUCCESS}* ]]
    then
        echo "192.168.100.${i} is exist"
        fi
done
---------------------------------------------------------
#!/bin/bash
IMAGE_DIR="image_path"
img=`ls ${IMAGE_DIR} | grep sdimg | head -n 1` 
select option in flash erase
do
    case ${option} in
    flash)
    echo " flashing rightnow"
    time sudo dd if=${IMAGE_DIR}/${img} of=/dev/mmcblk0 bs=300M
    break
    ;;

    erase)
    echo "erasing rightnow"
    sudo umount /dev/mmcblk0p1
    sudo umount /dev/mmcblk0p2
    time sudo dd if=/dev/zero of=/dev/mmbclk0 bs=5024 count=1000
    break
    ;;
    *)
    echo "usage : 1 for flash or 2 for erase"
    ;;
    esac
done
-------------------------------------------------------------------
#!/bin/bash

BATTERY_S=`acpi-b`
read -a Battery_value <<< $BATTERY_S
echo ${Battery_value[@]}
val=${Battery_value[3]::-1}
temp=`echo $val | grep "%"`
if [ $? -eq 0 ]
then
    val=${val::-1}
fi
while [ true ]
do
    if [ ${val} -lt 25]
    then
        notify-send "please take care your battery is less than 25"
        notify-send "please put your charger"
        sleep 5
        acpi -a | grep "on"
        if [ $? -eq 0 ]
        then 
            notify-send "thanks for charging and please run the script again"
            break
        fi
    fi
done
------------------------------------------------------------------------------------------
#!/bin/bash
# script for monitoring power on and off
case $1 in
start)
        uptime >> /home/root/time.txt
;;
esac
# don't forget chmod 777
------------------------------------
>>>include file inside file<<<
#!/bin/bash
file=`cat text.txt`
echo ${file}
#if you have a text.txt, it will cat its content
------------------------------------------------------
NOTE: file=$() = file=``
------------------------
we can replace cat in the last ex with <
file=$(<text.txt) = file=`cat text.txt`
----------------------------------------------
>>include/read file line by line<<
while read line
do
    echo ${line}
    # you can put if then here also like if [ -z ${line} ] then echo "thanks" elif [ ${line} = salah ]  then  and echo "hello salah" fi
done <text.txt
-------------------------------------------------------------------------------------------------------------------------------------------
>>import script into script
# if the first file has export=blabla
source file.sh
echo $hi
------------------------------------------
# tell me if file exist and do something
if [ -f text.txt ]
then 
    echo "a wise man once said **** manga"
fi
----------------------------------------------------
----------------------------------------------------
>>>run shortcut for commands inside a bash script<<<
#!/bin/bash
# if we have a file called cmdlist
cmdlist=~/.cmdlist
exe=/tmp/tempcmd  #after restart.. all files under /tmp deleted automatically
if [ $# == 0 ]
then
    echo "Usage cmd <command>"
    echo -e "\n your commands"
    cat ${cmdlist}
fi

key=$1
cmd=""

while read line 
do 
    echo ${line} # or echo ${line} | grep ^${key}  any thing start with what inside key variable that was equal $1 
done < ${cmdlist}  #here we have a file with commands and we need to do these commands line by line
#note: when i run the script > ./cmd command  << command here is one of the commands inside the script

