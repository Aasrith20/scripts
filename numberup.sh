#! /bin/bash
if [ "$1" == "--help" ]
then 
    echo "   
          #################################################################################
             This command is very much useful when you want to quickly rename all the files 
             in a folder to your desired type in numerical sequence 1.jpg 2.jpg 3.jpg
          #################################################################################"
    echo "
          SYNTAX : numberup --help/type path -v 

          ~~ --help gives you this output 
          ~~ type specifies the type of file you want to change to 
          ~~ path is place where your files are present
          ~~ -v gives you a description about what is going on 
    "
else
cd $2
count=1
for i in *
do 
  if [ "$3" == "-v" ]
  then 
     echo "$i >> $count$1"
  fi
  mv "$i" "$count$1"
  count=`expr $count + 1`
done 
fi
