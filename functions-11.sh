
#USERID=$(id -u)

VALIDATE (){
 #  if [ $1  -ne 0 ]
 #  then
 #    echo "$2... FAILURE "
 #      exit 1
 #   else
 #        echo "$2.. SUCCESS"
 #   fi  
    echo " 1st argument : $1"
    echo " 2nd argument : $2"
    echo " 3rd argument : $3"

}


dnf install mysqll -y
VALIDATE $? "installing MySQL"


dnf install git -y
VALIDATE $? "installing Git"

dnf install nodejs -y
VALIDATE $? "installing nodejs"
