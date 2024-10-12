#!/bin/bash
temp=1

while [ $temp -lt 10 ];
do 
	curl -X POST YourIP:8080/shorten \
	-H "Content-Type: application/json" \
	-d '"https://elearn.just.edu.jo/current"'
	echo "newRequestSent-POST"
	sleep 0.5
	let temp=temp+1
done
temp=1
while [ $temp -lt 10 ];
do
	curl -X GET YourIP:8080/get-url-entity?surl=EoNRr0rM
	echo "newRequestSent-GET"
	sleep 0.5
	let temp=temp+1
done
