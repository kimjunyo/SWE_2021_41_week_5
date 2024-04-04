#!/bin/bash

array=(a b c d e f g h i j k l m n o p q r s t u v w x y z)
bigarray=(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)

to_lower() {
	echo "$1" | tr '[:upper:]' '[:lower:]'
}

for alphabet in "${array[@]}"; do mv ./files/"$alphabet"* "$alphabet"; done

for alphabet in "${bigarray[@]}"; do mv ./files/"$alphabet"* $(to_lower "$alphabet"); done
