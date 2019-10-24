#!/bin/bash
echo "Enter the name of the user"
read -p ": " alpha

aws iam create-user --user-name $alpha &> /dev/null

echo "new user is created with name: $alpha"



read -p "would you like to see arn: enter 'yes' else 'no': " argument

if [ $argument -eq 'yes' ] ; then
	ARN=$(aws iam list-users | grep 'NR==2 {print $2}')
	print $ARN
else 
	echo "AS you wish"
	break
fi	

#aws iam list-users | grep -i mike
#aws iam list-users | grep -i mike| awk NR==2 '{print }'
