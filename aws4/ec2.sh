#!/bin/bash
echo enter the action
read action
if [ $action == "start" ]
then
	aws ec2 start-instances --instance-ids i-0e9cc68e64dffe9a3
	aws ec2 start-instances --instance-ids i-01d5b45f5b1020e05
	aws ec2 start-instances --instance-ids i-0afa781b1b9fd7575
elif [ $action == "stop" ]
then
	aws ec2 stop-instances --instance-ids i-0afa781b1b9fd7575
	aws ec2 stop-instances --instance-ids i-01d5b45f5b1020e05
	aws ec2 stop-instances --instance-ids i-0e9cc68e64dffe9a3
else
	echo incorrect command
fi


